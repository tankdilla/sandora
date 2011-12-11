require 'spec_helper'

describe "comments/show.html.haml" do
  before(:each) do
    @comment = assign(:comment, stub_model(Comment,
      :first_name => "First Name",
      :last_name => "Last Name",
      :email_address => "Email Address",
      :comment => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/First Name/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Last Name/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Email Address/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/MyText/)
  end
end
