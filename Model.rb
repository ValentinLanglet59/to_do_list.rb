class Task
    
    def initialize(description)
        @description = description
        @done = false
    end
    
    def mark_as_done!
        @done = true
    end

    def description
        return @description
    end

    def done?
        @done
    end

    puts task_1 = Task.new("vaisselle")
    puts task_1.description
end 