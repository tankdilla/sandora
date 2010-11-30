require 'spec_helper'

describe "quantity_types/edit.html.haml" do
  before(:each) do
    @quantity_type = assign(:quantity_type, stub_model(QuantityType,
      :new_record? => false,
      :description => "MyString"
    ))
  end

  it "renders the edit quantity_type form" do
    render

    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "form", :action => quantity_type_path(@quantity_type), :method => "post" do
      assert_select "input#quantity_type_description", :name => "quantity_type[description]"
    end
  end
end
