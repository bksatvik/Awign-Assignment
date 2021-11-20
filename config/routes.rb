Rails.application.routes.draw do
  resources :students, only: [:index, :show, :new, :create, :edit, :update, :destroy]
  resources :enrollments, only: [:index, :new, :create, :destroy]
  resources :courses, only: [:index, :show, :new, :create, :edit, :update, :destroy]
  # get 'enrollments/index'
  # get 'enrollments/new'
  # get 'enrollments/create'
  # get 'enrollments/destroy'
  # get 'courses/index'
  # get 'students/index'
  # get 'students/new'
  # get 'students/create'
  # get 'students/show'
  # get 'students/edit'
  # get 'students/update'
  # get 'students/destroy'
  root 'students#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
