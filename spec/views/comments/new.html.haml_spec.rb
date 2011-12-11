require 'spec_helper'

describe "comments/new.html.haml" do
  before(:each) do
    assign(:comment, stub_model(Comment,
      :first_name => "MyString",
      :last_name => "MyString",
      :email_address => "MyString",
      :comment => "MyText"
    ).as_new_record)
  end

  it "renders new comment form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => comments_path, :method => "post" do
      assert_select "input#comment_first_name", :name => "comment[first_name]"
      assert_select "input#comment_last_name", :name => "comment[last_name]"
      assert_select "input#comment_email_address", :name => "comment[email_address]"
      assert_select "textarea#comment_comment", :name => "comment[comment]"
    end
  end
end
