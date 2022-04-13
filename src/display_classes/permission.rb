require_relative 'default'
class Permission
  def initialize(input)
    @input = input.downcase
  end

  def get
    case @input
    when 'n'
      false
    else
      true
    end
  end
end
