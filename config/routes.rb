Decoshows::Application.routes.draw do
  devise_for :users, :path => "cms", :path_names => { :sign_in => 'login', :sign_out => 'logout', :password => 'secret', :confirmation => 'verification', :unlock => 'unblock', :registration => 'register', :sign_up => 'cmon_let_me_in' }

  resources :albumes do
    resources :fotos
  end

  resources :metas

  root :to => "albumes#index"
end
