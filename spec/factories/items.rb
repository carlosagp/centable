# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :item, class: 'Item' do
    name        "Simple Item"
    price_cents 1199
    cost_cents  900
  end
end
