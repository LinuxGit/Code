class Compute
  def initialize(id, data_source)
    @id = id
    @data_source = data_source
    @data_source.methods.grep(/^grep_(.*)_info$/) { Compute.define_component $1 }
  end

  def self.define_compoent(name)
    define_method(name) do
      info  = @data_source.send "get_#{name}_info", @id
      price = @data_source.send "get_#{name}_price", @id
      result = "#{name.capitalize}: #{info} ($#{price})"
      return "* #{result}" if price > 100
      result
    end
  end
end