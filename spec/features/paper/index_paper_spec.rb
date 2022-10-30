require 'rails_helper'

describe "Index paper page", type: :feature do
  it "should exist at 'paper_url' and render without error" do
    # https://guides.rubyonrails.org/routing.html#path-and-url-helpers
    visit papers_url
  end
  it "should link to 'edit_paper_path'" do
    @paper = FactoryBot.create :paper
    visit papers_url
    expect(page).to have_link 'Edit this paper', href: edit_paper_path(@paper)
  end
  it "should have link to delete paper" do
    @paper = FactoryBot.create :paper
    visit papers_url
    expect(page).to have_link 'Delete this paper', href: paper_path(@paper)
  end
  it "should show author name" do
    @paper = FactoryBot.create :paper
    visit papers_url
    expect(page).to have_text(@paper.authors[0].name)
  end
end
