require 'spec_helper'

describe "Pages" do
	include ApplicationHelper
  subject { page }

  shared_examples_for "all pages" do
  	it { should have_selector('h1', text: heading) }
  	it { should have_selector('title', full_title(page_title)) }
  end

  describe "Home page" do
  	before {visit root_path}
  	let(:heading) {'Welcome'}
  	let(:page_title) {''}
  end

  describe "About page" do
  	before {visit about_path }
  	let(:heading) {'About'}
  	let(:page_title) {'About'}
  end

  it "should have the right links on the layout" do
  	visit root_path
  	click_link "About"
  	page.should have_selector 'title', text: full_title("About")
  	click_link "Home"
  	page.should have_selector 'title', text: full_title('')
    click_link "Learn More"
    page.should have_selector 'title', text: full_title("About")
  end
end
