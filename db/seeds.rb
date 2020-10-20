# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
RoutineExercise.destroy_all
Routine.destroy_all
Day.destroy_all
User.destroy_all
Exercise.destroy_all



nimr = User.create(name: "nimr", weight: 15)
User.create(name: "Zarro", weight: 14)
tom = User.create(name: "Tom", weight: 18)

run = Exercise.create(name: "running")
swim = Exercise.create(name: "swimming")
Exercise.create(name: "pull-ups")
curls = Exercise.create(name: "curls")

Day.create(user: nimr, exercise: run, date: "2020-10-21", weight: 0, rep: 0, set: 0, distance: 2, time: 20)
Day.create(user: tom, exercise: swim, date: "2020-10-21", weight: 0, rep: 0, set: 0, distance: 2, time: 20)
Day.create(user: nimr, exercise: curls, date: "2020-10-21", weight: 10, rep: 10, set: 5, distance: 0, time: 0)


routine1 =Routine.create(name: "routine1", user: tom)
routine2 =Routine.create(name: "routine2", user: nimr)

routine_exercise1 = RoutineExercise.create(routine: routine1, exercise: run)
routine_exercise2 = RoutineExercise.create(routine: routine2, exercise: swim)