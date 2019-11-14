
#Rubyでは?を使った条件分岐(三項演算子)を使うことができる

#式? 真だった場合の処理:偽だった場合の処理
n = 11
n > 10?"10より大きい": "10以下"

#条件分岐した結果を変数に代入もできる。

n = 11
message = n > 10 ? "10より大きい" : "10以下"
puts message
#出力結果　"10より大きい"

#メソッド定義についてもっと詳しく
#Rubyではメソッドを呼び出す際に引数の過不足があるとエラーになる。

def greeting(country)
  if country == "japan"
    "こんにちは"
  else
    "hello"
  end
end

#Rubyではメソッドの引数の数を柔軟に変える方法がある。そのうちの1つがデフォルト値付きの引数
#引数にデフォルト値をつける場合は次のような構文を使う。

# def メソッド(引数1 = デフォルト値1, 引数2 = デフォルト値2)
#　必要な処理
# end

# greetingにデフォルト値を設定する

def greeting(country = "japan")
  if country == "japan"
    "こんにちは"
  else
    "hello"
  end
end

#デフォルト値にjapanが設定されることにより、引数なしでの出力が可能になる。
puts greeting
#出力結果 こんにちは

puts greeting("us")
#出力結果 hello

#デフォルト値付きの引数を使う際は、デフォルト値あり、なしで引数を混在させることも可能。
def default_args(a,b,c = 0, d = 0)
  "a=#{a},b=#{b},c=#{c},d=#{d}"
end

puts default_args(1,2)
#出力結果　a=1,b=2,c=0,d=0
puts default_args(1,2,3)
#出力結果　a=1,b=2,c=3,d=0
puts default_args(1,2,3,4)
#出力結果 a=1,b=2,c=3,d=4

#システム日時や他のメソッドの戻り値をデフォルトに設定する
def foo(time = Time.now, message = bar)
  puts "time: #{time}, message: #{message}"
end

def bar
  "BAR"
end

puts foo
#出力結果 time: 2019-11-14 03:28:42 +0000, message: BAR
puts bar
#出力結果 BAR

#Rubyのメソッド名は?や!で終わらせることができる。?で終わるメソッドは慣習として真偽値を返すメソッドとなる。
#空文字であればtrue, そうでなければfalse

#空文字列であればtrue, そうでなければfalse
puts "".empty?
#出力結果 true
puts "abc".empty?
#出力結果 false

#引数の文字が含まれていればtrue,含まれていなければfalse
puts "watch".include?("at")
#出力結果　true
puts "watch".include?("in")
#出力結果 false

#奇数ならtrue, 偶数ならfalse
puts 1.odd?
#出力結果 true
puts 2.odd?
#出力結果 false

#偶数ならtrue, 奇数ならfalse
puts 1.even?
#出力結果 false
puts 2.even?
#出力結果 true

#オブジェクトがnilであればtrue,そうでなければfalse
puts nil.nil?
#出力結果 true
puts "abc".nil?
#出力結果 false
puts 1.nil?
#出力結果 false

#3の倍数ならtrue,それ以外はfalseを返す
def multiple_of_three?(n)
  n % 3 == 0
end

puts multiple_of_three?(4)
#出力結果 false
puts multiple_of_three?(5)
#出力結果 false
puts multiple_of_three?(6)
#出力結果 true

# !で終わるメソッドは慣習として『使用する際は注意が必要』という意味を持つ。
#例えばStringクラスにはupcaseメソッドとupcase!メソッドという2つのメソッドがある。
#どちらも文字列を大文字にするメソッドであるが、upcaseメソッドは大文字に変えた新しい文字列を返し、呼び出した文字列自身は変化しない。
#それに対し、upcase!メソッド呼び出した文字列自身を大文字、変更する。

a = "ruby"

#upcaseだと変数aの値は小文字のままである。
puts a.upcase
#出力結果 "RUBY"
puts a
#出力結果 "ruby"

#upcase!だと変数aの値も大文字に変わる
puts a.upcase!
#出力結果 "RUBY"
puts a
#出力結果 "RUBY"

# upcase!メソッドのように呼び出したオブジェクトの状態を変更してしまうメソッドを『破壊的メソッド』という。
#!で終わるメソッドは?で終わるメソッドほど慣習的が明確ではない。破壊的メソッドが全て!で終わるかというとそうでない場合もある。
#破壊的メソッドでないメソッド(例えば不正な状態で呼び出すとエラーを発生させるメソッド)に!をつけるときもある。
#何れにしても!で終わるメソッドを見かけたらどんな注意事項があるか,APIドキュメントなどを読んで確認しましょう。
#?で終わるメソッドと同様,!で終わるメソッドも、自身で定義することができる。
#以下は、引数として渡された文字列を逆順に並び替え、さらに大文字に変更する破壊的メソッドを定義している。

def reverse_upcase!(s)
  s.reverse!.upcase!
end

s = "ruby"
puts reverse_upcase!(s)
#出力結果 "YBUR"
puts s
#出力結果 "YBUR"

#メソッド名は?や!で終わることができるが、変数名には!や?を使えない点に注意(エラーになる)

#nil, true, falseは擬似変数と呼ばれる特殊な変数
#擬似変数は文法上、変数のように見えますが、代入しようとするとエラーが発生します。


