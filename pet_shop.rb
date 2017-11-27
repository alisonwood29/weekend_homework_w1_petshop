def pet_shop_name(pet_shop)
  return pet_shop[:name]
end

def total_cash(pet_shop)
  return pet_shop[:admin][:total_cash]
end

def add_or_remove_cash(pet_shop, cash_amount)
  pet_shop[:admin][:total_cash] += cash_amount
end

def pets_sold(pet_shop)
  pet_shop[:admin][:pets_sold]
end

def increase_pets_sold(pet_shop, number_of_pets_sold)
  pet_shop[:admin][:pets_sold] += number_of_pets_sold
end

def stock_count(pet_shop)
  return pet_shop[:pets].length()
end

def pets_by_breed(pet_shop, pet_breed)
  pets_by_breed = []
  for pet in pet_shop[:pets]
    if pet[:breed] == pet_breed
      pets_by_breed.push(pet)
    end
  end
  return pets_by_breed
end

def find_pet_by_name(pet_shop, pet_name)
  for pet in pet_shop[:pets]
    if pet[:name] == pet_name
      return pet
    end
  end
  return nil
end

def remove_pet_by_name(pet_shop, pet_name)
  pets_array = pet_shop[:pets]
  for pet in pets_array
    if pet[:name] == pet_name
       pets_array.delete(pet)
    end
  end
end

def add_pet_to_stock(pet_shop, new_pet)
  pet_shop[:pets].push(new_pet)
end

def customer_pet_count(customer)
  return customer[:pets].count
end

def add_pet_to_customer(customer, new_pet)
  customer[:pets].push(new_pet)
end

def customer_can_afford_pet(customer, new_pet)
  if new_pet[:price] > customer[:cash]
    return false
  end
  return true
end

def sell_pet_to_customer(pet_shop, pet, customer)
#if pet not found, immediately comes out of the function
return if (pet == nil)
#if the customer can't afford pet will return false and exit the fuction
return if !(customer_can_afford_pet(customer, pet))
#add pet to customer
add_pet_to_customer(customer, pet)
#add pet to pet shop pets sold total
increase_pets_sold(pet_shop, 1)
#remove pet from pets array
remove_pet_by_name(pet_shop, pet[:name])
#add pet price to pet shop total cash
add_or_remove_cash(pet_shop, pet[:price])

end
