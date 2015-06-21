require 'rails_helper'

require_relative 'helpers'
include Helpers

feature 'images' do
  context 'no images have been added' do
    scenario 'should display a prompt to add an image (I01)' do
      visit '/images'
      expect(page).to have_content 'No images yet'
      expect(page).to have_link 'Add an Image'
    end
  end
end