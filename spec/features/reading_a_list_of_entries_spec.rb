require "spec_helper"

describe "The entries index" do
  let(:entry_1) { Entry.first }
  let(:entry_2) { Entry.last }

  before(:each) do
    2.times { FactoryGirl.create(:entry) }
    visit entries_path
  end

  it "should contain entry_1" do
    within("#entry_" + entry_1.id.to_s) do
      click_link(entry_1.title)
    end
  end

  it "should contain entry_2" do
    within("#entry_" + entry_2.id.to_s) do
      click_link(entry_2.title)
    end
  end
end
