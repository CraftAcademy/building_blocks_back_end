require 'rails_helper'

RSpec.describe Timeslot, type: :model do
  describe 'DB table' do
    it { is_expected.to have_db_column :date }
  end

  describe 'Associations' do
    it { is_expected.to belong_to :facility }
  end

  describe 'Factory' do
    it 'should have valid Factory' do
      expect(create(:timeslot)).to be_valid
    end
  end
end
