require 'rails_helper'

RSpec.describe Paper, type: :model do
  it "is valid with valid attributes" do
    paper = Paper.new(title: "PaperTitle", venue: "Test", year: 2023)
    expect(paper.title).to eq("PaperTitle")
    expect(paper.venue).to eq("Test")
    expect(paper.year).to eq(2023)
    expect(paper).to be_valid
  end
  it "is not valid without title" do
    paper = Paper.new(venue: "Test", year: 2023)
    expect(paper).to_not be_valid
  end
  it "is not valid with non numerical year" do
    paper = Paper.new(title: "Test", venue: "Test", year: "twenty23")
    expect(paper).to_not be_valid
  end
end
