require 'rails_helper'

RSpec.feature "Visitor checks out product", type: :feature, js: true do

  # SETUP
  before :each do
    10.times do |n|
      Product.create!(
    name:  Faker::Hipster.sentence(3),
    description: Faker::Hipster.paragraph(4),
    image: open_asset('apparel1.jpg'),
    quantity: 10,
    price: 64.99,
    category: "fresh prince"
  )
    end
  end

  scenario "They see all products" do
    # ACT
    visit root_path

    # DEBUG
    save_screenshot

    # VERIFY
    expect(page).to have_css 'article.product'
  end
end
