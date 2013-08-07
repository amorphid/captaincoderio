require "spec_helper"

describe "Deleting an article" do
  let(:article) { FactoryGirl.create(:article) }

  before { visit article_path(article) }

  it "should destroy the article" do
    click_link("Delete")
    expect(destroyed?).to be(true)
    expect(page).to have_content("Article deleted successfully")
  end

  def destroyed?
    begin
      article.find(4)
      false
    rescue
      true
    end
  end
end
