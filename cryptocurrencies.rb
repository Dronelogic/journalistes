


# Associe chaque devise à son montant pour obtenir un hash du genre :
def associated_value_name(names, values)
  return Hash[names.zip(values.map {|i| i.to_f})]
end

# La ou les crypto qui ont la plus grosse valeur.
def get_big_value(hash_of_crypto)
  big_value =  hash_of_crypto.values.sort[-1]
  winner = hash_of_crypto.select { |key, value| value == big_value}
  puts "La ou les crypto qui ont la plus grosse valeur sont :"
  if winner.length == 1
    puts "#{winner.keys[0]} qui a la valeur #{winner.values[0]}"
  else 
    for i in 0...winner.length
      puts "#{winner.keys[i]} qui a la valeur #{winner.values[i]}"
    end
  end
end


# La ou les crypto qui ont la plus petite valeur.
def get_the_small_value(hash_of_crypto)
  small_value =  hash_of_crypto.values.sort[0]
  winner = hash_of_crypto.select { |key, value| value == small_value}
  puts "La ou les crypto qui ont la valeur la plus petite sont :"
  if winner.length == 1
    puts "#{winner.keys[0]} qui a la valeur #{winner.values[0]}"
  else 
    for i in 0...winner.length
      puts "#{winner.keys[i]} qui a la valeur #{winner.values[i]}"
    end
  end
end

# Les devises dont le cours est inférieur à 6000
def get_all_currencies_less_than(hash_of_crypto)
  limit = 6000
  winners = hash_of_crypto.select { |key, value| value < limit}
  puts "Il y a #{winners.length} cryptocurrencies dont la valeur est inférieur à 6000"
  sleep 2
  puts "Les voici :"
  for i in 0...winners.length
    puts "#{winners.keys[i]} qui a la valeur #{winners.values[i]}"
  end
end
# La devise la plus chère parmi celles dont le cours est inférieur à 6000.
def get_the_expensive_currencie(hash_of_crypto)
  limit = 6000
  hash_under = hash_of_crypto.select { |key, value| value < limit}
  winner = hash_under.select { |key, value| value == hash_under.values.max}
  puts "La devise qui est la plus chère est '#{winner.keys[0]}' dont la valeur est '#{winner.values[0]}'"

end
