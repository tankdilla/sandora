require 'spec_helper'

describe "orders/show.html.haml" do
  before(:each) do
    @order = assign(:order, stub_model(Order,
      :name => "Name",
      :phone_number => "Phone Number",
      :alt_phone_number => "Alt Phone Number",
      :email => "Email",
      :recipient_name => "Recipient Name",
      :recipient_phone_number => "Recipient Phone Number",
      :gift_ind => false,
      :gift_message => "Gift Message"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    rendered.should match(/Name/)
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    rendered.should match(/Phone Number/)
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    rendered.should match(/Alt Phone Number/)
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    rendered.should match(/Email/)
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    rendered.should match(/Recipient Name/)
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    rendered.should match(/Recipient Phone Number/)
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    rendered.should match(/false/)
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    rendered.should match(/Gift Message/)
  end
end
