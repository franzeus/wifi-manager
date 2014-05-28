require 'spec_helper'

describe "Wifi Managers" do
 	describe "Home page" do
		it "should have the content 'WiFi Manager'" do
     			visit '/wifi_manager/home'
			expect(page).to have_content('WiFi Manager')
		end
		it "should have the title 'Home'" do
			visit '/wifi_manager/home'
			expect(page).to have_title('WiFi Manager | Home')
		end
	end

	describe "About page" do
		it "should have content 'About WiFi Manager'" do
			visit '/wifi_manager/about'
			expect(page).to have_content('About WiFi Manager')
		end
		it "should have title 'About'" do
			visit '/wifi_manager/about'
			expect(page).to have_title('WiFi Manager | About')
		end
	end
			
end
