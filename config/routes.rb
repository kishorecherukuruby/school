Rails.application.routes.draw do
  
  resources :teachers, only: [:new,:index,:create]
  resources :students do
  	collection do
  		get 'student_list', as: "kishore"
  	end
  	member do 
  		get 'record'
  	end
  end
  resources :employees
  root 'employees#new'
end
