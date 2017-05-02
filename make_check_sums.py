#!/usr/bin/env python

import glob

from xarray.tutorial import _md5


def main():
    files = glob.glob('*.nc')
    for ncf in files:
        prefix = ncf.split('.')[0]
        outf = '{}.md5'.format(prefix)
        with open(outf, 'w') as f:
            f.write(_md5(ncf))

if __name__ == '__main__':
    main()
