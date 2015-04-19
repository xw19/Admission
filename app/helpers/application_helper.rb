module ApplicationHelper


  def main_title(title)
    base_title = "Admission"
    if title.empty?
      base_title
    else
      "#{title} | #{base_title}"
    end
  end
end
