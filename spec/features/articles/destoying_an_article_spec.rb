require "spec_helper"

describe "Deleting an article" do
  let(:article) { FactoryGirl.create(:article) }
  before(:each) do
    login
    visit article_path(article)
  end

  it "should destroy the article" do
    click_link("Delete")
    expect(page).to have_content("Article deleted successfully")
  end
end
