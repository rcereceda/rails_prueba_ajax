class DashboardsController < ApplicationController
  def index
  	@users = User.all.count
  	@companies = Company.all.count
  	@claims = Claim.all.count
  end
end
