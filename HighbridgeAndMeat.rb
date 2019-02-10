#用意したお肉の枚数を入力する
print "焼きたいお肉は何枚？（数字だけ入力してね）>"

#お肉を整数に変換して取得する
inputMeets = gets.to_i

#お肉を入れておく配列Meets
meets = []

#ユーザーが指定した数だけお肉を入れておく(取り皿dish1)
for dish1 in 0..inputMeets
  meets.push(dish1)
end

#お肉が焼きあがる最短時間を初期化
answer = 10000

for dish1 in 0..(2 ** inputMeets)
  #1枚ずつ焼ける台を2台と、どちらの台で焼くか判定するフラグ「bitMeets」を初期化する
  tableA, tableB, bitMeets = 0, 0, inputMeets

  for dish2 in 0..inputMeets

    #Bit 1->tableA, bit 0->tableB
    if bitMeets && 1 == true
      tableA += meets[dish2]
    else
      tableB += meets[dish2]
    end
    
    #Bitを右シフトし、数えた部分を除いていく
    bitMeets >> 1
  end
  
  #最短の焼き上がり時間を取得する
  answer = [answer, [tableA,tableB].max].min

end

#計算が終わったら解答する
puts "焼き上がりは" + answer.to_s + "分です。"

