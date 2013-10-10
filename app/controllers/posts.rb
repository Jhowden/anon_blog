get '/show posts' do
	@posts = Post.all
	erb :post
end

get '/find post' do
  erb :find_post
end

get '/edit post/:post_id' do
	@edit_post = Post.find(params[:post_id])
  erb :edit_post
end

get '/post found/:id'do
	@found_post = Post.find(params[:id])
  erb :post_found
end

post '/search posts' do
	post_id = params[:id]
	redirect to "/post found/#{post_id}"
end

post '/edited post/:post_id' do
	updated_post = Post.find(params[:post_id])
	updated_post.update_attributes(params[:listing])
  redirect to '/show posts'
end

post '/delete post/:post_id' do
	delete_post = Post.find(params[:post_id])
	delete_post.destroy
end