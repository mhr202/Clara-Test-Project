require 'rails_helper'

RSpec.describe NodeType, type: :model do

  describe "check associations" do
    it { should belong_to(:graph) }
    it { should have_many(:nodes) }
  end

end