FactoryGirl.define do
  factory :user do
    first_name 'Scooby'
    last_name  'Doo'
    phone_number  { 3038675309 }
    email 'this@that.com'
    password '666666'
  end
end
