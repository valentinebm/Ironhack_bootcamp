require 'date'

class Task
    attr_reader :content, :id, :created_at
    @@current_id = 1
    def initialize(content, completed = false)
        @content = content
        @id = @@current_id
        @@current_id += 1
        @completed = completed
        @created_at = DateTime.now
    end

    def complete?
      @completed
    end

    def complete!
      @completed = true
    end

    def make_incomplete!
      @completed = false
    end

    def update_content!(new_content)
      @content = new_content
    end

end

class TodoList
    attr_reader :tasks
    def initialize
        @tasks = []
    end

    def add_task(task)
      @tasks.push(task)
    end

    def delete_task(task_id)
      @tasks.delete_if do |task|
        task.id == task_id
      end
      @tasks
    end

    def find_task_by_id(task_id)
      @tasks.select do |task|
        task.id == task_id
          return task.content
      end
    end

    def sort_by_created
      sorted_tasks = @tasks.sort { | task1, task2 |
        task1.created_at <=> task2.created_at }
      sorted_tasks
    end
end


task = Task.new("Buy the milk")
puts task.id
# 1
task2 = Task.new("Wash the car")
puts task2.id
# 2
