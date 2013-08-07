require "spec_helper"

describe "Creating an article" do
  before { visit new_article_path }

  context "using the form" do
    let(:name) { name = "BEST ARTICLE EVER!!!  LOL :)" }
    let(:body) { body = "I am the body.\n\n.  You cannot defeate me." }

    it "should succeed when form is complete" do
      fill_in "article_name", :with => name
      fill_in "article_body", :with => body
      click_button "Submit"
      expect(page).to have_content("Article created successfully")
    end

    it "should fail when missing name" do
      fill_in "article_name", :with => ""
      fill_in "article_body", :with => body
      click_button "Submit"
      expect(page).to have_content("Name can't be blank")
    end

    it "should fail when missing body" do
      fill_in "article_name", :with => name
      fill_in "article_body", :with => ""
      click_button "Submit"
      expect(page).to have_content("Body can't be blank")
    end

    it "should fail when completely blank" do
      fill_in "article_name", :with => ""
      fill_in "article_body", :with => ""
      click_button "Submit"
      expect(page).to have_content("Name can't be blank")
      expect(page).to have_content("Body can't be blank")
    end
  end
end
