require 'spec_helper'

describe "products/edit.html.haml" do
  before(:each) do
    @product = assign(:product, stub_model(Product,
      :new_record? => false,
      :name => "MyString",
      :description => "MyText",
      :price => "9.99",
      :category_id => 1,
      :url => "MyString"
    ))
  end

  it "renders the edit product form" do
    render

    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "form", :action => product_path(@product), :method => "post" do
      assert_select "input#product_name", :name => "product[name]"
      assert_select "textarea#product_description", :name => "product[description]"
      assert_select "input#product_price", :name => "product[price]"
      assert_select "input#product_category_id", :name => "product[category_id]"
      assert_select "input#product_url", :name => "product[url]"
    end
  end
end
