module ApplicationHelper
  def admin_dash? 
    controller_name == 'pages' && action_name == 'dashboard'
  end

  def glass_form?
    controller_name == 'glasses' && action_name == 'new' || action_name == 'edit'
  end

  def glass_show?
    controller_name == 'glasses' && action_name == 'show'
  end

  def glass_index?
    controller_name == 'glasses' && action_name == 'index'
  end

  def no_navbar?
    admin_dash? || glass_form? || glass_show?
  end

  def no_footer?
    admin_dash? || glass_form? || glass_show? 
  end

  # def no_background?
  #   glass_show?
  # end
end
