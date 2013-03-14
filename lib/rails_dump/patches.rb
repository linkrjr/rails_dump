Dir[File.expand_path(File.join(File.dirname(__FILE__),'patches','*.rb'))].each do |file|
  require file
end  
# require 'rails_dump/patches/object'
# require 'rails_dump/patches/method'
# require 'rails_dump/patches/string'
# require 'rails_dump/patches/fixnum'
# require 'rails_dump/patches/symbol'
# require 'rails_dump/patches/nil_class'
# require 'rails_dump/patches/hash'
# require 'rails_dump/patches/array'
