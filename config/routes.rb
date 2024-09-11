Rails.application.routes.draw do
  root 'user_registers#new'
  # config/routes.rb
  resources :user_registers do
    member do
      get 'confirm_delete'
    end
  end

end
