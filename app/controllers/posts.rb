get '/show posts' do
	@posts = Post.all
	erb :post
end