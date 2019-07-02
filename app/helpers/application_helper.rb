module ApplicationHelper

  def app_title
    "Star Wars"
  end

  def app_logo
    image_tag "logo.png", title: app_title, class: 'logo-img'
  end

  def format_date(date)
    return date.blank? ? "" : Date.parse(date).strftime("%b %d %Y")
  end

end
