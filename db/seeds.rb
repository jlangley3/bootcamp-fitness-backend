# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'
require 'securerandom'

Exercise.delete_all

curl = Exercise.create(name: "Bicep Curl", muscle_group: "Arms", equipment: "Dumbbell", description: "Stand holding a dumbbell in each hand with your arms hanging by your sides. Ensure your elbows are close to your torso and your palms facing forward. Keeping your upper arms stationary, exhale as you curl the weights up to shoulder level while contracting your biceps")
body_squat = Exercise.create(name: "Body Weight Squat", muscle_group: "Legs", equipment: "None", description: "Set your feet shoulder-width apart, toes slightly turned out. Pull in your lower abs, and keep your eyes forward.
Slowly bend at the knees and drop your hips to lower your body. Keep your heels flat on the floor. 
At the bottom of the exercise pause for a moment and strongly push back up to the starting position, mirroring the descent.")