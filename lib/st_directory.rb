def create_student(name, cohort, year)
	return {name: name, cohort: cohort, year: year}
end

def student_list
	@list ||= []
end

def add_student(student)
	student_list << student
end

# Problem here whilst trying to genericise the method?
def replace_a_hash_value_for(student, hash_key)
	student[] = hash_key
end
# surely we should de-limit this from just year?
def replaces_attribute_with_NA_for(student, hash_key)
	empty = "N/A"
	student[hash_key] = empty
end



