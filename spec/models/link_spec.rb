require 'rails_helper'

RSpec.describe Link, type: :model do

  describe "check associations" do
    it { should belong_to(:graph) }
    it { should belong_to(:source) }
    it { should belong_to(:target) }
  end

end