v1 = 1
class MyClass
  v2 = 2
  def my_method
    v3 = 3
    p local_variables
  end
  p local_variables
end

obj = MyClass.new
obj.my_method
p local_variables