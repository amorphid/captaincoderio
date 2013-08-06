require "spec_helper"

describe "When I visit /" do
  before { visit "/" }

  it "should take me to root" do
    expect(current_path).to eq("/")
  end
end
