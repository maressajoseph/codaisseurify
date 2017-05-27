FactoryGirl.define do
  factory :song do
    name          { Faker::Artist.name}
    album         { Faker::Artist.album }
    release_date  { Faker::Date.year }
  end
end
