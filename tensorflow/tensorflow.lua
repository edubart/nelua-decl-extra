local nldecl = require 'nldecl'

nldecl.include_names = {
  '^TF_',
  '^tf_',
}

nldecl.prepend_code = [=[
##[[
cflags '-I/usr/include/tensorflow'
linklib 'tensorflow'
cinclude '<tensorflow/c/c_api.h>'
]]
]=]
