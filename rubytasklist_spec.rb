require 'rspec'
require_relative 'rubytasklist'
require_relative 'rubytask'
require_relative 'duedate'

# Story: As a developer, I can add all of my Tasks to a TaskList.
# Hint: A TaskList has-many Tasks
#


describe "Tasklist" do
  my_tasklist = Tasklist.new("Grocery List")
# due_date_task = DueDateTask.new("walk dog", "take outside", Date.new(2018, 12, 25) )
  taskList1 = Tasklist.new("Testcase 1")

  i = 0

  while i < 8 do
    task = Task.new("task" + i.to_s, "Descript " + i.to_s)

    if (i.to_i.even?)
      task.markDone
    end

    taskList1.addTask(task)
    i += 1
  end

  it "can create a tasklist" do
    expect{my_tasklist}.to_not raise_error
    end

  it "has a title" do
    expect(my_tasklist.title).to be_a String
  end

  it "can add a Task to tasklist" do
    expect(my_tasklist.addTask(Task.new("get","orange")).length).to be > 0
  end

  # Story: As a developer with a TaskList, I can get the completed items.
  #
  # Story: As a developer with a TaskList, I can get the incomplete items.

  it "can get the completed taskList" do
    expect(taskList1.completedTasks.length).to be > 0
  end

  it "can get the incomplete tasks" do
   expect(taskList1.incompleteTasks.length).to be > 0
  end

  it "can add a due date Task to tasklist" do
    walk_dog = DueDateTask.new("walk dog", "take outside", Date.new(2018, 12, 25))
    taskList1.addDueDateTask(walk_dog)
    expect(taskList1.getTaskList.length).to be > 0
  end

  # it "can display undone tasks due today" do
  #   walk_cat = DueDateTask.new("walk cat", "take cat outside", Date.new(2018, 4, 20))
  #   expect(taskList1.addDueDateTask(walk_cat).urgentTasks.length).to eq 1
  # end

end
