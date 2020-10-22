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
zarro = User.create(name: "Zarro", weight: 14)
tom = User.create(name: "Tom", weight: 18)

users = [ nimr, zarro, tom ] 

cardio_exercises = ["Running", "Swimming", "Biking", "Eliptical", "Rowing"]

strength_exercises = ["Bench Press", "Squat", "Military Press", "Row", "Dead Lift", "Leg Press", "Curl", "Tricep Extension", "Dumbell Press", "Shrug"]

cardio_exercises.each do |e| 
  Exercise.create(name: e, kind: "cardio")
end

strength_exercises.each do |e| 
  Exercise.create(name: e, kind: "strength")
end

def randDate
  Faker::Date.between(from: '2020-09-23', to: '2020-10-21')
end

def randCardioDistance
  rand(8)
end

def randCardioTime(distance)
  rand(5..10) * distance
end

def randExerciseId 
  rand_exercise = Exercise.all.sample()
end

200.times do 
  distance = randCardioDistance()
  exercise = randExerciseId()
  if exercise.kind == "cardio" 
    Day.create(
      user: users.sample(),
      exercise: exercise,
      date: randDate(),
      weight: 0,
      rep: 0, 
      set: 0,
      distance: distance,
      time: randCardioTime(distance)
    )
  elsif randExerciseId().kind == "strength"
    Day.create(
      user: users.sample(),
      exercise: exercise,
      date: randDate(),
      weight: rand(10..200),
      rep: rand(10), 
      set: rand(6),
      distance: 0,
      time: 0
    )
  end
end

25.times do 
  Routine.create(
    name: Faker::Team.creature,
    user: users.sample()
  )

end

100.times do
  RoutineExercise.create(
    routine: Routine.all.sample(),
    exercise: Exercise.all.sample()
  )
end


# routine_exercise1 = RoutineExercise.create(routine: routine1, exercise: run)
# routine_exercise2 = RoutineExercise.create(routine: routine2, exercise: swim)
# routine_exercise3 = RoutineExercise.create(routine: routine3, exercise: swim)
# routine_exercise4 = RoutineExercise.create(routine: routine3, exercise: curls)
# routine_exercise4 = RoutineExercise.create(routine: routine3, exercise: pull_up)
# routine_exercise2 = RoutineExercise.create(routine: routine2, exercise: pull_up)
