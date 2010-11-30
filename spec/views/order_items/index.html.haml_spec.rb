require 'spec_helper'

describe "order_items/index.html.haml" do
  before(:each) do
    assign(:order_items, [
      stub_model(OrderItem,
        :order_id => 1,
        :product_id => 1,
        :quantity => 1,
        :quantity_type => 1
      ),
      stub_model(OrderItem,
        :order_id => 1,
        :product_id => 1,
        :quantity => 1,
        :quantity_type => 1
      )
    ])
  end

  it "renders a list of order_items" do
    render
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
