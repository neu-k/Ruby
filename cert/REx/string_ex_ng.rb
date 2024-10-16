module StringEx
  refine String do
    class << self
      def homu
        "homu"
      end
    end
  end
end

using StringEx

# undefined method `homu' for String:Class (NoMethodError)
p String.homu
