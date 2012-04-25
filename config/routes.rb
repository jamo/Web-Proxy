Proxy::Application.routes.draw do

 controller :sessions do
    get  'login' => :new
    post 'login' => :create
    delete 'logout' => :destroy
  end

  get "admin/index"

  resources :users

  match 'proxy' => 'proxy#proxy'
  root :to => "proxy#index"
end
