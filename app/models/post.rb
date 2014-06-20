class Post < ActiveRecord::Base
  def self.with_tag(tag)
    Post.where(tag: tag)
  end
end
