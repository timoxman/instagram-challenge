module Helpers

    def sign_up(email='test@example.com')
      visit '/'
      click_link 'Sign up'
      fill_in "Email", with: email
      fill_in "Password", with: 'testtest'
      fill_in "Password confirmation", with: 'testtest'
      click_button 'Sign up'
    end

    def sign_out
      visit '/'
      click_link 'Sign out'
    end

    def add_image()
      visit '/images'
      click_link 'Add an image'
      # fill_in 'Name', with: name
      # click_button 'Create Restaurant'
    end

    def add_comment(comment)
      visit '/images'
      click_link 'image'
      fill_in 'Comments', with: comment
      click_button 'Leave Comment'
    end

end