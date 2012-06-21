require "spec_helper"

describe AlbumesController do
  describe "routing" do

    it "routes to #index" do
      get("/albumes").should route_to("albumes#index")
    end

    it "routes to #new" do
      get("/albumes/new").should route_to("albumes#new")
    end

    it "routes to #show" do
      get("/albumes/1").should route_to("albumes#show", :id => "1")
    end

    it "routes to #edit" do
      get("/albumes/1/edit").should route_to("albumes#edit", :id => "1")
    end

    it "routes to #create" do
      post("/albumes").should route_to("albumes#create")
    end

    it "routes to #update" do
      put("/albumes/1").should route_to("albumes#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/albumes/1").should route_to("albumes#destroy", :id => "1")
    end

  end
end
