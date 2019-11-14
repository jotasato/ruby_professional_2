# unless文・・・ifと反対の意味を持つ。条件式が偽になった時だ処理を実行。ifで否定の条件を書いているときは、unless文に書き換えできる。

status = "error"
if status != "ok"
  "何か異常があります"
end

status = "error"
unless status == "ok"
  "何か異常があります"
end

status = "ok"
unless status == "ok"
  "何か異常があります"
else
  "正常です"
end

#if文のelsifに相当するものはない

#unlessはifと同様、unlessの戻り値を直接変数に代入したり、修飾子として文の後ろに置いたりできる。

status = "error"

#unlessの結果を変数に代入する
message =
  unless status == "ok"
    "何か異常があります"
  else
    "正常です"
  end

puts message
#出力結果　何か異常があります

#unlessを修飾子として使う
"何か異常があります" unless status == "ok"

#thenも使える

status = "error"
unless status == "ok" then
  "何か異常があります"
end
