require 'rspec'
require_relative 'rubytasklist'
require_relative 'rubytask'

# Story: As a developer, I can add all of my Tasks to a TaskList.
# Hint: A TaskList has-many Tasks
#
# Story: As a developer with a TaskList, I can get the completed items.
#
# Story: As a developer with a TaskList, I can get the incomplete items.

describe "Tasklist" do
  my_tasklist = Tasklist.new("Grocery List")

  it "can create a tasklist" do
    expect{my_tasklist}.to_not raise_error
    end

  it "has a title" do
    expect(my_tasklist.title).to be_a String
  end

  it "can add a Task to tasklist" do
    expect(my_tasklist.addTask(Task.new("get","orange"))).to have_at_least(1).things
  end
end
