print('closure.lua')

names = {'peter', 'paul', 'mary'}
grades = {mary = 10, paul = 7, peter = 8}

function sortByGrade(names, grades)
	-- grades 对于匿名函数而言是非局部变量
	table.sort(names, function (n1, n2)
			return grades[n1] > grades[n2]
	end)
end

sortByGrade(names, grades)
print(names)


function newCounter()
	local i = 0
	-- 该匿名函数是闭包
	return function()
		i = i + 1
		return i 
	end
end

counter1 = newCounter()
print(counter1())
print(counter1())

-- counter2 是不同于 counter1 的另一个闭包, 所以计数是独立的
counter2 = newCounter()
print(counter2())

