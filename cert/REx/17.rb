m = Module.new

CONST = "Constant in Toplevel"

_proc = Proc.new do
  CONST = "Constant in Proc"
end

m.instance_eval(<<-EOS)
  CONST = "Constant in Module instance"

  def const
    CONST
  end
EOS

m.module_eval(&_proc)
# module_evalにブロックを渡しているため、スコープはこの箇所＝トップレベルになり再定義の警告が出る

p m.const   # つまり、定数探索に関する問題
