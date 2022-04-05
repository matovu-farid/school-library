require_relative 'base_decorator'
class TrimmerDecorator < BaseDecorator
  def correct_name
    if super.length <= 10
      super
    else

      super.chars.take(10).join
    end
  end
end
