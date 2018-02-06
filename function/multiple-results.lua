print("multiple-results")

function max(a)
	local mi = 1
	local m = a[mi]
	for i, val in ipairs(a) do
		if val > m then
			mi = i
			m = val
		end
	end
	return m, mi
end

a = {8, 10, 23, 13, 5}

-- 多重返回值
m, mi = max(a)
print('m, mi', m, mi)