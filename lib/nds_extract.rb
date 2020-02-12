$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'
# require 'pp'
# pp directors_database

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input
def gross_for_director(director_data)
  gross_total = 0
  movie_index = 0

  while movie_index < director_data[:movies].count do
    gross_total += director_data[:movies][movie_index][:worldwide_gross]
    movie_index += 1
  end

  gross_total

end

# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }

def directors_totals(nds)
  result = {}
  director_index = 0

  while director_index < nds.count do
    director_name = nds[director_index][:name]
    result[director_name] = gross_for_director(nds[director_index])
    #I am assigning the key to the directors name in the result hash here and
    #equating the value to the result of my gross_for_director method for a
    #a given director.
    director_index += 1
  end
  result
end
