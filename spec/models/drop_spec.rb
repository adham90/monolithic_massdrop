require 'rails_helper'

RSpec.describe Drop, type: :model do
  context "#relations" do
    it { is_expected.to belong_to :product }
    it { is_expected.to have_many(:joint).through(:drop_members) }
    it { is_expected.to have_many(:commit).through(:drop_members) }
  end
end
