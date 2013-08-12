require "spec_helper"

describe "When reading an article" do
  context "the page title" do

    let(:article) { Article.first }
    let(:name) { article.name }

    before(:each) do
      FactoryGirl.create(:article)
      visit article_path(article)
    end

    it "should include the blog name" do
      expect(page).to have_title("Captain Coder | #{name}")
    end
  end
end
