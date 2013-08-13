require "spec_helper"

describe "Creating an article" do
  before(:each) do
    login
    visit articles_path
    click_link("New")
  end

  context "using the form" do
    let(:title) { title = "BEST ARTICLE EVER!!!  LOL :)" }
    let(:body) { body = "I am the body.\n\n.  You cannot defeate me." }

    it "should succeed when form is complete" do
      fill_in "article_title", :with => title
      fill_in "article_body", :with => body
      click_button "Submit"
      expect(page).to have_content("Article created successfully")
    end

    it "should fail when missing name" do
      fill_in "article_title", :with => ""
      fill_in "article_body", :with => body
      click_button "Submit"
      expect(page).to have_content("Title can't be blank")
    end

    it "should fail when missing body" do
      fill_in "article_title", :with => title
      fill_in "article_body", :with => ""
      click_button "Submit"
      expect(page).to have_content("Body can't be blank")
    end

    it "should fail when completely blank" do
      fill_in "article_title", :with => ""
      fill_in "article_body", :with => ""
      click_button "Submit"
      expect(page).to have_content("Title can't be blank")
      expect(page).to have_content("Body can't be blank")
    end
  end
end
