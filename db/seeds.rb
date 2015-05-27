require 'faker'

categories = ["event", "community", "housing", "discussion forms", "jobs"]
categories.each do |x|
  Category.create(category: x)
end

Category.all.each do |c|
  20.times do
    sentence = Faker::Lorem.sentence
    post = Post.create(post: sentence, category_id: c.id)
    Article.create(text: Faker::Lorem.sentence, post_id: post.id)
  end
end




# post.each do |y|
#   Post.create()



