class ApplicationController < ActionController::Base
  def dashboard
    render("templates/dashboard.html.erb")
  end
end

