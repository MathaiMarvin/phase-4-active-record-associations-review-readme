class Post < ApplicationRecord
    # Each post tends to belong to one Author
    belongs_to :Author
    # What the above does is it gives us access to an author method in our Post class. WE are now able to retrieve an actual Author object that is attached to a post

    has_many :post_tags
    has_many :tags, through: :post_tags
end
