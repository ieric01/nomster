FactoryGirl.define do 
	factory :user do 
		sequence :email do |i|
			"nomster_user#{i}@gmail.com"
		end
		password "bdaycake11"
		password_confirmation "bdaycake11"
	end
end