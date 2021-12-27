module ApplicationHelper
  def admin_dash? 
    controller_name == 'pages' && action_name == 'dashboard'
  end

  def glass_form?
    controller_name == 'glasses' && action_name == 'new' || action_name == 'edit'
  end
end
