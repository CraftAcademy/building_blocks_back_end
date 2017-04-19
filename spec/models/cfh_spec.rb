require 'rails_helper'

RSpec.describe Cfh, type: :model do
  describe 'DB table' do
    it { is_expected.to have_db_column :title }
    it { is_expected.to have_db_column :message }
    it { is_expected.to have_db_column :status }
  end

  describe 'Validations' do
    it { is_expected.to validate_presence_of :title }
    it { is_expected.to validate_presence_of :message }
    it { is_expected.to validate_presence_of :status }
  end

  describe 'Factory' do
    it 'should have valid Factory' do
      expect(create(:cfh)).to be_valid
    end
  end
end
