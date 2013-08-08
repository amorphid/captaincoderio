require "spec_helper"

describe "Deleting an article" do
  let(:article) { FactoryGirl.create(:article) }
  before { visit article_path(article) }

  it "should destroy the article" do
    article_id = article.id

    click_link("Delete")
    expect(article_id).not_to eq(article.id)
    # expect(page).to have_content("Article deleted successfully")
  end
end
