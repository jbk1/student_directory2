#  START WITH LOAD DATA
require 'st_directory'

describe "Student directory" do

  context "creating student" do
    it "is an object with 3 attributes" do
      expect(create_student("Mihai", "May", 2014)).to eq ({name: "Mihai", cohort: "May", year: 2014})
    end
  end
# ------------ -----
  context "creating a list of students" do
    
    it "the list is empty before it's populated" do
      expect(student_list).to be_empty
    end

    it "puts a student into the list" do
      james = create_student("James", "May", 2014)
      add_student(james)
      expect(student_list).to eq [james]
    end
  end
# ------------ -----
  context "Editing Students" do

    it "replaces year with a new year" do
      james = create_student("James", "May", 2014)
      replace_student_value(james, :year, 2013)   
      expect(james[:year]).to eq 2013
    end

      it "replaces month with a new month" do
      james = create_student("James", "May", 2014)
      replace_student_value(james, :month, "June")
      expect(james[:month]).to eq "June" 
    end

      it "replaces name with a new name" do
      james = create_student("James", "May", 2014)
      replace_student_value(james, :name, "Dave")
      expect(james[:name]).to eq "Dave"
    end
  end

# ----------- -----
  context "Inputting data" do

    # it "allows a user to create a student" do
    # student = input_student(name, month, year)
    # expect(student).to eq "{name: name, cohort: cohort, year: year}"
    # end

    it "allows a user to enter a student name" do
      # student_name = input_student_name(name)
      # expect(student_name).to eq 
    end
  end
# ------------ -----
  context "Writing to and loading from file" do


    context "Writing to a file" do
    
      it "checks a csv file exists" do
      # looks in a directory, file.open
      # hv content, want to write to file, expects file to have the content.
        expect do
        end
      end


      it "saves data to a file" do
        expect do
        end
      end


    context "Loading to a file" do

      it "loads a file"
        expect do
        end
      end  
  
  end
# ------------ -----

# ------------ -----
end




  # context "editing the student list" do
  #   it "replaces student attributes" do
  #     # 1. Create two example students
  #     # 2. Check that 


    #   james = create_student("James", "May", 2014)
    #   end
    # end     

    #   replace_cohort_value("May", "April")
    #   expect(james[:cohort]).to eq "April"      
    # end

    # it "replaces any student attribute with N/A" do
    #   james = create_student("James", "May", 2014)
    #   replaces_attribute_with_NA_for(james, :year)
    #   expect(james[:year]).to eq "N/A"
    # end





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