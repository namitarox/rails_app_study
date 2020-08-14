require 'rails_helper'

RSpec.describe "Api::Microposts", type: :request do

  describe "GET /create" do
    it "returns http success" do
      get "/api/microposts/create"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /show" do
    it "returns http success" do
      get "/api/microposts/show"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /index" do
    it "returns http success" do
      get "/api/microposts/index"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /update" do
    it "returns http success" do
      get "/api/microposts/update"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /destroy" do
    it "returns http success" do
      get "/api/microposts/destroy"
      expect(response).to have_http_status(:success)
    end
  end

end
