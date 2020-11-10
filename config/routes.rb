Rails.application.routes.draw do
  resources :playlists
  resources :songs

  resources :playlists, only: :show do
    resources :songs, only: [:new, :create]
  end

  # above same as: /playlists/:playlist_id/songs/new(.:format)
  # creating a new song for this playlist

  root 'playlists#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
