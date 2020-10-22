class RoutineSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name
  
  attribute :exercises do |object|
    object.exercises.as_json
  end

  attribute :routine_exercises do |object|
    object.routine_exercises.as_json
  end
end
