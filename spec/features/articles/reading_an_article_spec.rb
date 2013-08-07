require "spec_helper"

describe "When reading an article" do
  context "the page title" do
    let(:article) { FactoryGirl.create(:article) }
    let(:name) { article.name }

    before { visit article_path(article) }

    it "should include the blog name" do
      expect(page).to have_title("Captain Coder | #{name}")
    end
  end
end
