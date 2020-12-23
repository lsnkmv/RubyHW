# integer
def incr(a)
  a + 1
end

def check_zero(a)
  if a == 0
    true
  else
    false
  end
end

def abs(a)
  a.abs
end

print("integer\n\n")
a = incr(5)

print('incr func when a=5 result=', a)

res = check_zero(0)
print("\ncheck_zero func when a=0 result=", res)
res = check_zero(1)
print("\ncheck_zero func when a=1 result=", res)

res = abs(-10)
print("\nabs func when a=-10 result=", res)
res = abs(10)
print("\nabs func when a=10 result=", res)


# float

def round_to_lower(a)
  a.floor
end

def div_to_arr(a, b)
  (a / b).divmod 1
end

print("\n\nfloat\n\n")
res = round_to_lower(2.678)
print("\nround_to_lower func when a=1.678 result=", res)

res = div_to_arr(18.2, 3.76)
print("\ndiv_to_arr func when a=18.2 b=3.76 result=", res)


# string


def to_lower_case(a)
  a.downcase
end

def next_letter(a)
  ord = a.ord + 1
  ord.chr("UTF-8")
end

def strip_spaces(a)
  a.strip
end

print("\n\nstring\n\n")

res = to_lower_case('Hello WORLD!')
print("\nto_lower_case func when a='Hello WORLD!' result=", res)


res = next_letter('b')
print("\nnext_letter func when a='b' result=", res)

res = strip_spaces('     Test string :)    ')
print("\nstrip_spaces func when a='     Test string :)    ' result=", res)


# array

def delete_elements(arr, element)
  arr.delete(element)
  arr
end

def shuffle_array(arr)
  arr.shuffle
end

def arr_to_string(arr)
  arr.join
end

print("\n\narray\n\n")

res = delete_elements([1, 2, 3, 2, 5], 2)
print("\ndelete_elements func when arr=[1, 2, 3, 2, 5] result=", res)

res = shuffle_array([1, 2, 3, 2, 5])
print("\nshuffle_array func when arr=[1, 2, 3, 2, 5] result=", res)

res = arr_to_string([1, 2, 3, 2, 5])
print("\narr_to_string func when arr=[1, 2, 3, 2, 5] result=", res)


# hash

def check_key(hash, key)
  hash.key?(key)
end

def merge_hashes(hash1, hash2)
  hash1.merge(hash2)
end


print("\n\nhash\n\n")

res = check_key({"key1" => 10, "key2" => 15}, "key1")
print("\ncheck_key func when hash={'key1': 10, 'key2': 15} key='key1' result=", res)
res = check_key({"key1" => 10, "key2" => 15}, "key3")
print("\ncheck_key func when hash={'key1': 10, 'key2': 15} key='key3' result=", res)

res = merge_hashes({"key1" => 10, "key2" => 15}, {"key3" => 13, "key4" => 'abc'})
print("\nmerge_hashes func when hash={'key1' => 10, 'key2' => 15} hash2={'key3' => 13, 'key4' => 'abc'} result=", res)


# range

def max_range_element(rng)
  rng.max
end


print("\n\nrange\n\n")

res = max_range_element(0..132)
print("\nmax_range_element func when rng=0..132 result=", res)


# task 7


print"\n\ntask 7\n\n"

results = [10, 2, 5, 12, 11, 11, 4]
for val, index in results.each_with_index
  print("Index ", index, ": Value ", val, "\n")
end
