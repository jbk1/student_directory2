#  START WITH LOAD DATA
require 'st_directory'

describe "Student directory" do

  context "creating student" do
    it "is an object with 3 attributes" do
      expect(create_student("Mihai", "May", 2014)).to eq ({name: "Mihai", cohort: "May", year: 2014})
    end
  end

  context "creating a list of students" do
    it "the list is empty before it's populated" do
      # expect(student_list).to eq []
      expect(student_list).to be_empty
    end

    it "puts a student into the list" do
      # mihai = create_student("Mihai", "May", 2014)
      james = create_student("James", "May", 2014)
      # add_student(mihai)
      add_student(james)

      expect(student_list).to eq [james]
      # expect(student_list.include?(mihai)).to be_true
      # expect(student_list.include?(james)).to be_true
    end
  end

  context "editing the student list" do

    it "replaces student attributes" do
      james = create_student("James", "May", 2014)
      replace_a_hash_value_for(james, "April")
      expect(james[]).to eq "April"      
    end

    it "replaces any student attribute with N/A" do
      james = create_student("James", "May", 2014)
      replaces_attribute_with_NA_for(james, :year)
      expect(james[:year]).to eq "N/A"
    end




  end






end




# context "display students"

# context "editing student has_a_file"








# require 'st_directory.rb'


# describe "creating students" do

#   it "with name, cohort and year" do
#   	student = {name: 'John', cohort: :may, year: 2014}
#   	expect(new_student('John', :may, 2014)).to eq student 
# 	end

#   it "with a different name, cohort and year" do
#   	student = {name: 'Dave', cohort: :may, year: 2014}
#   	expect(new_student('Dave', :may, 2014)).to eq student
# 	end

#   it "with a name, different cohort and year" do
#   	student = {name: 'John', cohort: :april, year: 2014}
#   	expect(new_student('John', :april, 2014)).to eq student
# 	end

#   it "with a name, cohort and different year" do
#   	student = {name: 'John', cohort: :april, year: 2013}
#   	expect(new_student('John', :april, 2013)).to eq student
# 	end
# end

# describe "creating a student directory" do
# 	