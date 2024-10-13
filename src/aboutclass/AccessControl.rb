# frozen_string_literal: true

require_relative 'Class'

def test_public_method
  m = Bird.new
  m.public_one("11111")
  m.public_two("22222")
end

def test_protected_method_by_subclass
  m = Chicken.new
  # protected 修饰的方法只能被本类或者本类的子类访问
  m.call_parent_method
end

test_public_method
test_protected_method_by_subclass