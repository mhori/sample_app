require 'spec_helper'

describe "StaticPages" do

   


   subject { page }

   it "should have the right links on the layout" do
    visit root_path
    click_link "About"
    expect(page).to have_title(full_title('About Us'))
    click_link "Help"
    expect(page).to have_title(full_title('Help'))# ここにコードを記入
    click_link "Contact"
    expect(page).to have_title(full_title('Contact'))# ここにコードを記入
    click_link "Home"
    click_link "Sign up now!"
    expect(page).to have_title(full_title('Sign up'))# ここにコードを記入
    click_link "sample app"
    expect(page).to have_title(full_title(''))# ここにコードを記入
  end


   shared_examples_for "all static pages" do

    it { should have_content(heading) }
    it { should have_title(full_title(page_title)) }
  end

  describe "Home page" do
    before { visit root_path }

    it { should have_content ('Sample App') }

    it { should have_title(full_title(''))  }
    it { should_not have_title('| Home') }
    end

  describe "Help page" do

    before { visit help_path }

    it { should have_content('Help') }
    it { should have_title(full_title('Help')) }
    end

    

     describe "About page" do

    before { visit about_path }

    it { should have_content('About') }
    it { should have_title(full_title('About Us')) }
    end



    describe "Contact page" do

    before { visit contact_path }

    it { should have_content('Contact') }
    it { should have_title(full_title('Contact')) }
   end

   
end
