FactoryGirl.define do 
	factory :place do 
		name "Dos Toros"
		description "Best Burrito spot"
		address "189 Bedford Ave New York, NY 11211"
		latitude "40.717475"
		longitude "-73.95774"
		association :user
	end
end

