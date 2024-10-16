module SuperMod
  module BaseMod
    p Module.nesting
  end
end

#=> [SuperMod::BaseMod, SuperMod]
# ネスト情報を内側から返す