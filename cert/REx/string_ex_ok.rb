module StringEx
  refine String.singleton_class do
    def homu
      "homu"
    end
  end
end

module M
  using StringEx
  p String.homu
end

module M2
  # p String.homu     => undefined method
end
