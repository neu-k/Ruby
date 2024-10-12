class Oya
  @var = 1        # これはクラスインスタンス変数

  def var=(arg)    # インスタンス変数のセッター
    @var = arg
  end

  def var         # インスタンス変数のゲッター
    @var
  end
end

class Ko < Oya
end



p Ko.instance_methods.include? :var
p Ko.new.methods.include? :var
p Ko.new.var = "This is inherited instance method!!"
