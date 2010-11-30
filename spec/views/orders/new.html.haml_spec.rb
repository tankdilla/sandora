require 'spec_helper'

describe "orders/new.html.haml" do
  before(:each) do
    assign(:order, stub_model(Order,
      :name => "MyString",
      :phone_number => "MyString",
      :alt_phone_number => "MyString",
      :email => "MyString",
      :recipient_name => "MyString",
      :recipient_phone_number => "MyString",
      :gift_ind => false,
      :gift_message => "MyString"
    ).as_new_record)
  end

  it "renders new order form" do
    render

    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "form", :action => orders_path, :method => "post" do
      assert_select "input#order_name", :name => "order[name]"
      assert_select "input#order_phone_number", :name => "order[phone_number]"
      assert_select "input#order_alt_phone_number", :name => "order[alt_phone_number]"
      assert_select "input#order_email", :name => "order[email]"
      assert_select "input#order_recipient_name", :name => "order[recipient_name]"
      assert_select "input#order_recipient_phone_number", :name => "order[recipient_phone_number]"
      assert_select "input#order_gift_ind", :name => "order[gift_ind]"
      assert_select "input#order_gift_message", :name => "order[gift_message]"
    end
  end
end
