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
  pet_shop[:pets].length()
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
  number_of_pets = 0
  for pets in customer[:pets]
    number_of_pets += customer[:pets].length
  end
  return number_of_pets
end
