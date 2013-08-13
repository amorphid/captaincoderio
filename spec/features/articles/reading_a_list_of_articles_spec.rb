require "spec_helper"

describe "The articles index" do
  let(:article_1) { Article.first }
  let(:article_2) { Article.last }

  before(:each) do
    2.times { FactoryGirl.create(:article) }
    visit articles_path
  end

  it "should contain article_1" do
    within("#article_" + article_1.id.to_s) do
      click_link(article_1.title)
    end
  end

  it "should contain article_2" do
    within("#article_" + article_2.id.to_s) do
      click_link(article_2.title)
    end
  end
end
