def pet_shop_name(pet_shop)
  return pet_shop[:name]
end

def total_cash(sum)
  return sum[:admin][:total_cash]
end

def add_or_remove_cash(cash, amount)
  return cash[:admin][:total_cash] += amount
end

def pets_sold(pet_shop)
  return pet_shop[:admin][:pets_sold]
end

def increase_pets_sold(pet_shop, increase_amount)
  return pet_shop[:admin][:pets_sold] += increase_amount
end

def stock_count(num_of_pets)
return num_of_pets[:pets].count
end

def pets_by_breed(pet_shop, breed)
  return pet_shop[:pets].select{|pet| pet[:breed] == breed}
end

# def find_pet_by_name(pet_shop, name)
#   return pet_shop[:pets].select{|pet| pet[:name] == name}[0]
# end
#
# def remove_pet_by_name(pet_shop, name)
#   return pet_shop
# end

def find_pet_by_name(shop, pet_name)
  for pet in shop[:pets]
    if pet[:name] == pet_name
      pets = {} && pets = pet
    end
  end
  return pets
end

def remove_pet_by_name(shop, pet_name)
  for pet in shop[:pets]
    if pet[:name] == pet_name
      pets = {} && pets = pet
    end
  end
  shop[:pets].delete(pets)
end

def add_pet_to_stock(pet_stock, pet_add)
  return pet_stock[:pets] << pet_add
end

def customer_pet_count(customer)
  return customer[:pets].count()
end

def add_pet_to_customer(customer, add)
 return customer[:pets].push(add)
end
