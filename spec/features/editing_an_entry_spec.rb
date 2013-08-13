require "spec_helper"

describe "Updating an entry" do
  let(:entry) { FactoryGirl.create(:entry) }
  let(:title) { entry.title }
  let(:body) { entry.body }

  before(:each) do
    login
    visit edit_entry_path(entry)
  end

  context "using the form" do
    it "should succeed when form is complete" do
      fill_in "entry_title", :with => title
      fill_in "entry_body", :with => body
      click_button "Submit"
      expect(page).to have_content("Entry updated successfully")
    end

    it "should fail when missing name" do
      fill_in "entry_title", :with => ""
      fill_in "entry_body", :with => body
      click_button "Submit"
      expect(page).to have_content("Title can't be blank")
    end

    it "should fail when missing body" do
      fill_in "entry_title", :with => title
      fill_in "entry_body", :with => ""
      click_button "Submit"
      expect(page).to have_content("Body can't be blank")
    end

    it "should fail when completely blank" do
      fill_in "entry_title", :with => ""
      fill_in "entry_body", :with => ""
      click_button "Submit"
      expect(page).to have_content("Title can't be blank")
      expect(page).to have_content("Body can't be blank")
    end
  end
end
