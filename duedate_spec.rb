require 'rspec'
require_relative 'rubytasklist'
require_relative 'rubytask'
require_relative 'duedate'
require 'date'


describe "DueDateTask" do
  due_date = Date.new(2018, 12, 25)
  due_date_task = DueDateTask.new("title", "description", due_date )

  it "can create a task with a due date" do
    expect{due_date_task}.to_not raise_error
  end

  it "has a date" do

    expect(due_date_task.date).to be_a Date
  end

end


  # Story: As a developer, I can create a DueDateTask, which is-a Task that has-a due date.
  # Hint: Use the built-in Ruby Date class
  #
  # Story: As a developer, I can print an item with a due date with labels and values.
  # Hint: When implementing to_s, use super to call to_s on the super class.
  #
  # Story: As a developer, I can add items with due dates to my TaskList.
  # Hint: Consider keeping items with due dates separate from the other items.
  #
  # Story: As a developer with a TaskList, I can list all the not completed items that are due today.
  #
  # Story: As a developer with a TaskList, I can list all the not completed items in order of due date.
  #
  # Story: As a developer with a TaskList with and without due dates, I can list all the not completed items in order of due date, and then the items without due dates.
