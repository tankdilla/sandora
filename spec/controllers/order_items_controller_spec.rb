require 'spec_helper'

describe OrderItemsController do

  def mock_order_item(stubs={})
    (@mock_order_item ||= mock_model(OrderItem).as_null_object).tap do |order_item|
      order_item.stub(stubs) unless stubs.empty?
    end
  end

  describe "GET index" do
    it "assigns all order_items as @order_items" do
      OrderItem.stub(:all) { [mock_order_item] }
      get :index
      assigns(:order_items).should eq([mock_order_item])
    end
  end

  describe "GET show" do
    it "assigns the requested order_item as @order_item" do
      OrderItem.stub(:find).with("37") { mock_order_item }
      get :show, :id => "37"
      assigns(:order_item).should be(mock_order_item)
    end
  end

  describe "GET new" do
    it "assigns a new order_item as @order_item" do
      OrderItem.stub(:new) { mock_order_item }
      get :new
      assigns(:order_item).should be(mock_order_item)
    end
  end

  describe "GET edit" do
    it "assigns the requested order_item as @order_item" do
      OrderItem.stub(:find).with("37") { mock_order_item }
      get :edit, :id => "37"
      assigns(:order_item).should be(mock_order_item)
    end
  end

  describe "POST create" do

    describe "with valid params" do
      it "assigns a newly created order_item as @order_item" do
        OrderItem.stub(:new).with({'these' => 'params'}) { mock_order_item(:save => true) }
        post :create, :order_item => {'these' => 'params'}
        assigns(:order_item).should be(mock_order_item)
      end

      it "redirects to the created order_item" do
        OrderItem.stub(:new) { mock_order_item(:save => true) }
        post :create, :order_item => {}
        response.should redirect_to(order_item_url(mock_order_item))
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved order_item as @order_item" do
        OrderItem.stub(:new).with({'these' => 'params'}) { mock_order_item(:save => false) }
        post :create, :order_item => {'these' => 'params'}
        assigns(:order_item).should be(mock_order_item)
      end

      it "re-renders the 'new' template" do
        OrderItem.stub(:new) { mock_order_item(:save => false) }
        post :create, :order_item => {}
        response.should render_template("new")
      end
    end

  end

  describe "PUT update" do

    describe "with valid params" do
      it "updates the requested order_item" do
        OrderItem.should_receive(:find).with("37") { mock_order_item }
        mock_order_item.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :order_item => {'these' => 'params'}
      end

      it "assigns the requested order_item as @order_item" do
        OrderItem.stub(:find) { mock_order_item(:update_attributes => true) }
        put :update, :id => "1"
        assigns(:order_item).should be(mock_order_item)
      end

      it "redirects to the order_item" do
        OrderItem.stub(:find) { mock_order_item(:update_attributes => true) }
        put :update, :id => "1"
        response.should redirect_to(order_item_url(mock_order_item))
      end
    end

    describe "with invalid params" do
      it "assigns the order_item as @order_item" do
        OrderItem.stub(:find) { mock_order_item(:update_attributes => false) }
        put :update, :id => "1"
        assigns(:order_item).should be(mock_order_item)
      end

      it "re-renders the 'edit' template" do
        OrderItem.stub(:find) { mock_order_item(:update_attributes => false) }
        put :update, :id => "1"
        response.should render_template("edit")
      end
    end

  end

  describe "DELETE destroy" do
    it "destroys the requested order_item" do
      OrderItem.should_receive(:find).with("37") { mock_order_item }
      mock_order_item.should_receive(:destroy)
      delete :destroy, :id => "37"
    end

    it "redirects to the order_items list" do
      OrderItem.stub(:find) { mock_order_item }
      delete :destroy, :id => "1"
      response.should redirect_to(order_items_url)
    end
  end

end
