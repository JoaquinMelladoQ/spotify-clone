Rails.application.routes.draw do
  resources :playlists
  resources :songs

  resources :playlists, only: :show do
    resources :songs, only: [:new, :create, :show]
  end
  # get 'playlists/:playlist_id/songs/:id', to: 'songs#show', as: 'playlist_song'
  #same as showed at rails routes

  # above same as: /playlists/:playlist_id/songs/new(.:format)
  # creating a new song for this playlist

  root 'playlists#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
