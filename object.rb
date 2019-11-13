#文字列は全てStringクラスのオブジェクト
#文字列.classというようにクラスメソッドを呼び出すことでクラス名の確認をすることができる。

"A".class
#出力結果 String

5.class
#出力結果 Integer

# %q! !シングルクオートで囲ったのと同じ意味になる。
puts %q!He said, "Don't speak."!
#出力結果 He said, "Don't speak."

#%Q!!はダブルクオートで囲んだことと同じになる（改行文字や式展開が使える）
something = "Hello."
puts %Q!He said, "#{something}"!
#出力結果　He said, "Hello."

#%!!もダブルクオートで囲んだことと同じになる
something = "Bye"
puts %!He said, "#{something}"!
#出力結果 He said, "Bye"

# ?を区切り文字として使う
puts %q?He said, "Don't speak."?
#出力結果 He said, "Don't speak"

# {}を区切り文字として使う
puts %q{He said, "Don't speak."}
#出力結果 He said, "Don't speak."

#ヒアドキュメント（行指向文字列リテラル）

puts "Line 1, Line 2"
#出力結果 Line 1, Line 2

puts 'Line1, Line 2'


#複数行に渡る長い文章を作成するときはヒアドキュメント（行指向文字列リテラル）を使った方がスッキリ書ける。

#利用例 TEXTという識別子で長い文字列を挟んで、aに代入している。利用例では識別子がTEXTになっているが識別子は自由である。
a = <<TEXT
これはヒアドキュメントです。複数行に渡る長い文字列を作成するのに便利です。
TEXT

puts a
#出力結果　これはヒアドキュメントです。複数行に渡る長い文字列を作成するのに便利です。

#ヒアドキュメントの識別子としてHTMLを使用する場合
<<HTML
<div>
  <img src ="sample.jpg">
</div>
HTML

def some_method
  <<-TEXT
  これはヒアドキュメントです。
  <<-を使うと最後の識別子を最後の識別子をインデントさせることができる。
  TEXT
end

puts some_method
 
def some_method
  <<~TEXT
  これはヒアドキュメントです。
  <<~を使うと内部文字列のインデント部分が無視されます。
  TEXT
end

puts some_method

#ヒアドキュメントの中では式展開が有効である。
name = "Alice"
a = <<TEXT
ようこそ、#{name}さん!
以下のメッセージをご覧ください。
TEXT

puts a

#ヒアドキュメントを直接引数として渡す。(prependは渡された文字列を先頭に追加するメソッド)
a = "Ruby"
a.prepend(<<TEXT)
Java
PHP
TEXT
puts a
# 出力結果
#Java
#PHP
#Ruby

#ヒアドキュメントで作成した文字列に対して、直接upcaseメソッドを呼び出す。
#(upcaseは文字列をすべて大文字にするメソッド)
b = <<TEXT.upcase
Hello,
Good-bye.
TEXT
puts b
#出力結果
# HELLO,
# GOOD-BYE.

#フォーマットを指定して文字列を作成する。
#sprintfメソッドを使えば、指定されたフォーマットの文字列を作成することができる。
 
puts sprintf('%0.3f', 1.2)

#出力結果 1.200

#少し変わった文になるが、"フォーマット文字列 % 表示したいオブジェクト"の形式で書いても同じ結果が得られる。

puts "%0.3f" % 1.2

#出力結果 1.200

#表示したいオブジェクトを複数渡すこともできる。

puts sprintf("%0.3f + %0.3f", 1.2, 0.48)

#出力結果 1.200 + 0.480

puts "%0.3f + %0.3f" % [1.2, 0.48]

#出力結果 1.200 + 0.480

#Rubyでは文字と文字列の違いはない。いずれも文字列(Stringオブジェクト)として扱われる・

#0文字でも文字列
puts "".class
#出力結果 String

#?を使えば一文字だけの文字列を作成することができる・

puts ?A
#出力結果 "A"

#数値についてもっと詳しく

#Aが真か? 真でなければBせよ
def greeting(country)
#countryがnil(またはfalse)ならメッセージを返してメソッドを抜ける
  country or return "countryを入力して下さい"

  if country == "japan"
    "こんにちは"
  else
    "hello"
  end

end

puts greeting(nil)

#出力結果 countryを入力してください

puts greeting("japan")

#出力結果 こんにちは