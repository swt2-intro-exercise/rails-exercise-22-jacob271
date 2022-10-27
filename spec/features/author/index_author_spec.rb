require 'rails_helper'

describe "Index author page", type: :feature do
  it "should exist at 'author_path' and render without error" do
    # https://guides.rubyonrails.org/routing.html#path-and-url-helpers
    visit authors_url
  end
  it "should link to 'new_author_path'" do
    visit authors_url
    expect(page).to have_link 'New', href: new_author_path
  end
  it "should link to 'edit_author_path'" do
    visit authors_url
    @alan = FactoryBot.create :author
    expect(page).to have_link 'edit', href: edit_author_path(@alan)
  end
end
