require 'rails_helper'

RSpec.describe Node, type: :model do

  describe "check associations" do
    it { should have_many(:outgoing_links) }
    it { should have_many(:incoming_links) }
    it { should have_many(:target_nodes) }
    it { should have_many(:source_nodes) }
    it { should belong_to(:graph) }
    it { should belong_to(:node_type) }
  end

end