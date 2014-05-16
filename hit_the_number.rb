def input
  puts("三桁の数字を入力してください")
  numbers = gets.chomp
  @num_array = numbers.split("")
end
secret = Array.new
rand = Random.new(1234)
secret[0] = Random.rand(10)
secret[1] = Random.rand(10)
secret[2] = Random.rand(10)


hit = 0
count = 0
while(hit !=3) do
  hit = 0
  foul = 0
  ball = 0
  i = 0
  input()
  @num_array.each do |num|
    if(num.to_i == secret[i])
      hit += 1
    elsif(@num_array.include?(secret[i].to_s))
      foul += 1
    else
      ball += 1
    end
    i += 1
  end
  puts "","#{hit}ヒット","#{foul}ファウル","#{ball}ボール",""
  count += 1
end
puts "おめでとうございます#{count}回目で当てる事が出来ました！"


