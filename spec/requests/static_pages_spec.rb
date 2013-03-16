require 'spec_helper'

describe "StaticPages" do

  describe "Home page" do
    it "should have the h1 'DabblerMom'" do
      visit '/static_pages/home'
      page.should have_selector('h1', :text => 'DabblerMom')
    end

    it "should have the title 'Home'" do
      visit '/static_pages/home'
      page.should have_selector('title', :text => "Dabblermom | Home")
    end
  end

  describe "About page" do
    it "should have the h1 'About DabblerMom'" do
      visit '/static_pages/about'
      page.should have_selector('h1', :text => 'About DabblerMom')
    end

    it "should have the title 'About DabblerMom'" do
      visit '/static_pages/about'
      page.should have_selector('title', :text => "Dabblermom | About DabblerMom")
    end
  end

  describe "Feedback page" do
    it "should have the h1 'Send Us Feedback'" do
      visit '/static_pages/feedback'
      page.should have_selector('h1', :text => 'Send Us Feedback')
    end

    it "should have the title 'Send Us Feedback'" do
      visit '/static_pages/feedback'
      page.should have_selector('title', :text => "Dabblermom | Send Us Feedback")
    end
  end

  describe "Help page" do
    it "should have the h1 'Help'" do
      visit '/static_pages/help'
      page.should have_selector('h1', :text => 'Help')
    end

    it "should have the title 'Help'" do
      visit '/static_pages/help'
      page.should have_selector('title', :text => "Dabblermom | Help")
    end
  end
end
