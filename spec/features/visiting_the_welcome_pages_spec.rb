require 'spec_helper'

# http://guides.rubyonrails.org/getting_started.html#say-hello-rails
describe "When I visit /welcome/index" do
  before { visit "/welcome/index" }

  it "should have a header" do
    within("#header") do
      expect(page).to have_content("Hello, Rails!")
    end
  end
end