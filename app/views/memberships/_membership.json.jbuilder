json.extract! membership, :id, :name, :months, :services, :clients_max, :base_discount, :dish_discount, :dishes_max, :no_dishes_max, :price, :created_at, :updated_at
json.url membership_url(membership, format: :json)
