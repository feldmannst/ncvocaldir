FactoryGirl.define do
  factory :group do
    sequence(:name)  { |n| "Group #{n}" }
    location "Raleigh/Durham"
    size "Medium"
    style "Contemporary"
    bio "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec sollicitudin arcu ligula, in adipiscing lorem laoreet ac. 
    		 Mauris vehicula nunc varius ipsum elementum varius. Duis eleifend eros at urna adipiscing laoreet. Donec tincidunt sagittis 
    		 libero, eget scelerisque felis consequat eu. Duis rhoncus neque eu justo elementum hendrerit. Cras eros sapien."
    sequence(:weburl) {|n| "www.website#{n}.com"}
    sequence(:fburl) {|n| "www.facebook.com/user#{n}"}
    sequence(:twitterur;) {|n| "www.twitter.com/user#{n}"}
    sequence(:youtubeurl) {|n| "www.youtube.com/user#{n}"}
  end
end