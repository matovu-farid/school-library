require_relative 'base_decorator'
class Corrector < BaseDecorator
  def correct_name
    super.upcase
  end
end
