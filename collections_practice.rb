# your code goes here

require 'pry'

def begins_with_r(array)
  status = true
  for word in array
    if !word.start_with?("r")
      status = false
    end
  end
  status
end

def contain_a(array)
  new_array = Array.new
  for word in array
    if word.include?("a")
      new_array.push(word)
    end
  end
  new_array
end

def first_wa(array)
  for element in array
    if element.to_s.start_with?("wa")
      return element
    end
  end
end

def remove_non_strings(array)
    i = 0
    size = array.length
    while i < size
      element = array[i]
      if element.class != String
        array.delete(element)
        size -= 1
      else
        i += 1
      end
    end
    array
end

def count_elements(array)
  new_array = Array.new
  i = 0
  while array.length > 0
  #always start from first index, receive count for all similar to first index, delete all similars, and repeat at first index. loops stops after final deletion and array length equals zero.
    new_array.push({:name => array[i][:name], :count => array.count(array[i])})
    array.delete(array[i])
  end
  new_array
end

def merge_data(hash, to_merge)
  to_merge.each do |group, name|
    binding.pry
    name.each do |data|
      binding.pry
      a_hash.each do |hash|
        binding.pry
        if hash[:first_name] == name
          hash << data
        end
      end
    end
  end
  a_hash
end
    
    
    
      
      
  
