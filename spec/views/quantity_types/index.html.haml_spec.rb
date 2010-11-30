require 'spec_helper'

describe "quantity_types/index.html.haml" do
  before(:each) do
    assign(:quantity_types, [
      stub_model(QuantityType,
        :description => "Description"
      ),
      stub_model(QuantityType,
        :description => "Description"
      )
    ])
  end

  it "renders a list of quantity_types" do
    render
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Description".to_s, :count => 2
  end
end
