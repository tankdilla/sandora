require "spec_helper"

describe QuantityTypesController do
  describe "routing" do

    it "recognizes and generates #index" do
      { :get => "/quantity_types" }.should route_to(:controller => "quantity_types", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/quantity_types/new" }.should route_to(:controller => "quantity_types", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/quantity_types/1" }.should route_to(:controller => "quantity_types", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/quantity_types/1/edit" }.should route_to(:controller => "quantity_types", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/quantity_types" }.should route_to(:controller => "quantity_types", :action => "create")
    end

    it "recognizes and generates #update" do
      { :put => "/quantity_types/1" }.should route_to(:controller => "quantity_types", :action => "update", :id => "1")
    end

    it "recognizes and generates #destroy" do
      { :delete => "/quantity_types/1" }.should route_to(:controller => "quantity_types", :action => "destroy", :id => "1")
    end

  end
end
