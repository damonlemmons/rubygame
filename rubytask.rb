

class Task
 def initialize (title, description)
   @title = title
   @description = description
   @done = false

 end

 def title
   @title
 end

 def setTitle(title)
   @title = title
 end

 def description
   @description
 end

 def setDescription(description)
   @description = description
 end

 def markDone
   @done = true
 end

 def markUnDone
   @done = false
 end

 def getTaskStatus

   if @done
     return "Done"
   else
     return "Undone"
   end
 end

end

# 
# task1 =Task.new("get apples", "red apples only")
#
# p task1
# p "task title is " + task1.title
# p task1.markDone.to_s
# p "setting the task to done, done flag = " + task1.markDone.to_s
# # p "setting the task to undone, done flag = " + task1.markUnDone.to_s
# p task1.getTaskStatus
