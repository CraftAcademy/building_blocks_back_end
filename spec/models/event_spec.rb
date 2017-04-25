require 'rails_helper'

RSpec.describe Event, type: :model do
  describe 'DB table' do
    it { is_expected.to have_db_column :name }
    it { is_expected.to have_db_column :start_time}
    it { is_expected.to have_db_column :recurring }
  end

  describe 'Factory' do
    it 'should have valid Factory' do
      expect(create(:event)).to be_valid
    end
  end
end
