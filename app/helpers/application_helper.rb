module ApplicationHelper
  # This helper makes hightlighting current page menu's button
  def current_class?(test_path)
    return 'active' if request.path == test_path
    ''
  end
end
