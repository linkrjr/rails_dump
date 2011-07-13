class Array
  def write_dump(label="")
    html = "<table class='array-table'><thead><tr><th colspan='2' class='array-th'>#{label} :#{self.class}</th></tr></thead><tbody>"
    self.each_with_index do |value, index|
      html += "<tr><th class='array-key'>#{index}</th><td class='array-td'>#{value.to_dump}</td></tr>"
    end
    html += "</tbody></table>"
  end
end