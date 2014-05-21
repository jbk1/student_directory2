def create_student(name, cohort, year)
	return {name: name, cohort: cohort, year: year}
end


def student_list
	@list ||= []
end

def add_student(student)
	student_list << student
end

# def new_student(name, cohort, year)
# 	return {cohort: cohort, year: year, name: name}
# end     
