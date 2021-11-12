Rails.application.routes.draw do
  get 'lists', to: 'lists#index'
  get 'lists/new', to: 'lists#new'
  get 'lists/:id', to: 'lists#show', as: 'list'
  post 'lists', to: 'lists#create'
  delete 'lists/:id', to: 'lists#destroy', as: 'list_delete'

  get 'lists/:id/bookmarks/new', to: 'bookmarks#new', as: 'bookmarks_new'
  post 'lists/:id/bookmarks', to: 'bookmarks#create', as: 'list_bookmarks'
  delete 'bookmarks/:id', to: 'bookmarks#destroy', as: 'bookmark_delete'

# GET "lists/42/bookmarks/new"
# POST "lists/42/bookmarks"
# A user can delete a bookmark from a list. How can we make a delete link again?
# DELETE "bookmarks/25"
end
