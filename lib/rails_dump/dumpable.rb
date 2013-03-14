module RailsDump
  module Dumpable
    
    def to_dump(label="")
      write_dump(label)
    end

    def dump_instance_methods
      (self.class.instance_methods - self.class.superclass.instance_methods).sort.each do |m|
        yield m
      end
    end
    
    def dump_class_methods
      (self.class.methods - self.class.superclass.methods).sort.each do |m|
        yield m
      end
    end
    
  end
end