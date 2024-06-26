module ApplicationHelper
  def markdown(text)
    @renderer ||= Redcarpet::Render::HTML.new(escape_html: true, hard_wrap: true)
    @markdown ||= Redcarpet::Markdown.new(@renderer)
    @markdown.render(text).html_safe
  end
end
