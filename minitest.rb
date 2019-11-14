require "minitest/autorun"

class SampleTest < Minitest::Test
  def test_sample
    assert_equal "RUBY", "ruby".upcase
  end
end

# assert_equalメソッドを使って,"ruby".upcaseの実行結果が"RUBY"になることを検証している。

# assert_equalメソッドの使い方(今回の場合だと期待する結果が"RUBY"でテスト対象となる式がruby.upcaseとなる)
# assert_equal 期待する結果, テスト対象となる式

# aとbが等しければパスする
# assert_equal b, a

# aが真であればパスする
# assert a

# aが偽であればパスする
# refute a

# Run options: --seed 40428

# # Running:

# .

# Finished in 0.001100s, 908.9959 runs/s, 908.9959 assertions/s.
# 1 runs, 1 assertions, 0 failures, 0 errors, 0 skips

# (.)の部分がテストの進捗状況。テストが1つなので(.)も一つになっている。
# 0.001100s・・・テスト実行にかかった秒数
# 908.9959 runs/s・・・1秒間に実行できるであろうテストメソッドの件数
# 908.9959 assertions/s ・・・1秒間に実行できるであろう検証メソッドの件数
#最後の行がテストの検証結果のまとめになる。
# 1runs・・・　実行したテストメソッドの件数
# 1 assertions・・・実行した検証メソッドの件数
# 0 failures ・・・検証に失敗したテストメソッドの件数
# 0 errors ・・・検証中にエラーが発生したテストメソッドの件数
# 0 skips ・・・ skipメソッドにより実行をスキップされたテストメソッドの件数

# failuresとerrorsの件数が0であればテストは全部パスしたことになる。

#テストが失敗した場合の実行結果
#わざとcapitalizeメソッド（最初の1文字だけを大文字にするメソッド）を呼ぶ

# def test_sample
# assert_equal'RUBY','ruby'.capitalized
# end

# end

# 1)Failure:<=実行結果が失敗
# SampleTest#test_sample
# [sample_test.rb:5]:<=SampleTestクラスの
# test_sampleメソッド（sample_test.rbの5行目）で
# 失敗した
# Expected:"RUBY"<=期待した結果
# Actual:"Ruby"<=実際の結果

#テストが失敗するとそのテストメソッドはそれ以上実行されない。実行対象のテストメソッドが複数あった場合には、次のテストメソッドの実行に移る。

