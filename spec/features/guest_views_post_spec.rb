require 'spec_helper'

feature 'Guest views blog posts'  do
  scenario 'from the homepage' do
    Post.create title: 'Hello World', body: 'stuff'
    visit root_path

    expect(page.body).to have_text 'Hello World'
  end

  scenario 'filtered by tag' do
    Post.create title: 'Hello World', body: 'stuff', tag: 'ruby'
    Post.create title: 'Latest', body: 'stuff', tag: 'rails'

    visit root_path(tag: 'rails')

    expect(page.body).to have_text 'Latest'
    expect(page.body).not_to have_text 'Hello World'
  end
end
