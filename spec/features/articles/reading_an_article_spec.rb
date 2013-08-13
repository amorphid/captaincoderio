require "spec_helper"

describe "When reading an article" do
  context "the page title" do

    let(:article) { Article.first }
    let(:title) { article.title }

    before(:each) do
      FactoryGirl.create(:article)
      visit article_path(article)
    end

    it "should include the blog title" do
      expect(page).to have_title("Captain Coder | #{title}")
    end
  end
end
