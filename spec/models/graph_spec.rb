require 'rails_helper'

RSpec.describe Graph, type: :model do

  describe "check associations" do
    it { should have_many(:nodes) }
    it { should have_many(:links) }
    it { should have_many(:node_types) }
  end

end