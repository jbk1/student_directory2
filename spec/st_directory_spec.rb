require 'st_directory.rb'


describe "creating students" do

  it "with name, cohort and year" do
  	student = {name: 'John', cohort: :may, year: 2014}
  	expect(new_student('John', :may, 2014)).to eq student
	end

  it "with a different name, cohort and year" do
  	student = {name: 'Dave', cohort: :may, year: 2014}
  	expect(new_student('Dave', :may, 2014)).to eq student
	end

  it "with a name, different cohort and year" do
  	student = {name: 'John', cohort: :april, year: 2014}
  	expect(new_student('John', :april, 2014)).to eq student
	end

  it "with a name, cohort and different year" do
  	student = {name: 'John', cohort: :april, year: 2013}
  	expect(new_student('John', :april, 2013)).to eq student
	end
end

describe "creating a student directory" do
	