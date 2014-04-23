require 'spec_helper'

feature 'when accessing the homepage' do
  scenario 'with under_construction enabled' do
    ENV['under_construction'] = 'true'
    visit '/'
    page.should have_content 'Muy Pronto'
  end

  it 'with under_construction diabled' do
    ENV['under_construction'] = ''
    visit '/'
    page.should_not have_content 'Muy Pronto'
  end
end
