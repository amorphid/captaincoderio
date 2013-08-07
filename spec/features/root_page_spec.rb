require "spec_helper"

describe "When I visit /" do
  before { visit root_path }

  it "should take me to root" do
    expect(current_path).to eq(root_path)
  end
end
