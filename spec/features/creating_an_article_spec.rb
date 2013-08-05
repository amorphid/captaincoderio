require "spec_helper"

describe "Creating an article" do
  before { visit "/articles/new" }

  context "using the new form" do
    let(:name) { name = "BEST ARTICLE EVER!!!  LOL :)" }
    let(:body) { body = "I am the body.\n\n.  You cannot defeate me." }

    it "should succeed when form is complete" do
      fill_in "article_name", :with => name
      fill_in "article_body", :with => body
      click_button "Submit"
      expect(page).to have_content("Article created successfully")
    end

    it "should fail when missing name" do
      pending
    end

    it "should fail when missing body" do
      pending
    end
  end
end
