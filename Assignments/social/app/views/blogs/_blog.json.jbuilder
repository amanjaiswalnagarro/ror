json.extract! blog, :id, :title, :description, :visibility, :rating, :created_at, :updated_at
json.url blog_url(blog, format: :json)
