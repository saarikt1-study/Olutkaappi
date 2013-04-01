require 'spec_helper'

describe "Static pages" do

  describe "Home page" do

    it "should have the content 'Olutkaappi'" do
      visit '/static_pages/home'
      page.should have_content('Olutkaappi')
    end
  end

  describe "Search page" do

    it "should have the content 'Haku'" do
      visit '/static_pages/search'
      page.should have_content('Haku')
    end
  end

  describe "Beer" do

    it "should have the content 'Olut'" do
      visit '/static_pages/beer'
      page.should have_content('Olut')
    end
  end
end