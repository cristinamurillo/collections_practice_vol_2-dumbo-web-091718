require 'pry' 
def begins_with_r(array)
  counter = 0 
  array.each { |item|
    item.start_with?("r") ? true : counter-=1
  }
  counter < 0 ? false : true 
end

def contain_a(array)
  new_array = array.collect { |item|
    if item.include?("a")
      item  
    end
  }
  new_array.compact 
end

def first_wa(array)
  array.each { |item|
    if item.to_s.start_with?("wa")
      return item 
    end 
  }    
end

def remove_non_strings(array)
  array.delete_if { |item|
   !item.instance_of? String 
  }
end

def count_elements(array)
  final_array = []
  array.each { |element|
    final_array << element.merge({:count => array.count(element)})
  }
  final_array.uniq 
end

def merge_data(keys, data)
  new_array =[]
  data.each { |item|
    keys.each { |name_hash|
        new_array << name_hash.merge(item[name_hash[:first_name]])
     }
  }
  new_array
end

def find_cool(cool)
  cool_hash = cool.collect{ |inner_hash|
    if inner_hash.has_value?("cool")
     inner_hash
    end
  }
  cool_hash.compact
end

def organize_schools(schools)
  location_hash = {}
  schools.each { |school|
    if location_hash.include?(school[1][:location])
      location_hash[school[1][:location]] << school[0]
    else 
     location_hash[school[1][:location]] = [school[0]]
    end 
  }
  location_hash
end
