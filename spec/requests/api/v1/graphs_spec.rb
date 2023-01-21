require 'rails_helper'

RSpec.describe "Api::V1::Graphs", type: :request do

  describe "GET /index" do
    pending "returns all the graphs as JSON"
  end

  describe "GET /:id" do
    it 'hits the API and checks response' do
      get '/api/v1/graphs/1'

      expect(response).to be_successful
      expect(response.body).to include("nodes")
      expect(response.body).to include("links")
    end

    it 'hits the API with wrong ID and checks response' do
      get '/api/v1/graphs/randomID'

      expect(response).to_not be_successful
    end
  end

end
