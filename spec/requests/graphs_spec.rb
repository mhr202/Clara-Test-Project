require 'rails_helper'

RSpec.describe "Graphs", type: :request do
  describe "GET /index" do
    it 'loads the index page' do
      get '/graphs'

      expect(response).to be_successful
      expect(response.body).to include("Your Graphs")
    end
  end

  describe "GET /:id" do
    it 'loads the graph information' do
      get '/graphs/1'

      expect(response).to be_successful
      expect(response.body).to include("ID")
      expect(response.body).to include("Nodes")
      expect(response.body).to include("Links")
    end

    it 'loads the graph index if ID is not found' do
      get '/graphs/randomID'

      expect(response).to_not be_successful
      expect(response.body).to include("redirected")
    end
  end
end
