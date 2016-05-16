FactoryGirl.define do
	sequence(:email) { |n| "user#{n}@example.com" }
  factory :admin, class: User do
    email
    password "123456"   
    first_name "James"
    last_name "Example" 
    admin true    
  end
end