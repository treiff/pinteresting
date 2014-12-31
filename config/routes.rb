Rails.application.routes.draw do
  resources :pins

  devise_for :users
  root 'pins#index' # root_path
  get 'about' => 'pages#about' # Creates about_path
  get 'team' => 'pages#team' #Creates team_path
end
