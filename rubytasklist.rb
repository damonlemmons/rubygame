require_relative 'rubytask'

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

 def getTaskList
   @taskList
 end

end


myList = Tasklist.new("myList")

orangeTask = Task.new("orange","buy 5")

appleTask = Task.new("apple","sell 10")

myList.addTask(orangeTask)
myList.addTask(appleTask)
p "getTaskList length is " + myList.getTaskList.length.to_s
p myList.getTaskList
