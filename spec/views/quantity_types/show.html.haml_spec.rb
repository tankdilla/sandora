require 'spec_helper'

describe "quantity_types/show.html.haml" do
  before(:each) do
    @quantity_type = assign(:quantity_type, stub_model(QuantityType,
      :description => "Description"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    rendered.should match(/Description/)
  end
end
