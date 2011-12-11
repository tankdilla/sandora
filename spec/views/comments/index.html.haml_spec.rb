require 'spec_helper'

describe "comments/index.html.haml" do
  before(:each) do
    assign(:comments, [
      stub_model(Comment,
        :first_name => "First Name",
        :last_name => "Last Name",
        :email_address => "Email Address",
        :comment => "MyText"
      ),
      stub_model(Comment,
        :first_name => "First Name",
        :last_name => "Last Name",
        :email_address => "Email Address",
        :comment => "MyText"
      )
    ])
  end

  it "renders a list of comments" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "First Name".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Last Name".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Email Address".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
