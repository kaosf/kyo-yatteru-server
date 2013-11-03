require 'spec_helper'

describe "relations/new" do
  before(:each) do
    assign(:relation, stub_model(Relation,
      :shop_id => 1,
      :user_id => 1
    ).as_new_record)
  end

  it "renders new relation form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => relations_path, :method => "post" do
      assert_select "input#relation_shop_id", :name => "relation[shop_id]"
      assert_select "input#relation_user_id", :name => "relation[user_id]"
    end
  end
end
