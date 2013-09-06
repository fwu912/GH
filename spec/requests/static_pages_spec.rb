require 'spec_helper'

describe "StaticPages" do

	let(:base_title) { "GeeHood" }
  
	describe "Home Page" do
		
		it "should have the content 'GeeHood'" do
			visit '/static_pages/home'
			expect(page).to have_content('GeeHood')
		end

		it "should have base title" do
			visit '/static_pages/home'
			expect(page).to have_title("#{base_title}")
		end

		it "should not have custom title 'Home'" do
			visit '/static_pages/home'
			expect(page).not_to have_title("Home")
		end

	end

	describe "Help Page" do
		
		it "should have the content 'Help'" do
			visit '/static_pages/help'
			expect(page).to have_content('Help')
		end

		it "should have the title 'Help'" do
			visit '/static_pages/help'
			expect(page).to have_title("#{base_title} | Help")
		end

	end

	describe "About Page" do
		
		it "should have the content 'About'" do
			visit '/static_pages/about'
			expect(page).to have_content('About')
		end

		it "should have the title 'About'" do
			visit '/static_pages/about'
			expect(page).to have_title("#{base_title} | About")
		end

	end

	describe "Contact Us" do
	
		it "should have the title 'Contact Us'" do
			visit '/static_pages/contact'
			expect(page).to have_title("#{base_title} | Contact Us")
		end
	end

end
