require "spec_helper"

describe "Updating an article" do
  let(:article) { FactoryGirl.create(:article) }
  let(:name) { article.name }
  let(:body) { article.body }

  before(:each) do
    visit edit_article_path(article)
  end

  context "using the form" do
    it "should succeed when form is complete" do
      fill_in "article_name", :with => name
      fill_in "article_body", :with => body
      click_button "Submit"
      expect(page).to have_content("Article updated successfully")
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
