get '/show posts' do
	@posts = Post.all
	erb :post
end

get '/find post' do
  erb :find_post
end

get '/create post' do
	erb :create_post
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
	if Post.exists?(params[:id])
		post = Post.find(params[:id])
		post_id = post.id
	  redirect to "/post found/#{post_id}"
	else
  	redirect to '/'
	end
end

post '/edited post/:post_id' do
	updated_post = Post.find(params[:post_id])
	updated_post.update_attributes(params[:listing])
  redirect to '/show posts'
end

post '/delete post/:post_id' do
	delete_post = Post.find(params[:post_id])
	delete_post.destroy
	redirect to '/show posts'
end

post '/created post' do
	created_post = Post.create(params[:listing])
	@tags = params[:tags].split(', ')
	@tags.each do |tag|
    tag = Tag.find_or_create_by_name(tag)
    created_post.tags << tag
  end
  redirect to '/show posts'
end