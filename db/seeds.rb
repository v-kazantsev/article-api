100.times do
  Author.create!(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name
  )
end
10.times do |i|
  Category.create!(
    name: "Category_#{i + 1}"
  )
end
10.times do |i|
  Tag.create!(
    name: "Tag #{i + 1}"
  )
end
100.times do |i|
  Article.create!(
    title: "Title_#{i + 1}",
    subtitle: "Lorem ipsum dolor sit amet",
    body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam in placerat erat, non placerat nibh. In cursus arcu libero, a varius ante ullamcorper a. Donec massa massa, interdum sed ante quis, mattis auctor est. Aenean eleifend congue auctor. Duis a risus ac dui gravida tincidunt. Proin semper egestas hendrerit. Quisque suscipit quam nec est pharetra laoreet. Cras vulputate suscipit ligula eu congue. Nunc nibh lectus, scelerisque id risus eu, pretium mattis justo. Nullam placerat rutrum dapibus. Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
    author_id: rand(1..100),
    category_id: rand(1..10)
  )
end
puts
