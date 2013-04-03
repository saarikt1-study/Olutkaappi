require 'spec_helper'

describe "Static pages" do

  describe "Home page" do

    it "should have the content 'Olutkaappi'" do
      visit home_path
      page.should have_content('Olutkaappi')
    end
  end

  describe "Search page" do

    it "should have the content 'Haku'" do
      visit search_path
      page.should have_content('Haku')
    end
  end

  describe "Beer" do

    it "should have the content 'Olut'" do
      visit beer_path
      page.should have_content('Olut')
    end
  end
end