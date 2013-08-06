require "spec_helper"

describe "The articles index" do
  let(:article_one) { Article.create(name: "A Tale Of Two Cities", body: "Foo") }
  let(:article_two) { Article.create(name: "Oliver Twist", body: "Foo") }

  before { visit articles_path }

  it "should contain 'A Tale Of Two Cities'" do
    within("#article_#{article_one.id}") do
      expect(page).to have_content("A Tale Of Two Cities")
    end
  end

  it "should contain 'Oliver Twist'" do
    within("#article_#{article_two.id}") do
      expect(page).to have_content("Oliver Twist")
    end
  end
end
