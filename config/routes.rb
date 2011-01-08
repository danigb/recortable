Recortable::Application.routes.draw do
  root :to => 'sessions#new'

  # ADMIN
  scope(:path_names => { :new => "crear", :edit => "editar" }) do
    namespace :admin do
      resources :projects, :path => 'sitios' do
        resources :assets, :path => 'ficheros'
      end
      resources :users, :path => 'participantes'
    end
  end

  # PUBLIC
  scope(:path_names => { :new => "nuevo", :edit => "editar" }) do
  end


  match "/auth/:provider/callback" => "sessions#create"
  match "/cerrar" => "sessions#destroy", :as => :signout
  match "/identificarse" => "sessions#new", :as => :login
  match "/admin" => "admin/projects#index"
end
