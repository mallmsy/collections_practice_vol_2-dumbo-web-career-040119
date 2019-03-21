require 'pry'

def begins_with_r(tools)
  tools.all? { |word| word.start_with?("r") }
  end


def contain_a(words_arr)
  words_with_a = []
  words_arr.each do |word|
    if word.include? "a"
      words_with_a << word
    end
  end
  words_with_a
end


def first_wa(words_arr)
  words_arr.each do |word|
    if word.to_s.start_with?("wa")
      return word.to_s
    end
  end
end


def remove_non_strings(words_arr)
  words_arr.keep_if { |word| (word.is_a? String) }
end

def count_elements(words_arr)
  words_arr.group_by(&:itself).map { |k, v| k.merge(count: v.length)}
  end


def merge_data(arr1, arr2)
  merge_one = {}
  merge_two = {}
  final_return = []
  arr2.each do |h|
    h.each do |k, v|
      if k == "blake"
        merge_one = arr1[0].merge(v)
      else
        merge_two = arr1[1].merge(v)
      end
    end
  end
  final_return << merge_one << merge_two
end


def find_cool(arr)
  arr.each do |h|
    h.each do |k, v|
      if v == "cool"
        return [h]
      end
    end
  end
end


def organize_schools(school_list)
  organized_hash = {}
  school_list.each do |school, h|
    h.each do |k, v|
      if !organized_hash[h[k]]
        organized_hash[h[k]] = [school]
      else
        organized_hash[h[k]] << school
      end
    end
  end
  organized_hash
end
