require 'rails_helper'

RSpec.describe "Api::Me::Accounts", type: :request do

  describe "GET /update" do
    it "returns http success" do
      get "/api/me/accounts/update"
      expect(response).to have_http_status(:success)
    end
  end

end
