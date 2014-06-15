class PostSerializer < ApplicationSerializer
  attributes :id, :title, :body, :times_viewed, :created_at
end
