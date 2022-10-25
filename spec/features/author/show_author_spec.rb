require 'rails_helper'

describe "Show author page", type: :feature do
  it "should have text" do
    @alan = FactoryBot.create :author
    visit author_path(@alan)
    expect(page).to have_text("Alan Turing")

  end

end