# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

project = Project.create(name:"Timetracking app")
project.time_entries.create(hours:6)



Project.create(name: "Crazy project", description: "You won't believe it")
Project.create(name: "Another project", description: "So much to say")
Project.create(name: "Life in Barcelona")
Project.create(name: "Today", description: "Today is Tuesday")
Project.create(name: "Tomorrow", description: "Tomorrow is Wednesday")
Project.create(name: "Day after tomorrow", description: "Day after tomorrow is Thursday")
Project.create(name: "Lunch", description: "I'm hungry, let's have lunch")


# another_project = Project.create(name:"Craziest project", description:"Really really crazy")
# TimeEntry.create(hours:6).project = another_project

# TimeEntry.create(hours:4, project_id:2)
