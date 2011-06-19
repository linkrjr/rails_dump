class Hash
  def to_dump
    html = "<table class='ruby_dump'><thead><td colspan=2 class='RdBug_HashHeader'>#{self.class}</td></thead>"
    self.each_pair do |k, v|
      html += "<tr><td class='RdBug_HashKey'>#{k.to_dump}</td><td>#{v.to_dump}</td></tr>"
    end
    html += "</table>"
    super(html)
  end
end
