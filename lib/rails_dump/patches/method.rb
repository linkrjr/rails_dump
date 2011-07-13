class Method
  def write_dump(label="")
    html = "<table class='method-table'><thead><tr><th class='method-th'>#{label} :#{self.name}</th></tr></thead><tbody>"
    html += "<tr><td class='method-td'>#{arguments_table}</td></tr>"   
    html += "</tbody></table>"    
  end
  
  def arguments_table
    html = "<table class='arguments-table'><tbody><tr><td>Arguments</td></tr>"
    self.parameters.each do |arg|
      html += "<tr><td class='arguments'>#{arg.last}</td><td class='arguments'>[#{arg.first}]</td></tr>"
    end
    html += "</tbody></table>"
  end
  
end