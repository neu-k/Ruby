m = Module.new

CONST = "Constant in Toplevel"

_proc = Proc.new do
  CONST = "Constant in Proc"
end

# instance_evelに文字列を渡しているため、スコープはm＝モジュール定義と同じになる
m.instance_eval(<<-EOS)
  CONST = "Constant in Module instance"

  def const
    CONST
  end
EOS

# module_evalにブロックを渡しているため、スコープはこの箇所＝トップレベルになり再定義の警告が出る
m.module_eval(&_proc)


p m.const
