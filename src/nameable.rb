class Nameable
  def correct_name
    raise NotImplementedError, "The method #{__method__} was not implemented"
  end
end
