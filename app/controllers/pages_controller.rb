class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :contacts]
  def home; end

  def contacts; end
  
  def sink;
    @glasses = Glass.all
  end
  
  # permit only if admin
  def dashboard
    @glasses = Glass.all
  end
end