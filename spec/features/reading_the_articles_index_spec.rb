require "spec_helper"

describe "The articles index" do
  before(:each) do
    @article_1 = Article.create(name: "Article 1", body: "Foo")
    @article_2 = Article.create(name: "Article 2", body: "Foo")
    visit articles_path
  end

  it "should contain article_1" do
    within("#article_" + @article_1.id.to_s) do
      expect(page.body).to have_content(@article_1.name)
    end
  end

  it "should contain article_2" do
    within("#article_" + @article_2.id.to_s) do
      expect(page).to have_content(@article_2.name)
    end
  end
end
