class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  get '/categories' do
    category = Category.all.order(:id)
    category.to_json(include: :items)
  end
  get '/categories/:id' do
    category = Category.find(params[:id])
    category.to_json(include: :items)
  end
  get '/items' do 
    items = Item.all.order(:category_id)
    items.to_json
  end
  get '/items/:id' do 
    items = Item.find(params[:id])
    items.to_json
  end
  get '/appetizers' do
    appetizers = Category.find(1).items.order(:name)
    appetizers.to_json 
  end
  get '/entrees' do
    entrees = Category.find(2).items.order(:name)
    entrees.to_json
  end
  get '/desserts' do
    desserts = Category.find(3).items.order(:name)
    desserts.to_json
  end

  get '/specials' do
    specials= Item.where(daily_special: true)
    specials.to_json
  end

  get '/reviews' do 
    reviews = Review.all  
    reviews.to_json
  end
  get '/favorites' do
    favorites = Favorite.all
    favorites.to_json
  end
  delete '/favorites/:id' do
    favorites = Favorite.find(params[:id])
    favorites.destroy
    favorites.to_json
    end

    post '/favorites' do
      favorite = Favorite.create(
        name: params[:name],
        description: params[:description],
        price: params[:price],
        image_url: params[:image_url],
        category_id: params[:category_id]
      )
      favorite.to_json
    end

  delete '/reviews/:id' do
    review = Item.find(params[:id])
    review.destroy
    review.to_json
    end

    post '/reviews' do
      review = Review.create(
        name: params[:name],
        phone_number: params[:phone_number],
        email: params[:email],
        comment:params[:comment]
      )
      review.to_json
    end

    patch '/reviews/:id' do
      review = Review.find(params[:id])
      review.update(comment: params[:comment]
      )
      review.to_json
    end

  

end
