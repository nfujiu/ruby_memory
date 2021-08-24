require 'ffi'

module MyLib
  extend FFI::Library
  ffi_lib FFI::Library::LIBC
  attach_function("my_printf", "printf", [ :string, :string ], :int)
end

MyLib.my_printf("%s\n", "hello")
