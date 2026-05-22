# /// script
# requires-python = ">=3.13"
# dependencies = [
#     "cfgrib>=0.9.15.1",
#     "netcdf4>=1.7.4",
#     "pooch>=1.9.0",
#     "xarray>=2026.4.0",
# ]
# ///
from pathlib import Path

import xarray as xr

NON_DATA_FILES = [
    ".DS_Store",
    "README.md",
    "LICENSE",
    "CODE_OF_CONDUCT.md",
    "CONTRIBUTING.md",
    ".git",
    "references",
    ".github",
    ".gitignore",
    "pages",
]
NON_DATA_SUFFIXES = [".md5", ".py", ".idx"]

BASE_DIR = Path(__file__).parent.parent.parent
PAGES_DIR = BASE_DIR / "pages"


def main():
    files = sorted(
        [
            f
            for f in BASE_DIR.glob("*")
            if f.suffix not in NON_DATA_SUFFIXES and f.name not in NON_DATA_FILES
        ]
    )

    index_links = []

    for f in files:
        print(f"Processing {f}...")

        try:
            ds = xr.open_datatree(f)
        except ValueError:
            print(f"Could not open {f} as a datatree, trying as a dataset...")
            ds = xr.open_dataset(f)

        github_download_link = f'<a href="https://github.com/pydata/xarray-data/raw/refs/heads/master/{f.name}">{f.name}</a>'

        pages_path = PAGES_DIR / f"{f.stem}.html"
        pages_path.parent.mkdir(exist_ok=True)
        with pages_path.open("w") as ds_page:
            ds_page.write(
                f"<!DOCTYPE html><html><head><meta charset='utf-8'>"
                f"<title>{f.stem}</title></head><body>"
                f"<h1>{f.stem}</h1><p>Download: {github_download_link}</p>"
            )
            ds_page.write(ds._repr_html_())
            ds_page.write("</body></html>")

        index_links.append(
            f'<li><a href="./{f.stem}.html">{f.stem}</a>({github_download_link})</li>'
        )

    with (PAGES_DIR / "index.html").open("w") as index_page:
        index_page.write(
            "<!DOCTYPE html><html><head><meta charset='utf-8'>"
            "<title>Xarray Tutorial Datasets</title></head><body>"
            "<h1>Xarray Tutorial Datasets</h1><ul>"
        )
        index_page.write("\n".join(index_links))
        index_page.write("</ul></body></html>")


if __name__ == "__main__":
    main()
