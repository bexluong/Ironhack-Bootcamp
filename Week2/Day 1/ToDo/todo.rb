require 'pry'

class Task
  attr_reader :content, :id, :completed
  @@current_id = 1

    def initialize(content)
      @content = content
      @id = @@current_id
      @@current_id += 1
      @completed = false
      @created_at = Time.now
      @updated_at = nil
    end

    def complete?
      @completed
    end

    def completed!
      @completed = true
    end

    def make_incomplete!
      @completed = false
    end

    def update_content!(new_content)
    @content.replace(new_content)
    end
end

class TodoList
  attr_reader :tasks
    def initialize
      @tasks = []
    end

    def add_task(task)

      @tasks << task
    end

    def delete_task(id_to_remove)
      @tasks.delete_if { |task| task.id == id_to_remove }
    end

    def find_task_by_id(id_num)
      actual_task = @tasks.find { |task| task.id == id_num }
      actual_task.content
    end
end

@task1 = Task.new("Walk the dog")
@task2 = Task.new("Buy beets")
@todo1 = TodoList.new
@todo1.add_task(@task1)
@todo1.add_task(@task2)

puts @todo1.find_task_by_id(1)
