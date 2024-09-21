require "json"

array = [100, 500, 300, 200, 400]
dumped_array = JSON.dump(array)
p dumped_array
p dumped_array.class
