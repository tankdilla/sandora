require 'spec_helper'

describe QuantityTypesController do

  def mock_quantity_type(stubs={})
    (@mock_quantity_type ||= mock_model(QuantityType).as_null_object).tap do |quantity_type|
      quantity_type.stub(stubs) unless stubs.empty?
    end
  end

  describe "GET index" do
    it "assigns all quantity_types as @quantity_types" do
      QuantityType.stub(:all) { [mock_quantity_type] }
      get :index
      assigns(:quantity_types).should eq([mock_quantity_type])
    end
  end

  describe "GET show" do
    it "assigns the requested quantity_type as @quantity_type" do
      QuantityType.stub(:find).with("37") { mock_quantity_type }
      get :show, :id => "37"
      assigns(:quantity_type).should be(mock_quantity_type)
    end
  end

  describe "GET new" do
    it "assigns a new quantity_type as @quantity_type" do
      QuantityType.stub(:new) { mock_quantity_type }
      get :new
      assigns(:quantity_type).should be(mock_quantity_type)
    end
  end

  describe "GET edit" do
    it "assigns the requested quantity_type as @quantity_type" do
      QuantityType.stub(:find).with("37") { mock_quantity_type }
      get :edit, :id => "37"
      assigns(:quantity_type).should be(mock_quantity_type)
    end
  end

  describe "POST create" do

    describe "with valid params" do
      it "assigns a newly created quantity_type as @quantity_type" do
        QuantityType.stub(:new).with({'these' => 'params'}) { mock_quantity_type(:save => true) }
        post :create, :quantity_type => {'these' => 'params'}
        assigns(:quantity_type).should be(mock_quantity_type)
      end

      it "redirects to the created quantity_type" do
        QuantityType.stub(:new) { mock_quantity_type(:save => true) }
        post :create, :quantity_type => {}
        response.should redirect_to(quantity_type_url(mock_quantity_type))
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved quantity_type as @quantity_type" do
        QuantityType.stub(:new).with({'these' => 'params'}) { mock_quantity_type(:save => false) }
        post :create, :quantity_type => {'these' => 'params'}
        assigns(:quantity_type).should be(mock_quantity_type)
      end

      it "re-renders the 'new' template" do
        QuantityType.stub(:new) { mock_quantity_type(:save => false) }
        post :create, :quantity_type => {}
        response.should render_template("new")
      end
    end

  end

  describe "PUT update" do

    describe "with valid params" do
      it "updates the requested quantity_type" do
        QuantityType.should_receive(:find).with("37") { mock_quantity_type }
        mock_quantity_type.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :quantity_type => {'these' => 'params'}
      end

      it "assigns the requested quantity_type as @quantity_type" do
        QuantityType.stub(:find) { mock_quantity_type(:update_attributes => true) }
        put :update, :id => "1"
        assigns(:quantity_type).should be(mock_quantity_type)
      end

      it "redirects to the quantity_type" do
        QuantityType.stub(:find) { mock_quantity_type(:update_attributes => true) }
        put :update, :id => "1"
        response.should redirect_to(quantity_type_url(mock_quantity_type))
      end
    end

    describe "with invalid params" do
      it "assigns the quantity_type as @quantity_type" do
        QuantityType.stub(:find) { mock_quantity_type(:update_attributes => false) }
        put :update, :id => "1"
        assigns(:quantity_type).should be(mock_quantity_type)
      end

      it "re-renders the 'edit' template" do
        QuantityType.stub(:find) { mock_quantity_type(:update_attributes => false) }
        put :update, :id => "1"
        response.should render_template("edit")
      end
    end

  end

  describe "DELETE destroy" do
    it "destroys the requested quantity_type" do
      QuantityType.should_receive(:find).with("37") { mock_quantity_type }
      mock_quantity_type.should_receive(:destroy)
      delete :destroy, :id => "37"
    end

    it "redirects to the quantity_types list" do
      QuantityType.stub(:find) { mock_quantity_type }
      delete :destroy, :id => "1"
      response.should redirect_to(quantity_types_url)
    end
  end

end
