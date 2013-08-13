require "spec_helper"

describe "Deleting an entry" do
  let(:entry) { FactoryGirl.create(:entry) }
  before(:each) do
    login
    visit entry_path(entry)
  end

  it "should destroy the entry" do
    click_link("Delete")
    expect(page).to have_content("Entry deleted successfully")
  end
end
