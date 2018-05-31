Rails.application.routes.draw do


  



  resources :users
  devise_for :logins
  
  resources :tipo_notificaciones
  resources :notificaciones
  resources :estados
  resources :adjuntos
  resources :parametros
  resources :tipo_solicitudes
  resources :tipo_seguimientos
  resources :seguimientos
  resources :permisos
  resources :solicituds
  resources :areas
  resources :roles

  get 'welcome/index'
  post 'users/index'
  post 'solicituds/index'
  post 'roles/index'
  post 'adjuntos/index'
  post 'areas/index'
  root 'welcome#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
