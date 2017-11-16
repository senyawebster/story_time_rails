require 'rails_helper'

describe "the add-a-story-and-chapter process" do
  it "adds a new story, then gives it a chapter" do
    visit root_path
    click_link 'New Story'
    fill_in 'Title', :with => 'Rad Story'
    click_on 'Create Story'

    click_link 'Rad Story'
    click_link 'New Chapter'
    fill_in 'Sentence', :with => 'I am a rad sentence'
    fill_in 'Author', :with => 'I am a rad author'
    fill_in 'Pic', :with => 'I am a rad pic'
    click_on 'Create Chapter'
    expect(page).to have_content 'I am a rad sentence'
  end
end
