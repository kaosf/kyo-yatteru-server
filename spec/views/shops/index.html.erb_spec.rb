require 'spec_helper'

describe "shops/index" do
  before(:each) do
    assign(:shops, [
      stub_model(Shop,
        :name => "Name",
        :token => "Token",
        :status_id => 1
      ),
      stub_model(Shop,
        :name => "Name",
        :token => "Token",
        :status_id => 1
      )
    ])
  end

  it "renders a list of shops" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Token".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
