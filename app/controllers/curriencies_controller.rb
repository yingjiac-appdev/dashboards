class CurrienciesController < ActionController::Base

  def forex
    url = "https://api.exchangerate.host/symbols"
    raw_data = open(url).read 
    parsed_data = JSON.parse(raw_data).fetch("symbols")
    @array_of_symbols = parsed_data.keys
    render("currency_templates/forex.html.erb")
  end

  def forex_curr1
    @curr1 = params.fetch("curr1")
    url = "https://api.exchangerate.host/symbols"
    raw_data = open(url).read 
    parsed_data = JSON.parse(raw_data).fetch("symbols")
    @array_of_symbols = parsed_data.keys
    render("currency_templates/forex_curr1.html.erb")
  end 

  def forex_curr1_curr2
    @curr1 = params.fetch("curr1")
    @curr2 = params.fetch("curr2")
    url = "https://api.exchangerate.host/convert?from=#{@curr1}&to=#{@curr2}"
    raw_data = open(url).read 
    parsed_data = JSON.parse(raw_data)
    @rate = parsed_data.fetch("info").fetch("rate")
    render("currency_templates/forex_curr1_curr2.html.erb")
  end   
end