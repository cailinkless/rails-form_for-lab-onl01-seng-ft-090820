Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :students, only: [:index, :show, :new, :create, :edit, :update]
  resources :school_classes, only: [:index, :show, :new, :create, :edit, :update]
  get 'students/:id/edit', to: 'students#edit'
  patch 'students/:id', to: 'students#update'
  get 'school_classes/:id/edit', to: 'school_classes#edit'
  patch 'school_classes/:id', to: 'school_classes#update'
end
