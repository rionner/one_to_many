require 'bundler'
Bundler.require()




# Connection
ActiveRecord::Base.establish_connection(
  :adapter => 'postgresql',
  :database => 'cats'
)




# Models
require './models/kitten'
require './models/mama_cat'




# Routes
get '/' do
  'this is fur da cats'
end




# Mama Cats
# Create
post '/api/mama_cats' do
  content_type :json
  mama = Mama_cat.create(params[:cat])
  mama.to_json
end

# Read
  # Get all
get '/api/mama_cats' do
  content_type :json
  Mama_cat.all.to_json
end
  # Get specific
get '/api/mama_cats/:id' do
  content_type :json
  mama = Mama_cat.find(params[:id])
end

# Update
  # Put
put '/api/mama_cats/:id' do
  content_type :json
  mama = Mama_cat.find(params[:id]).update(params[:cat])
  mama.to_json
end

  # Patch
patch '/api/mama_cats/:id' do
  content_type :json
  mama = Mama_cat.find(params[:id]).update(params[:cat])
  mama.to_json
end

# Delete
delete '/api/mama_cats/:id' do
  content_type :json
  Mama_cat.destroy(params[:id])
end




# Kittens
# Create
post '/api/kittens' do
  content_type :json
  kitten = Kitten.create(params[:cat])
  kitten.to_json
end

# Read
  # Get all
get '/api/kittens' do
  content_type :json
  Kitten.all.to_json
end
  # Get specific
get '/api/kittens/:id' do
  content_type :json
  kitten = Kitten.find(params[:id])
end

# Update
  # Put
put '/api/kittens/:id' do
  content_type :json
  kitten = Kitten.find(params[:id]).update(params[:cat])
  kitten.to_json
end

  # Patch
patch '/api/kittens/:id' do
  content_type :json
  kitten = Kitten.find(params[:id]).update(params[:cat])
  kitten.to_json
end

# Delete
delete '/api/kittens/:id' do
  content_type :json
  Kitten.destroy(params[:id])
end
