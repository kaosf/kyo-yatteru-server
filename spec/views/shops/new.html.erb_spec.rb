require 'spec_helper'

describe "shops/new" do
  before(:each) do
    assign(:shop, stub_model(Shop,
      :name => "MyString",
      :token => "MyString",
      :status_id => 1
    ).as_new_record)
  end

  it "renders new shop form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => shops_path, :method => "post" do
      assert_select "input#shop_name", :name => "shop[name]"
      assert_select "input#shop_token", :name => "shop[token]"
      assert_select "input#shop_status_id", :name => "shop[status_id]"
    end
  end
end
