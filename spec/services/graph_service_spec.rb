require 'rails_helper'

RSpec.describe Graph, type: :model do
    
  let(:payload) { GraphService.perform(1) }

  describe '#perform' do
    it 'checks if a paylaod with nodes & links is returned' do
      expect(payload).to include("nodes")
      expect(payload).to include("links")
    end
  end

end