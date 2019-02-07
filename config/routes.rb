Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
# resources :students

root to: "students#index"
  get '/students' => 'students#index', as: 'students'
  get '/students/new' => 'students#new', as: 'new_student'
  get '/students/:id' => 'students#show', as: 'student'
  post '/students' => 'students#create'
  delete '/students/:id' => 'students#destroy', as: 'delete_student'
  get '/students/:id/edit' =>'students#edit', as: 'edit_student'
  patch '/students/:id' => 'students#update'


  get '/instructors' => 'instructors#index', as: 'instructors'
  get '/instructors/new' => 'instructors#new', as: 'new_instructor'
  get '/instructors/:id' => 'instructors#show', as: 'instructor'
  post '/instructors' => 'instructors#create'
  get '/instructors/:id/edit' => 'instructors#edit', as: 'edit_instructor'
  patch '/instructors/:id' => 'instructors#update'
  delete '/instructors/:id' => 'instructors#destroy', as: 'delete_instructor'
end
