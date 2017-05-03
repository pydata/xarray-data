#!/usr/bin/env python

import glob

from xarray.tutorial import file_md5_checksum


def main():
    files = glob.glob('*.nc')
    for ncf in files:
        prefix = ncf.split('.')[0]
        outf = '{}.md5'.format(prefix)
        with open(outf, 'w') as f:
            f.write(file_md5_checksum(ncf))

if __name__ == '__main__':
    main()
