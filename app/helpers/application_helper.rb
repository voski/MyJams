module ApplicationHelper
  def auth_input
    html = <<-HTML
      <input name ="authenticity_token"
        type="hidden"
        value="<%=  form_authenticity_token %>">
      HTML

    html.html_safe
end
end
