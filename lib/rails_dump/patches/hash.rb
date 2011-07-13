class Hash
  def write_dump(label="")
    html = "<table class='hash-table'><thead><tr><th colspan='2' class='hash-th'>#{label} :#{self.class}</th></tr></thead>"
    self.each_pair do |k, v|
      html += "<tr><th class='hash-key'>#{k.to_dump}</th><td class='hash-td'>#{v.to_dump}</td></tr>"
    end
    html += "</table>"
  end
end
