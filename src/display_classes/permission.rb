require_relative 'default'
class Permission
  def initialize(input)
    @input = input.downcase
  end

  def get
    case @input
    when 'n'
      false
    when 'y'
      true
    else
      Default.new
    end
  end
end
