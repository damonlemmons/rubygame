require 'rspec'
require_relative 'rubytask'

# Story: As a developer, I can create a Task.

describe "Task" do
  my_task = Task.new("get oranges", "only orange ones")

  it "can create a task" do
    expect{my_task}.to_not raise_error

  end

  # Story: As a developer, I can give a Task a title and retrieve it.


  it "has a title" do
    expect(my_task.title).to be_a String
  end

  # Story: As a developer, I can give a Task a description and retrieve it.

  it "has a description" do
    expect(my_task.description).to be_a String

  end

  # Story: As a developer, I can mark a Task done.
  it "can mark a Task done" do
    expect(my_task.markDone).to be true
  end


  # Story: As a developer, when I print a Task that is done, its status is shown.
  it "can show the current status" do
    expect(my_task.getTaskStatus).to be_a String
  end

end
