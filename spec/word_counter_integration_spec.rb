require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application

describe("The word count '/results' path", {:type => :feature}) do
  it('returns the number of matches found') do
    visit('/')
    fill_in('phrase', :with => 'Cats, I just love cats!')
    fill_in('target', :with => 'cats')
    click_button('Find count!')
    expect(page).to have_content("2")
  end
end
