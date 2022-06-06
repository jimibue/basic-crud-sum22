# README

items api

http://localhost:3001/api/items
get '/api/items'  => items controller#index => list of items

http://localhost:3001/api/items/1
get '/api/items/:id'  => items controller#show => one item

http://localhost:3001/api/items
post '/api/items' *need to send item data  => items controller#create => create an item

http://localhost:3001/api/items/1
put '/api/items/:id' ' *need to send item data  => items controller#update => updates an  item

http://localhost:3001/api/items/1
delete '/api/items/:id' '   => items controller#destroy => deletes an  item