require_relative 'rubytask'
require 'date'

class DueDateTask < Task
  def initialize (title, description, date)
    super(title,description)
    @date = date
end

def date
  @date
end

end

due_date = Date.new(2018, 12, 25)
due_date_task = DueDateTask.new("title", "description", due_date )

p due_date_task
