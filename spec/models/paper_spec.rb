require 'rails_helper'

RSpec.describe Paper, type: :model do
  it "is valid with valid attributes" do
    paper = Paper.new(title: "PaperTitle", venue: "Test", year: 2023)
    expect(paper.title).to eq("PaperTitle")
    expect(paper.venue).to eq("Test")
    expect(paper.year).to eq(2023)
    expect(paper).to be_valid
  end
end
