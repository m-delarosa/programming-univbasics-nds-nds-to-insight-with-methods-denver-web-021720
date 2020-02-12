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

def total_value_of_spinner(nds, row_index, column_index)
  coordinate_total = 0
  inner_len = nds[row_index][column_index].length
  inner_index = 0
  while inner_index < inner_len do
    coordinate_total += nds[row_index][column_index][inner_index][:price]
    inner_index += 1
  end
  p coordinate_total
end

# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }
def directors_totals(nds)
  result = {}
  nil
end
