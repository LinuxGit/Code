require 'test/unit'

class Person; end

def add_checked_attribute(clazz, attribute)
  eval "
    class #{clazz}
      def #{attribute}=(value)
        raise 'Invalid attribute' unless value
        @#{attribute} = value
      end

      def #{attribute}
        @#{attribute}
      end
  end
  "
end

class TestCheckedAttribute < Test::Unit::TestCase
  def setup
    add_checked_attribute(Person, :age)
    @bob = Person.new
  end

  def test_accept_valid_values
    @bob.age = 20
    assert_equal 20, @bob.age
  end

  def test_refuse_nil_value
    assert_raises RuntimeError, 'Invalid attribute' do
      @bob.age = nil
    end
  end

  def test_refuse_false_value
    assert_raise RuntimeError, 'Invalid attribute' do
      @bob.age = false
    end
  end
end
