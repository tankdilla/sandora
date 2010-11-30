require 'spec_helper'

describe "orders/edit.html.haml" do
  before(:each) do
    @order = assign(:order, stub_model(Order,
      :new_record? => false,
      :name => "MyString",
      :phone_number => "MyString",
      :alt_phone_number => "MyString",
      :email => "MyString",
      :recipient_name => "MyString",
      :recipient_phone_number => "MyString",
      :gift_ind => false,
      :gift_message => "MyString"
    ))
  end

  it "renders the edit order form" do
    render

    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "form", :action => order_path(@order), :method => "post" do
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
