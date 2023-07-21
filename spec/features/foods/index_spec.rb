require 'rails_helper'

RSpec.describe 'foods index', type: :feature do
  describe 'all the things on the page' do
    it 'should display ten items related to search' do
      visit root_path

      fill_in(:q, with: 'sweet potatoes')
      click_button('Search')

      expect(page).to have_content('Total Results: 55579')
      expect(page).to have_content('SWEET POTATOES')
      expect(page).to have_content('8901020020844')
      expect(page).to have_content('NOT A BRANDED ITEM')
      expect(page).to have_content('ORGANIC SWEET POTATOES.')

      expect(page).to_not have_content('882495000013')
      expect(page).to_not have_content('N&W Farm Produce Inc.')
    end
  end
end
