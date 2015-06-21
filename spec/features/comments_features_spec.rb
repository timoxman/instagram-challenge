require 'rails_helper'

require_relative 'helpers'
include Helpers

feature 'comments' do
  context 'no comments have been added' do
    scenario 'should be able to add a comment when an image has been added (C01)' do
      visit '/images'
      add_image
      expect(page).to have_link 'Add Comment'
    end
  end
end