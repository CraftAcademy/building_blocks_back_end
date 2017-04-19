require 'rails_helper'

RSpec.describe Api::V1::HelpRequestsController, type: :request do
  describe 'POST /v1/help_requests' do
    it 'should collect call for help message from mobile client' do

      params = {
        title: 'Burning',
        message: 'Pants is burning',
        status: true
                }

      post "/api/v1/help_requests", params

      response.code.should eq "204"
      expect(HelpRequest.where(title: "Burning", message: 'Pants is burning',status: true )).to be_present
    end
  end
end
