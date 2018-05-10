Rails.application.routes.draw do

	resources :categories do
		resources :subcategories
	end

	resources :listings

	root 'categories#index'

	match '/help', 			to: 'pages#help', 		via: :get
	match '/scams', 		to: 'pages#scams', 		via: :get
	match '/personal', 	to: 'pages#personal', via: :get
	match '/terms', 		to: 'pages#terms', 		via: :get
	match '/policy', 		to: 'pages#policy', 	via: :get
	match '/about', 		to: 'pages#about', 		via: :get
	match '/contact', 	to: 'pages#contact', 	via: :get
	match '/subcategories/find_by_category', 	to: 'subcategories#find_by_category', 	via: :post


end
