require 'rails_helper'

describe "Edit author page", type: :feature do
  it "should update the author when submitted with valid parameters" do
    @alan = FactoryBot.create :author
    visit edit_author_path(@alan)
    expect(page).to have_text("Edit")
    page.fill_in('author[first_name]', with: 'Alan2')
    page.fill_in('author[last_name]', with: 'Turing2')
    find('input[type="submit"]').click
    @alan.reload
    expect(@alan.name).to eq("Alan2 Turing2")
  end
end
