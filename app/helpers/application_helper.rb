module ApplicationHelper
  def display_flash_messages(flash)
    content = ""
    flash.each do |message_type, message|
      content += tag.div(class: "alert alert-#{message_type}") do
        tag.p(message)
      end
    end
    content.html_safe
  end
end
