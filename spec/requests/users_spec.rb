require 'rails_helper'

RSpec.describe "Users", type: :request do
  describe "GET /profile" do
    it "returns http success" do
      # get "/users/profile"
      get "/profile"
      expect(response).to have_http_status(:success)
    end
  end

end
