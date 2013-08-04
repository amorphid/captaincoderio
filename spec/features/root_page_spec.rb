require 'spec_helper'

# http://guides.rubyonrails.org/getting_started.html#setting-the-application-home-page
describe "When I visit /" do
  before { visit "/" }

  it "should take me to root" do
    expect(current_path).to eq("/")
  end
end
