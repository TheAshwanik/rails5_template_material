class HomeController < ApplicationController
  before_action :authenticate_user!
  def index
		#@services = Service.all
  end
end
