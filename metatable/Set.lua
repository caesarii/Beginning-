print('Set.lua')

-- 元表
local metatableSet = {}
metatableSet.max = function(set)
	local max = set[1] 
	print('max', max)
	for key, value in ipairs(set) do
		print(key, value)
		if value > max then
			max = value
		end
	end
	return max
end

Set = {}
Set.new = function(list)
	local set = {}
	setmetatable(set, metatableSet)
	for _, v in ipairs(list) do
		set[v] = true
	end
	return set
end

Set.union = function(a, b) 
	local result = Set.new({})
	for key in pairs(a) do
		result[key] = true
	end
	for key in pairs(b) do
		result[key] = true
	end
	return result
end

Set.intersection = function(a, b) 
	local result = Set.new({})
	for key in pairs(a) do
		result[key] = b[key]
	end
	return result
end

Set.toString = function(set) 
	local list = {}
	for key in pairs(set) do
		local length = #list
		list[length + 1] = key
	end
	return "{"..table.concat(list, ", ").."}"
end

Set.print = function(set)
	print(Set.toString(set))
end

-- 元方法
metatableSet.__add = Set.union
metatableSet.__mul = Set.intersection 

s1 = Set.new({3, 4, 5})
s2 = Set.new({1, 2, 3})
-- 具有相同的 元表
print(getmetatable(s1))
print(getmetatable(s2))

-- 并集
-- union = Set.union(s1, s2)
union = s1 + s2
Set.print(union)
 -- 交集
 -- inter = Set.intersection(s1, s2)
 inter = s1 * s2
 Set.print(inter)

 -- 自定义元方法
 local max = metatableSet.max(s1)
 print('max', max)

