Fstvl::Application.routes.draw do
  
  resources :acts
  resources :prices
  resources :festivals

  root :to => 'festivals#index'

  match '/import' => "festivals#import"  

end
