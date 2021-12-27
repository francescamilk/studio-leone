module ApplicationHelper
  def admin_form?
    controller_name == 'glasses' && action_name == 'new' || action_name == 'edit'
  end
end
