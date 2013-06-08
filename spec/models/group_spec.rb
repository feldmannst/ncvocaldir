require 'spec_helper'

describe "Groups" do

	before do
		@group = Group.new(name: "Group 1", location: "Raleigh/Durham", size: "Small", style: "Contemporary", bio: "Bio 1",
											 weburl: "www.testsite1.com", fburl: "facebook.com/test", twitterurl: "twitter.com/test", youtubeurl: "youtube.com/test")
	end

	subject { @group }

	it { should respond_to(:name) }
	it { should respond_to(:location) }
	it { should respond_to(:size) }
	it { should respond_to(:style) }
	it { should respond_to(:bio) }
	it { should respond_to(:weburl) }
	it { should respond_to(:fburl) }
	it { should respond_to(:twitterurl) }
	it { should respond_to(:youtubeurl) }
  
  it { should be_valid }

  describe "when name is not present" do
  	before { @group.name = ''}
  	it { should_not be_valid }
  end

  describe "when location is not present" do
  	before { @group.location = ''}
  	it { should_not be_valid }
  end
end
