require 'spec_helper'

describe Post do
  context '.with_tag' do
    it 'gets a post by its tag' do
      Post.create tag: 'ruby'
      post = Post.create tag: 'rails'

      expect(Post.with_tag('rails')).to eq [post]
    end
  end
end
