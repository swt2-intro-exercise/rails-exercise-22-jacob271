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
    @alan = FactoryBot.create :author
    visit authors_url
    expect(page).to have_link 'Edit', href: edit_author_path(@alan)
  end
  it "should link have a link to delete an author" do
    @alan = FactoryBot.create :author
    visit authors_url
    expect(page).to have_link 'Delete', href: author_path(@alan)
  end
end
