class Author < ApplicationRecord
    # Each author might be associated with either zero, one or many Post objects
    has_many :posts
    # Active Record uses the posts.author_id to do all lookups


    had_one :profile
end
