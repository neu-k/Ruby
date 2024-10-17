class C
  def self._singleton
    class << C
      val = self
    end
    val
  end
end

p C._singleton
#=> valをスコープ外から参照しているためNameError
