require 'rails_helper'

RSpec.describe Notification, type: :model do
  describe 'creation' do
    it 'can be created' do 
      notification = Notification.create(phone: "555-555-5555", body: "My Message", source_app: "Some App")
      expect(notification).to be_valid
    end
  end
end
