class View

    def display_tasks(tasks)
        tasks.each_with_index do |task, index|
            done = task.done? ? " [ x ]" : "[ ]"
            puts " #{done} #{index + 1}. #{task.description}"
        end
    end

    def ask_for_description
        puts "Enter a description"
        return gets.chomp
    end

    def ask_user_for_index
        puts "enter a numero"
        print "< "
        return gets.chomp.to_i - 1
    end
end
