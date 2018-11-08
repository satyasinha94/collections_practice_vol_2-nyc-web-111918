require 'pry'

def begins_with_r (array)
  array.all? {|i| i[0] == 'r'}
end

def contain_a (array)
  array.find_all { |i| i.include?('a')}
end

def first_wa (array)
  array.find { |i| i[0..1] == 'wa'}
end

def remove_non_strings (array)
  array.delete_if {|i| !i.is_a?(String)}
end

def count_elements (array)
  array.uniq.collect { |name| {:name => name[:name], :count => array.count(name)}}
end

def merge_data (keys, data)
  data[0].values.collect.with_index {|h, i| keys[i].merge(h)}
end

def find_cool (array)
  arr = []
  array.each do |hash|
    hash.each do |key, value|
      if value == 'cool'
        arr << hash
      end
    end
  end
  arr
end

def organize_schools (hash)
  school_by_location = {}
    hash.collect do |school, nested_hash|
      nested_hash.collect do |location, city|
        if school_by_location.key?(city) == false
          school_by_location[city] = [school]
        else
          school_by_location[city] << school
        end
      end
    end
  school_by_location
end
