class PandemicController < ActionController::Base

  def covid
    render("covid_templates/covid.html.erb")
  end   

end