FactoryGirl.define do
  factory :song do
    name          { Faker::Name.name}
    album         { Faker::Name.name }
    release_date  { Faker::Date }
  end
end
