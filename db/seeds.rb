# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'
require 'securerandom'

ExerciseWorkout.delete_all
Exercise.delete_all
Workout.delete_all
User.delete_all

a = User.create(name:"Sam", password:"12345")
b = User.create(name:"Bam", password:"12345")
p = User.create(name:"Pam", password:"12345")
j = User.create(name:"Jam", password:"12345")
r = User.create(name:"Ram", password:"12345")
c = User.create(name:"Cam", password:"12345")

curl = Exercise.create(name: "Bicep Curl", muscle_group: "Arms", equipment: "Dumbbell", description: "Stand holding a dumbbell in each hand with your arms hanging by your sides. Ensure your elbows are close to your torso and your palms facing forward. Keeping your upper arms stationary, exhale as you curl the weights up to shoulder level while contracting your biceps")
body_squat = Exercise.create(name: "Body Weight Squat", muscle_group: "Legs", equipment: "None", description: "Set your feet shoulder-width apart, toes slightly turned out. Pull in your lower abs, and keep your eyes forward.
Slowly bend at the knees and drop your hips to lower your body. Keep your heels flat on the floor. 
At the bottom of the exercise pause for a moment and strongly push back up to the starting position, mirroring the descent.")
push_up = Exercise.create(name: "Push Up", muscle_group: "Chest", equipment: "None", description:"Arms straight, plank position, kep body stiff abs and glutes tight. lower body towars the ground, chest should touch the ground forst, and then push away the ground")
cobra = Exercise.create(name: "Cobra Push-Up", muscle_group: "Chest", equipment: "None", description:"DO the cobra")
skull_crushers = Exercise.create(name: "Skull Crushers", muscle_group: "Triceps", equipment: "None", description:"skull crushers")
dead_lift = Exercise.create(name: "Dead Lift", muscle_group: "back", equipment: "Dumbell", description:"DO the cobra")

clean = Exercise.create(name: "Clean", muscle_group: "Back", equipment: "Yes", description:"Arms straight, plank position, kep body stiff abs and glutes tight. lower body towars the ground, chest should touch the ground forst, and then push away the ground")
shoulder_press = Exercise.create(name: "Shoulder Press", muscle_group: "Shoulders", equipment: "None", description:"DO the cobra")
calf_raise = Exercise.create(name: "Calf Raises", muscle_group: "legs", equipment: "None", description:"skull crushers")
front_raise = Exercise.create(name: "Front Raise", muscle_group: "Shoulders", equipment: "Dumbell", description:"DO the cobra")

back = Workout.create(name:"Back Blaster", focus: "Back", work_time: 5, rest_time: 2, rounds: 3, user:j)
butt = Workout.create(name:"Butt Blaster", focus: "Legs", work_time: 4, rest_time: 3, rounds: 2, user:j)
arms = Workout.create(name:"Armed", focus: "Arms", work_time: 3, rest_time: 4, rounds: 1, user:j)
chest = Workout.create(name:"Pecked", focus: "Chest", work_time: 2, rest_time: 5, rounds: 2, user: r)
legs = Workout.create(name:"Leg Day", focus: "Lower Body", work_time: 2, rest_time: 5, rounds: 2, user: r)

e1 = ExerciseWorkout.create(exercise: curl, workout: arms)
e2 = ExerciseWorkout.create(exercise: skull_crushers, workout: arms)
e3 = ExerciseWorkout.create(exercise: cobra, workout: chest)
e4 = ExerciseWorkout.create(exercise: push_up, workout: chest)
e5 = ExerciseWorkout.create(exercise: body_squat, workout: butt)
e6 = ExerciseWorkout.create(exercise: dead_lift, workout: butt)
e7 = ExerciseWorkout.create(exercise: front_raise, workout: arms)
e8 = ExerciseWorkout.create(exercise: calf_raise, workout: legs)
e9 = ExerciseWorkout.create(exercise: clean, workout: legs)
e10 = ExerciseWorkout.create(exercise: body_squat, workout: legs)
e11 = ExerciseWorkout.create(exercise: front_raise, workout: back)
e12 = ExerciseWorkout.create(exercise: calf_raise, workout: back)
e13 = ExerciseWorkout.create(exercise: clean, workout: back)
e14 = ExerciseWorkout.create(exercise: body_squat, workout: back)



