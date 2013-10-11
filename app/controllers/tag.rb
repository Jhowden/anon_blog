get '/show tags' do
	@tags = Tag.all
	erb :show_tags
end

get '/tag/:tag_id' do
	@tag_name = Tag.find(params[:tag_id])
	erb :tag_display
end