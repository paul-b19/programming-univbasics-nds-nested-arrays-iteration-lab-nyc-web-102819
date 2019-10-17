def join_ingredients(src)
  # Given an Array of 2-element Arrays ( [ [food1, food2], [food3, # food4]....[foodN, foodM]]):
  #
  # Build a new Array that contains strings where each pair of foods is
  # inserted into this template:
  #
  # "I love (inner array element 0) and (inner array element 1) on my pizza""
  # As such, there should be a new String for each inner array, or pair
  
  final_ar = []
  row_index = 0
  while row_index < src.count do
    row = src[row_index]
    string = "I love #{row[0]} and #{row[1]} on my pizza"
    final_ar << string
    row_index += 1 
  end
  final_ar
end

def find_greater_pair(src)
  # src will be an array of [ [number1, number2], ... [numberN, numberM] ]
  # Produce a new Array that contains the larger number of each of the pairs
  # that are in the inner Arrays
  
  final_ar = []
  row_index = 0 
  while row_index < src.length do 
    larger_num = nil
    row = src[row_index]
    if row[0] >= row[1]
      larger_num = row[0]
    else
      larger_num = row[1]
    end
    final_ar << larger_num
    row_index += 1 
  end
  final_ar
end

def total_even_pairs(src)
  # src will be an array of [ [number1, number2], ... [numberN, numberM] ]
  # if both numbers in the pair are even, then add both those numbers to the
  # total
  #
  # As a reminder any number % 2 will return 0 or 1. If the result is 0, then
  # the number was even. Review the operator documentation if you've forgotten
  # this!
  
  total = 0 
  row_index = 0
  while row_index < src.size do 
    row = src[row_index]
    if (row[0] % 2 == 0 && row[1] % 2 == 0)
      total += row[0] + row[1]
    end
    row_index += 1 
  end
  total
end
