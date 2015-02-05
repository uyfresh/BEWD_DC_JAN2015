class FortuneCookie
  def initialize
    @wrapped = true
    @cracked = false
  end

  def wrapped?
    return @wrapped
  end

  def cracked?
    return @cracked
  end

  def unwrap
    @wrapped = false
  end

  def crack
    if wrapped?
      return "You need to unwrap it first."
    else
      @cracked = true
    end
  end

  def read
    if wrapped?
      return "You need to unwrap it, then crack it."
    elsif !cracked?
      return "You still need to crack it!"
    else
      return "The OO is strong with you."
    end
  end
end
