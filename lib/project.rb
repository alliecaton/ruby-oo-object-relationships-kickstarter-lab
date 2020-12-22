class Project

    attr_accessor :title


    def initialize(title)
        @title = title 
    end 

    def add_backer(backer)
        project_backer = ProjectBacker.new(self, backer)
    end

    def projects
        ProjectBacker.all.select do |pb|
            pb.project == self 
        end 
    end

    def backers
        projects.map do |project|
            project.backer
        end
    end

end 
