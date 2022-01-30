class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  get '/category_items' do
    category = Category.all.order(:id)
    category.to_json(include: :items)
  end
  get '/categories' do
    categories = Category.all.order(:id)
    categories.to_json
  end

  get '/items' do 
    items = Item.all.order(:id)
    items.to_json
  end
  get '/popular' do 
    items = Item.all.where(:popular => TRUE)
    items.to_json
  end
  
  get '/items/:id' do 
    items = Item.find(params[:id])
    items.to_json
  end

  get '/specials' do
    current_day= Time.new.strftime("%A")
    special=Item.find_by(special_day: "Monday")
    special.to_json
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
        category_id: params[:category_id],
        item_id: params[:id],
        notes: params[:notes]
      )
      favorite.to_json
    end

    patch '/favorites/:id' do
      favorite_item = Favorite.find(params[:id])
      favorite_item.update(
        notes: params[:notes],
      )
      favorite_item.to_json
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

end
