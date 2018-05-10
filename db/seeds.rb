 # This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

community_category = Category.where(name: 'community').first_or_create(name: 'community')
Subcategory.where(name: 'activities', category_id: community_category.id).first_or_create(name: 'activities', category_id: community_category.id)
Subcategory.where(name: 'classes', category_id: community_category.id).first_or_create(name: 'classes', category_id: community_category.id)
Subcategory.where(name: 'events', category_id: community_category.id).first_or_create(name: 'events', category_id: community_category.id)

serices_category = Category.where(name: 'services').first_or_create(name: 'services')
Subcategory.where(name: 'beauty', category_id: serices_category.id).first_or_create(name: 'beauty', category_id: serices_category.id)
Subcategory.where(name: 'creative', category_id: serices_category.id).first_or_create(name: 'creative', category_id: serices_category.id)
Subcategory.where(name: 'pet', category_id: serices_category.id).first_or_create(name: 'pet', category_id: serices_category.id)

housing_category = Category.where(name: 'housing').first_or_create(name: 'housing')
Subcategory.where(name: 'housing wanted', category_id: housing_category.id).first_or_create(name: 'housing wanted', category_id: housing_category.id)
Subcategory.where(name: 'office', category_id: housing_category.id).first_or_create(name: 'office', category_id: housing_category.id)
Subcategory.where(name: 'rooms', category_id: housing_category.id).first_or_create(name: 'rooms', category_id: housing_category.id)


personals_category = Category.where(name: 'personals').first_or_create(name: 'personals')
Subcategory.where(name: 'bikes', category_id: personals_category.id).first_or_create(name: 'bikes', category_id: personals_category.id)
Subcategory.where(name: 'garden', category_id: personals_category.id).first_or_create(name: 'garden', category_id: personals_category.id)
Subcategory.where(name: 'computer', category_id: personals_category.id).first_or_create(name: 'computer', category_id: personals_category.id)

for_sale_category = Category.where(name: 'for sale').first_or_create(name: 'for sale')
Subcategory.where(name: 'auto parts', category_id: for_sale_category.id).first_or_create(name: 'auto parts', category_id: for_sale_category.id)
Subcategory.where(name: 'books', category_id: for_sale_category.id).first_or_create(name: 'books', category_id: for_sale_category.id)
Subcategory.where(name: 'boats', category_id: for_sale_category.id).first_or_create(name: 'boats', category_id: for_sale_category.id)

jobs_category = Category.where(name: 'jobs').first_or_create(name: 'jobs')
Subcategory.where(name: 'workers', category_id: jobs_category.id).first_or_create(name: 'workers', category_id: jobs_category.id)
Subcategory.where(name: 'IT', category_id: jobs_category.id).first_or_create(name: 'IT', category_id: jobs_category.id)
Subcategory.where(name: 'finance', category_id: jobs_category.id).first_or_create(name: 'finance', category_id: jobs_category.id)
