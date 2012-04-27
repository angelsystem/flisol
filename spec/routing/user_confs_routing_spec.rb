require "spec_helper"

describe UserConfsController do
  describe "routing" do

    it "routes to #index" do
      get("/user_confs").should route_to("user_confs#index")
    end

    it "routes to #new" do
      get("/user_confs/new").should route_to("user_confs#new")
    end

    it "routes to #show" do
      get("/user_confs/1").should route_to("user_confs#show", :id => "1")
    end

    it "routes to #edit" do
      get("/user_confs/1/edit").should route_to("user_confs#edit", :id => "1")
    end

    it "routes to #create" do
      post("/user_confs").should route_to("user_confs#create")
    end

    it "routes to #update" do
      put("/user_confs/1").should route_to("user_confs#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/user_confs/1").should route_to("user_confs#destroy", :id => "1")
    end

  end
end
