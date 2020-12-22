class Backer

    attr_accessor :name


    def initialize(name)
        @name = name 
    end 

    def back_project(project)
        project_backer = ProjectBacker.new(project, self)
    end

    def backers
        ProjectBacker.all.select do |pb|
            pb.backer == self 
        end 
    end

    def backed_projects
        backers.map do |backer|
            backer.project 
        end 
    end 

end 
