def pythagorean_triples
  (1..Float::INFINITY).lazy.flat_map {|z|
    (1..z).flat_map {|x|
      (x..z).select {|y|
        x**2 + y**2 == z**2
      }.map {|y|
        [x, y, z]
      }
    }
  }
end
# 最初の10個のピタゴラス数を表示する
p pythagorean_triples.take(10).force # takeはlazyなので、forceが必要です
p pythagorean_triples.first(10)      # firstはeagerです

# 100より小さいピタゴラス数を表示する
# p pythagorean_triples.take_while { |*, z| z < 100 }.force
