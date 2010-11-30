require 'spec_helper'

describe "quantity_types/new.html.haml" do
  before(:each) do
    assign(:quantity_type, stub_model(QuantityType,
      :description => "MyString"
    ).as_new_record)
  end

  it "renders new quantity_type form" do
    render

    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "form", :action => quantity_types_path, :method => "post" do
      assert_select "input#quantity_type_description", :name => "quantity_type[description]"
    end
  end
end
