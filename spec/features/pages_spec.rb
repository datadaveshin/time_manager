require 'rails_helper'

describe 'visit' do
  describe 'home' do
    it 'can be reached successfully' do
      visit root_path
      expect(page_status_code).to eq(200)
    end
  end
end
