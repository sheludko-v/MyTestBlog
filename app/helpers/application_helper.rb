module ApplicationHelper
  def page_title(separator = " | ")
    [content_for(:title), 'Мой блог'].compact.join(separator)
  end

  def page_heading(title)
    content_for(:title){ title }
    content_tag(:h2, title)
  end

end
