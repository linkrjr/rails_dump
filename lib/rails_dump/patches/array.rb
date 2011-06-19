class Array
  def to_dump
    html = "<table class='ruby_dump array-table'><thead><td colspan='2'>#{self.class}</td></thead><tbody>"
    self.each_with_index do |value, index|
      html += "<tr><td class='key'>#{index}</td><td>#{value}</td></tr>"
    end
    html += "</tbody></table>"
  end
end