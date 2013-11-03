require 'spec_helper'

describe "relations/edit" do
  before(:each) do
    @relation = assign(:relation, stub_model(Relation,
      :shop_id => 1,
      :user_id => 1
    ))
  end

  it "renders the edit relation form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => relations_path(@relation), :method => "post" do
      assert_select "input#relation_shop_id", :name => "relation[shop_id]"
      assert_select "input#relation_user_id", :name => "relation[user_id]"
    end
  end
end
