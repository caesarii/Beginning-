
-- 创建 talbe
person = {}
person.name = 'caesar'
person['age'] = 12
print(person.name) 
print(person['age'])
print(person.weight) -- nil

-- 遍历 table
arr = {}
for i = 1, 10 do
	arr[i] = i * i
end

-- # 长度操作符
for i = 1, #arr do
	print(arr[i])
end