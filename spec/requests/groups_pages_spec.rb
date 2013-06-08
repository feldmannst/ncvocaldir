require 'spec_helper'

describe "Group Pages" do
	subject { page }

	describe "new" do
		before { visit newgroup_path }

		let(:submit) { "Create Group" }

		describe "with invalid information" do
			it "should not create group" do
				expect { click_button submit }.not_to change(Group, :count)
			end

			describe "after submission" do
				before { click_button submit }

				it { should have_selector('title', text: 'New Group') }
				it { should have_content('error') }
			end
		end

		describe "with valid information" do
			before do
				fill_in "Name", with: "Group 1"
				fill_in "Location", with: "Raleigh"
				fill_in "Size", with: "Raleigh"
				fill_in "Style", with: "Raleigh"
				fill_in "Bio", with: "Raleigh"
				fill_in "Web Site", with: "Raleigh"
				fill_in "Facebook", with: "Raleigh"
				fill_in "Twitter", with: "Raleigh"
				fill_in "Youtube", with: "Raleigh"
			end

			it "should create group" do
				expect { click_button submit }.to change(Group, :count).by(1)
			end

			describe "after saving the user" do
				before {click_button submit }
				let(:group) {Group.find_by_name('Group 1') }

				it { should have_selector('title', text: group.name ) }
			end
		end
	end
end