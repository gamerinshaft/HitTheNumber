def input
  loop do
    puts("三桁の異なる数字を入力してください")
    numbers = gets.chomp
    @num_array = numbers.split("")
    break  if(@num_array.uniq.size == 3)
  end
end
secret = Array.new
array = [0,1,2,3,4,5,6,7,8,9]
array_s = array.shuffle
secret[0],secret[1],secret[2] = array_s


hit, count = 0, 0
while(hit !=3) do
  hit, foul, ball, i = 0, 0 ,0 ,0
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


