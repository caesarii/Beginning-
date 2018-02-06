print('variable arguments')

function add(...)
	local s = 0
	for i, v in ipairs{...} do
		s = s + v
	end
	return s
end

print('sum', add(1, 2, 3, 4))