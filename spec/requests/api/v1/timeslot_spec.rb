require 'rails_helper'

RSpec.describe "Timeslots", type: :request do
  let(:facility) { create(:facility,
    name: 'Sauna',
    description: 'Hot hot Sauna',
    rules: 'No Underwear',
    status: true)}

  let!(:timeslot) { create(:timeslot,
     start_time: '12:00',
     end_time: '16:00',
     facility_id: facility.id)}

  describe "GET /api/v1/facilities/:facility_id/timeslots" do
    it "it should return all time slots for Sauna" do
      get api_v1_facility_timeslots(facility.id)

      expected_response = [{
       'start_time' => '12:00',
       'end_time' => '16:00'
      }]

      expect(response_json).to eq expected_response
      expect(response.status).to eq 200
    end
  end
end
