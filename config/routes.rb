Rails.application.routes.draw do

  get 'hotels/index'
  get 'hotels/show'
  get 'records/index'
  get 'records/new'
  get 'records/show'
  get 'records/edit'
  get 'users/show'
  get 'users/edit'
  get 'users/confirm'
  devise_for :users
  root 'homes#top'
  get '/about', to: 'homes#about'


  # get 'homes/top'
  # get 'homes/about'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
