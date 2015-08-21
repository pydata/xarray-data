'''
This file is used for testing purposes
'''

import xray

tiny = xray.DataArray(range(5), name='tiny').to_dataset()

tiny.to_netcdf('tiny.nc', format='NETCDF3_CLASSIC')
