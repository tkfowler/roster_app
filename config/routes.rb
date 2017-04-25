Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'rosters#index'

  get 'roster' => 'rosters#show'

  post 'roster' => 'rosters#create'

  post 'increment' => 'rosters#increment_session'

  delete 'roster/:id' => 'rosters#delete'
end
