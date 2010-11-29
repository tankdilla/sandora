require 'spec_helper'

describe NavigationController do

  describe "GET 'index'" do
    it "should be successful" do
      get 'index'
      response.should be_success
    end
  end

  describe "GET 'catering'" do
    it "should be successful" do
      get 'catering'
      response.should be_success
    end
  end

end
