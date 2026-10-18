
require "csv"

# Import products and categories from the CSV file.
Product.destroy_all
Category.destroy_all

CSV.foreach(Rails.root.join("db", "products.csv"), headers: true) do |row|
  category_name = row["category"]

  category = Category.find_or_create_by!(name: category_name)

  Product.create!(
    title: row["name"],
    description: row["description"],
    price: row["price"],
    stock_quantity: row["stock quantity"],
    category: category
  )
end

puts "Products and categories imported successfully!"
