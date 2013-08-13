require "spec_helper"

describe "When reading an entry" do
  context "the page title" do

    let(:entry) { FactoryGirl.create(:entry) }
    let(:title) { entry.title }

    before(:each) do
      visit entry_path(entry)
    end

    it "should include the blog title" do
      expect(page).to have_title("Captain Coder | #{title}")
    end
  end
end
