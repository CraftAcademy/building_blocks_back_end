require 'rails_helper'

RSpec.describe Api::V1::FacilitiesController, type: :request do
  let!(:facility) { create(:facility,
    name: 'Sauna',
    description: 'Hot hot Sauna',
    rules: 'No Underwear',
    status: true)}

  describe 'GET /v1/facilities' do
    it 'should return all the facilities name, description, rules and status' do
      get '/api/v1/facilities'

      expected_response = [{
        'id' => facility.id,
        'name' => 'Sauna',
        'description' => 'Hot hot Sauna',
        'rules' => 'No Underwear',
        'status' => true
      }]

      expect(response_json).to eq expected_response
      expect(response.status).to eq 200
    end
  end
end
