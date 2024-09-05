Rails.application.routes.draw do
  root 'user_registers#new'
  resources :user_registers
end
