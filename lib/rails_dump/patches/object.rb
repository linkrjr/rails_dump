class Object
  def to_dump(value = self.to_s);
    return "<span class='RdBug_#{self.class.name}'>#{value}</span>"
  end
end