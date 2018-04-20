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

  def due_date
    "#{@title} is due on #{@date}"
  end

end

# due_date = Date.new(2018, 12, 25)
# due_date_task = DueDateTask.new("walk dog", "take outside", Date.new(2018, 12, 25) )
#
# DueDateTask.new("feed the baby", "baby food", )
#
# p due_date_task.due_date
