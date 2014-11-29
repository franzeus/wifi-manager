require 'spec_helper'

describe "StaticPages" do
	
  subject{ page }
  describe "About Page" do
	before { visit about_path }
    	
	it { should have_content('About WiFi Manager') }
	it { should have_title('WiFi Manager | About') }
  end
end

