module DeviseHelper
  def devise_error_messages!
    return "" if resource.errors.empty?

    messages = resource.errors.full_messages.map { |msg|
      content_tag(:li, content_tag(:p, msg), class: "collection-item")
    }.join
    sentence = I18n.t("errors.messages.not_saved",
                      :count => resource.errors.count,
                      :resource => resource.class.model_name.human.downcase)

    html = <<-HTML
    <div class="row">
      <div id="error_explanation">
        <ul class="collection with-header">
          <li class="collection-header">
            <h5>#{sentence}</h5>
          </li>
          #{messages}
        </ul>
      </div>
    </div>
    HTML

    html.html_safe
  end

  def devise_error_messages?
    resource.errors.empty? ? false : true
  end
end
