require 'spec_helper'

describe "order_items/show.html.haml" do
  before(:each) do
    @order_item = assign(:order_item, stub_model(OrderItem,
      :order_id => 1,
      :product_id => 1,
      :quantity => 1,
      :quantity_type => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    rendered.should match(/1/)
  end
end
