require_relative 'rubytask'
require_relative 'duedate'
require 'date'

class Tasklist

 def initialize (title)
   @title = title
   @taskList = []
 end

 def title
   @title
 end

 def setTitle(title)
   @title = title
 end

 def addTask (task)
   @taskList << task
 end

 def addDueDateTask (task)
   @taskList << task
 end

 def getTaskList
   @taskList
 end

 def completedTasks
   completedTask = @taskList.select do |task|
       task.getTaskStatus == "Done"
   end
 end

 def incompleteTasks
    returnArray = @taskList.select do |task|
      task.getTaskStatus == "Undone"
    end
  end

  def urgentTasks
    returnArray = @taskList.select do |task|
      task.getTaskStatus == "Undone" && task.date == Date.today
    end
  end

  # urgentArray
end

taskList1 = Tasklist.new("Testcase 1")

i = 0

while i < 5 do
  task = Task.new("task" + i.to_s, "Descript " + i.to_s)

  if (i.to_i.even?)
    task.markDone
  end

  taskList1.addTask(task)
  i += 1
end

walk_dog = DueDateTask.new("walk dog", "take outside", Date.new(2018, 12, 25))
taskList1.addDueDateTask(walk_dog)
p "===================================="
p taskList1

walk_cat = DueDateTask.new("walk cat", "take cat outside", Date.new(2018, 4, 20))
taskList1.addDueDateTask(walk_cat)

p taskList1.urgentTasks



# p taskList1.completedTasks
# p "=============================="
# p taskList1.getTaskList
# p "=============================="
# p taskList1.incompleteTasks
# p "++++++++++++++++++++++++++++++"
# p taskList1.getTaskList






# myList = Tasklist.new("myList")
#
# orangeTask = Task.new("orange","buy 5")
# orangeTask.markDone
# appleTask = Task.new("apple","sell 10")
# appleTask.markUnDone
#
# myList.addTask(orangeTask)
# myList.addTask(appleTask)
# p "getTaskList length is " + myList.getTaskList.length.to_s
# p myList.getTaskList
# p myList.completedTasks
