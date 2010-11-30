require 'spec_helper'

describe "orders/index.html.haml" do
  before(:each) do
    assign(:orders, [
      stub_model(Order,
        :name => "Name",
        :phone_number => "Phone Number",
        :alt_phone_number => "Alt Phone Number",
        :email => "Email",
        :recipient_name => "Recipient Name",
        :recipient_phone_number => "Recipient Phone Number",
        :gift_ind => false,
        :gift_message => "Gift Message"
      ),
      stub_model(Order,
        :name => "Name",
        :phone_number => "Phone Number",
        :alt_phone_number => "Alt Phone Number",
        :email => "Email",
        :recipient_name => "Recipient Name",
        :recipient_phone_number => "Recipient Phone Number",
        :gift_ind => false,
        :gift_message => "Gift Message"
      )
    ])
  end

  it "renders a list of orders" do
    render
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Phone Number".to_s, :count => 2
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Alt Phone Number".to_s, :count => 2
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Recipient Name".to_s, :count => 2
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Recipient Phone Number".to_s, :count => 2
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "tr>td", :text => false.to_s, :count => 2
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Gift Message".to_s, :count => 2
  end
end
