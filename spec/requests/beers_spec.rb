require 'spec_helper'

describe "Beers" do
  before do
	@beer = Beer.create :name => 'Karjala', :beer_type => 'Lager', :alc => '4,7%'
  end
  describe "GET /beers" do
    it "display beers" do
     
      visit beers_path
      page.should have_content "Karjala"
   	end

   	it "create a new beer" do
   		visit beers_path
   		fill_in 'name', :with => 'Olvi'
   		fill_in 'beer_type', :with => 'Lager'
   		fill_in 'alc', :with => '4,7%'
   		click_button 'Lisaa olut'

   		current_path.should == beers_path
   		page.should have_content 'Olvi'
   	end 
  end

  describe "PUT /beers" do
  	it "edits a beer" do
  		visit beers_path
  		click_link 'Muokkaa'

  		current_path.should == edit_beer_path(@beer)

  		find_field('name').value.should == 'Karjala'

  		fill_in 'name', :with => 'uusi bisse'
  		click_button 'Paivita olut'

  		page.should have_content 'uusi bisse'
  	end

  	it "should not update any fields to empty" do
  		visit beers_path
  		click_link 'Muokkaa'

  		fill_in 'name', :with => ''
  		click_button 'Paivita olut'

  		current_path.should == edit_beer_path(@beer)
  		page.should have_content 'ERROR'
  	end
  end

  describe "DELETE /beers" do
  	it "should delete beer" do
  		visit beers_path
  		click_link "Poista"
  		page.should have_content "Olut poistettu"
  		page.should have_no_content "Karjala"
  	end
  end
end
