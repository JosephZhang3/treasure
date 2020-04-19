def say_goodnight(name)
#  return "Good night,"+name;
  #return "Good night,#{name.capitalize}"
  "Good night,#{name.capitalize}"
end

puts say_goodnight("zebulon")

$global_var = "foo"
@instance_var = "bar"

puts "#$global_var,#$instance_var"
