require 'rails_helper'

describe 'visit' do
  describe 'home' do
    it 'can be reached successfully' do
      visit root_path
      expect(page.status_code).to eq(200)
    end
  end
end

feature "Page Header" do
  scenario "has home content" do
    visit root_path
    within('h1') do
      expect(page).to have_content("Home")
    end
  end
end
