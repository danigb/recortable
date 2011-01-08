module ApplicationHelper
  def title(text)
    content_for(:title) {text}
    content_tag(:h1, text)
  end

  def main_navigation(menu)
    menu.item "Projects", admin_projects_path
    menu.item "Users", admin_users_path
  end

end
