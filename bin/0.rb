a = [:a, :a]
b = [:b]
c = b * 2 + [:c]

p a * 2 + b * 3
p a + c
p c
p c.count(:b)
p c.compact
hash = Hash.new
c.uniq.each do |i|
	hash[i] = c.count(i)
end
p hash

