Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :students
  resources :tasks
  resources :sections
  get'addTask',to: 'students#addTask'
  get'add',to: 'tasks#add'
  get'conTask',to: 'students#conTask'
  # Defines the root path route ("/")
  # root "articles#index"
end
