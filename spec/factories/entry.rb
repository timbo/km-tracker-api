FactoryGirl.define do
  factory :entry do
    distance 12.3
    date Time.now.strftime('%Y-%m-%d')
  end
end
