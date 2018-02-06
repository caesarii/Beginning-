print('named arguments')

function rename(arg)
	return arg.new
end

-- 通过 table 实现 命名参数
print('new name', rename({old='old name', new='new name'}))