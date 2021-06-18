local nldecl = require 'nldecl'

nldecl.include_names = {
  '^fann',
  '^FANN',
  FILE = true,
  fann_type = true,
}

nldecl.include_macros = {
  cint = {
    '^FANN_',
  },
  cstring = {
    FANN_FIX_VERSION = true,
    FANN_FLO_VERSION = true,
    FANN_CONF_VERSION = true,
  },
}

nldecl.prepend_code = [=[
##[[
cflags '-I./fann/src -I./fann/src/include'
cflags '-fopenmp'
cinclude 'floatfann.h'
cinclude 'floatfann.c'
]]
]=]
