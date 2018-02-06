print('generic-for.lua')
person = {}
person.name = 'qinghe'
person.age = 13
-- pairs 迭代对象
for key, value in pairs(person) do
	print(key, value)
end

-- ipair 迭代数组
arr = {'one', 'two', 'three'}
for index, value in ipairs(arr) do
	print(index, value)
end

-- 数组值的迭代器
function values(arr) 
	local i = 0
	return function ()
		i = i + 1
		return arr[i]
	end
end

for val in values(arr) do
	print(val)
end