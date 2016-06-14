# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
ToDoList2.delete_all

ToDoList2.create!(task_name: 'Grocery shopping', description: 'Shop for food', status: 'Not Yet')
ToDoList2.create!(task_name: 'Workout', description: 'Exercise', status: 'Completed')
ToDoList2.create!(task_name: 'Laundry', description: 'Wash clothes', status: 'In Progress')