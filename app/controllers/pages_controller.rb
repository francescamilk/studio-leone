class PagesController < ApplicationController
  def home; end

  def contacts; end
  
  def sink; end
  
  # permit only if admin
  def dashboard
    @glasses = Glass.all
  end
end