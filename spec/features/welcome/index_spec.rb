require 'rails_helper'

RSpec.describe 'root path', type: :feature do
  describe 'all the things on the page' do
    it 'has a search form that routes to /foods' do
      visit root_path

      fill_in(:q, with: 'sweet potatoes')
      click_button('Search')

      expect(current_path).to eq(foods_path)
    end
  end
end
