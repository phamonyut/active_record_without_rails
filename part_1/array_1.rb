arr1 = [1,200,'a']
arr2 = [1,200,'a']
p arr1 == arr2

arr = [2,1.3,44,0.5]
p arr.sort

p [10, 20, 30].map { |i| (i*0.1)+i }

p ['b', 'c', 'j'].map { |i| i + 'ox' }

arr = [10, 20, 30]
arr.each_with_index do |a, i|
  arr[i] = (a * 0.1) + a
end
p arr

