author1 = Author.create(name: "Leeroy Jenkins")
author2 = Author.create(name: Faker::Name.unique.name)
author3 = Author.create(name: Faker::Name.unique.name)

Profile.create(author_id: author1.id, username: "ljenk", email: "ljenk@aol.com", bio: "a very dated reference")

post1 = Post.create(title: Faker::Lorem.sentence, content: Faker::Lorem.paragraph, author_id: author1.id)
post2 = Post.create(title: Faker::Lorem.sentence, content: Faker::Lorem.paragraph, author_id: author2.id)
post3 = Post.create(title: Faker::Lorem.sentence, content: Faker::Lorem.paragraph, author_id: author3.id)
post4 = Post.create(title: Faker::Lorem.sentence, content: Faker::Lorem.paragraph, author_id: author3.id)

tag1 = Tag.create(name: Faker::Lorem.word)
tag2 = Tag.create(name: Faker::Lorem.word)
tag3 = Tag.create(name: Faker::Lorem.word)

PostTag.create(post_id: post1.id, tag_id: tag1.id)
PostTag.create(post_id: post1.id, tag_id: tag2.id)

PostTag.create(post_id: post2.id, tag_id: tag1.id)
PostTag.create(post_id: post2.id, tag_id: tag3.id)

PostTag.create(post_id: post3.id, tag_id: tag2.id)

PostTag.create(post_id: post4.id, tag_id: tag2.id)
PostTag.create(post_id: post4.id, tag_id: tag3.id)

# Foreign keys are columns that tend to refer to the primary keys of other columns
# The convention is that we label the foreign key using the name of the model you are referencing, and id.
# Most common relationship is the one-to-many. 
# THrough activerecord we have access to the has_many and belongs_to macros which create instance methods that are able to access the data across the models ina one to many relationship

# A one to one relationship is the least relationship you'll find.
#An examples is creating a separate Profile model with data related to an Author.
# Every author would have one, and only profile and 
# Every profile would have one and only author
# Here we use the macros has_one and belongs_to


# NOT SURE WHERE TO PLACE THE belongs_to MACRO, ALWAYS PLACE IT TO THE MODEL WITH THE FOREIGN KEY COLUMN IN THE DB.

#many-to-many relationships and Join Tables
# Require a jointable containing a foreign key for both models. The models then need to use the has_many :through method to access data from the related table via the join table.
#has_many :through
