require "spec_helper"

describe "When I visit /welcome/index" do
  before { visit welcome_index_path }

  it "should have a header" do
    within("#header") do
      expect(page).to have_content("Hello, Rails!")
    end
  end
end
