get '/' do
  # Look in app/views/index.erb
  @categories = Category.all
  erb :index
end

get '/categories/:id' do

  @category = Category.find(params[:id])
  @posts = @category.posts

  erb :posts
end

# post '/categories/:id' do

#   @category = Category.find(params[:id])
#   # @posts = @category.posts.all

#   redirect
# end

post '/categories/:id/posts/new' do
  category = Category.find params[:id]
  post = category.posts.create(params["post"])
  redirect to "/categories/#{category.id}/posts/#{post.id}"
end


get '/categories/:id/posts/:p_id' do

  @category = Category.find(params[:id])
  @post = @category.posts.find(params[:p_id])

  erb :article
end


get '/posts/:p_id/articles/:a_id' do
  @post = Post.find(params[:p_id])
  @article = Article.find(params[:p_id])
  erb :article
end

# get '/event' do
#   puts "[LOG] Posting to /new_posts"
#   puts "[LOG] Params: #{params.inspect}"
#   event = Category.where(category: "event")[0]
#   @event_post = event.posts
# erb :event_post
# end

# get '/community' do
#   puts "[LOG] Posting to /new_posts"
#   puts "[LOG] Params: #{params.inspect}"
#   community = Category.where(category: "community")[0]
#   @community_post = community.posts
# erb :community_post
# end

# get '/housing' do
#   puts "[LOG] Posting to /new_posts"
#   puts "[LOG] Params: #{params.inspect}"
#   housing = Category.where(category: "housing")[0]
#   @housing_post = housing.posts
# erb :housing
# end

# get '/discussion_forms' do
#   puts "[LOG] Posting to /new_posts"
#   puts "[LOG] Params: #{params.inspect}"
#   discussion_forms = Category.where(category: "discussion_forms")[0]
#   @discussion_forms_post = discussion_forms.posts
# erb :discussion_forms
# end

# get '/jobs' do
#   puts "[LOG] Posting to /new_posts"
#   puts "[LOG] Params: #{params.inspect}"
#   jobs = Category.where(category: "jobs")[0]
#   @jobs_post = jobs.posts
# erb :jobs
# end
