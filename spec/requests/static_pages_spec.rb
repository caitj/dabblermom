require 'spec_helper'

describe "StaticPages" do

  subject { page }

  describe "Home page" do
    before { visit root_path }
    
    it { should have_selector('h1',   text: 'DabblerMom') }
    it { should have_selector('title', text: ('')) }
    it { should_not have_selector 'title', text: '| Home' }
  end


  describe "About page" do
    before { visit about_path }

    it { should have_selector('h1',   text: 'About') }
    it { should have_selector('title', text: 'About') }
  end

  describe "Feedback page" do

    before { visit feedback_path }
     
  it { should have_selector('h1',   text: 'Feedback') }
  it { should have_selector('title', text: 'Feedback') }
  end

  describe "Help page" do

    before { visit help_path }
    
  it { should have_selector('h1',     text: 'Help') }
  it { should have_selector('title',  text: 'Help') }
  end

  it "should have the right links on the layout" do
    visit root_path
    click_link"About"
    click_link "Home"
    click_link "Sign up now!"
    click_link "Help"
    page.should #fill in
    click_link "Feedback"
    page.should #fill in
  end
end
