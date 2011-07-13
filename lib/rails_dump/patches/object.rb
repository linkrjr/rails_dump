class Object
  include RailsDump::Dumpable
  
  def write_dump(label="")
    html = "<table class='object-table'><thead><tr><th colspan='2' class='object-th'>#{label} :#{self.class}</th></tr></thead><tbody>"
    html += instance_methods_table
    html += class_methods_table
    html += "</tbody></table>"    
  end
  
  def instance_methods_table
    html = "<tr><th class='object-key'>Instance Methods</th><td class='object-td'><table class='object-table'>"
    dump_instance_methods do |m|
      html += "<tr><td class='object-td'>#{method(m).to_dump}</td></tr>"
    end
    html += "</table></td></tr>"    
  end

  def class_methods_table
    html = "<tr><th class='object-key'>Class Methods</th><td class='object-td'><table class='object-table'>"
    dump_class_methods do |m|
      html += "<tr><td class='object-td'>#{self.class.method(m).to_dump}</td></tr>"
    end
    html += "</table></td></tr>"    
  end
  
end