class Triangle
	def self.echo_type(a, b, c)
		arr = [a, b, c]
		arr.sort!
		if arr[0] + arr[1] <= arr[2] then
			"三角形じゃないです＞＜"
		elsif arr[0] == arr[1] && arr[1] === arr[2] then
			"正三角形ですね！" 
		elsif arr[0] == arr[1] || arr[1] == arr[2] ||  arr[2] == arr[0] then
			"二等辺三角形ですね！" 
		else
			"不等辺三角形ですね！" 
		end
	end
end

if ARGV.size < 3 then
	p "数字を３つ入力してください＞＜"
else
	p Triangle.echo_type(ARGV[0].to_i, ARGV[1].to_i, ARGV[2].to_i)
end
