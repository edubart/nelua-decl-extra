local nldecl = require 'nldecl'

nldecl.include_names = {
  '^kann_',
  '^KANN_',
  '^kad_',
  '^KAD_',
  FILE = true,
}

nldecl.include_macros = {
  cint = {
    '^KANN_',
  },
  cstring = {
    KANN_VERSION = true,
  },
}

nldecl.prepend_code = [=[
##[[
-- cdefine 'HAVE_CBLAS'
-- cflags '-fopenmp'
-- linklib 'cblas'

cdefine 'HAVE_ZLIB'
linklib 'z'

cdefine 'HAVE_PTHREAD'
linklib 'pthread'

cinclude 'kann/kann.h'
cinclude 'kann/kautodiff.h'
cinclude 'kann/kann_extra/kann_data.h'
cinclude 'kann/kann.c'
cinclude 'kann/kautodiff.c'
cinclude 'kann/kann_extra/kann_data.c'
]]
]=]
