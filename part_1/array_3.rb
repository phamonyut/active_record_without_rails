p (1..100).class

p (1..100).select { |i| i % 3 == 0 }

# ArrayList<Integer> result = new ArrayList<Integer>();
# for (int i=0; i<100; i++) {
#   if (i%3 == 0) {
#     result.add(i);
#   }
# }

p [1, 2, 3, 4].inject(0) { |result, element| result + element }