Rails.application.routes.draw do
  get("/", {:controller => "application",  :action => "dashboard"})
  get("/forex", {:controller => "curriencies", :action => "forex"})
  get("/forex/:curr1", {:controller => "curriencies", :action => "forex_curr1"})
  get("/forex/:curr1/:curr2", {:controller => "curriencies", :action => "forex_curr1_curr2"})
  get("/covid", {:controller => "pandemic", :action => "covid"})


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
end



