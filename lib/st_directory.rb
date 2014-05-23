	def create_student(name, cohort, year)
		return {name: name, cohort: cohort, year: year}
	end

	def student_list
		@list ||= []
	end

	def add_student(student)
		student_list << student
	end

# # Problem here whilst trying to genericise the method?
# surely we should de-limit this from just year?

	def replaces_attribute_with_NA_for(student, hash_key)
		empty = "N/A"
		student[hash_key] = empty
	end

	# def replace_student_year(student, new_year)
	# 	student[:year] = new_year
	# end

	# def replace_student_month(student, new_month)
	# 	student[:month] = new_month
	# end

	# def replace_student_name(student, new_name)
	# 	student[:name] = new_name
	# end

# a refactored method of the above three. Tested by the tests within
# the "Editing Students" section of _spec.
	def replace_student_value(student, key_id, new_value)
		student[key_id] = new_value
	end

	def input_student(name, cohort, year)
		puts "Please enter student"
	end

# File.open("filename", 'a+') {|f| f.write("datatowrite\n)}

