#3で割り切れる数値を引数に渡すと、“Fizz”を返す。
#5で割り切れる数値を引数に渡すと、“Buzz”を返す。
#15で割り切れる数値を引数に渡すと、“FizzBuzz”を返す。
#それ以外の数値はその数値を文字列に変えて返す。

#まずそれ以外の数値を文字列に返す処理をする。
def fizz_buzz(n)
  n.to_s
end

# puts fizz_buzz(2)
# #出力結果 "2"

#次に3で割り切れる数値を渡されたら、"Fizz"を返すようにします。elseだった場合は数値を文字列に変えて返します。
#if文で条件分岐を用いる。

def fizz_buzz(n)
  if n % 3 == 0
    "Fizz"
  else
    n.to_s
  end
end


# puts fizz_buzz(1)
# #出力結果 "1"
# puts fizz_buzz(2)
# #出力結果 "2"
# puts fizz_buzz(3)
# #出力結果 Fizz

#次は引数に5で割り切れる数値が渡された場合を処理していく。
#上記までで、数値を文字列に返す。3で割り切れる数値はFizzで返すことができているので、elsifを使い5で割り切れた時にBuzzが返るようにする。

def fizz_buzz(n)
  if n % 3 == 0
    "Fizz"
  elsif
    n % 5 == 0
    "Buzz"
  else
    n.to_s
  end
end

# puts fizz_buzz(4)
# #出力結果 "4"
# puts fizz_buzz(5)
# #出力結果 Buzz
# puts fizz_buzz(6)
# #出力結果 Fizz

#最後に15で割り切れる数値を引数で渡した場合の処理をしていく。
#3と5と同じように n % 15 == 0　で計算をしてしまうと、15は3でも5でも割り切れるので、一番上の3で割り切れる数値で真となって,Fizzを返してしまう。
#if分は実行順が上から条件が真になった時点で処理が実行されるので、15を処理の一番上に持っていき、計算すれば良い。

def fizz_buzz(n)
  if n % 15 == 0
    "Fizz_Buzz"
  elsif
    n % 3 == 0
    "Fizz"
  elsif
    n % 5 == 0
    "Buzz"
  else
    n.to_s
  end
end



# puts fizz_buzz(7)
# #出力結果 "7"

# puts fizz_buzz(8)
# #出力結果 "8"

# puts fizz_buzz(9)
# #出力結果 "Fizz"

# puts fizz_buzz(10)
# #出力結果 "Buzz"

# puts fizz_buzz(11)
# #出力結果 11

# puts fizz_buzz(12)
# #出力結果 "12"

# puts fizz_buzz(13)
# #出力結果 "13"

# puts fizz_buzz(14)
# #出力結果 "14"

# puts fizz_buzz(15)
# #出力結果 "15"

