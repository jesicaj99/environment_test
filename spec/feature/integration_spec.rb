# location: spec/feature/integration_spec.rb
require 'rails_helper'

RSpec.describe 'Creating a book', type: :feature do
  scenario 'valid inputs' do
    visit new_book_path
    fill_in 'Title', with: 'harry potter'
    fill_in 'Author', with: 'JK rowling'
    fill_in 'Price', with: '123'
    select '2020', :from => 'book_published_1i'
    select 'November', :from => 'book_published_2i'
    select '2', :from => 'book_published_3i'
    click_on 'Create Book'
    visit books_path
    expect(page).to have_content('harry potter')
    expect(page).to have_content('JK rowling')
    expect(page).to have_content('123')
    expect(page).to have_content('2020-11-02')
  end
end