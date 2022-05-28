require_relative 'Model'
require_relative 'View'
require_relative 'router'

class Controller
    def initialize(repository)
        @repository = repository
        @view = View.new
    end
    
    def show_list
        display_taskss
    end

    def create
        description = @view.ask_for_description
        task = Task.new(description)
        @repository.add_task(task)
    end

    def mark_as_done
        display_taskss
        index = @view.ask_user_for_index
        task = @repository.find(index)
        task.mark_as_done!
    end

    def destroy
        display_taskss
        index = @view.ask_user_for_index
        @repository.remove(index)
    end

    def display_taskss
        tasks = @repository.all
        @view.display_tasks(tasks)
    end
end