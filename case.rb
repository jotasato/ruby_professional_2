#case文

#複数の条件を指定する場合はelsifよりcase文を用いた方がシンプルになる。

# case 対象のオブジェクトや式

# when 値1
#   #値1に一致する場合の処理
# when 値2
#   #値2に一致する場合の処理
# when 値3
#   #値3に一致する場合の処理
# else
#   #どれにも一致しない場合の処理
# end


# case文を使う場合
country = "italy"

case country 
when "japan"
  "こんにちは"
when "us"
  "Hello"
when "italy"
  "ciao"
else
  "???"
end

puts country
#出力結果 "italy"

# Rubyのcase文ではwhen節に複数の値を指定し、どれかに一致すれば処理を実行する、という条件分岐を書くことができる。

#when節に複数の値を指定する。

country = "アメリカ"
case country
when "japan", "日本"
 "こんにちは"
when "us", "アメリカ"
    "hello"
when "italy", "イタリア"
  "ciao"
else
  "???"
end

puts country
#出力結果アメリカ

country = 'アメリカ'
case country 
when'japan','日本'
  'こんにちは'
when'us','アメリカ'
  'hello'
when'italy','イタリア'
  'ciao'
else'???'
end

puts country

#when節の後ろにはthenを入れることができ、thenを入れたらwhen節とその条件が真だった場合の処理を1行で書くことができる

country = "italy"

case country

when "japan" then "こんにちは"

when "us" then "Hello"

when "italy" then "hello"

else

  "???"

end

puts country
#出力結果  "italy"

