class UserSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :weight


  attribute :day_week do |object|
    now = Date.today
    past_week = (now-6)
    object.days.find_all{|day| day.date > past_week}
  end

  attribute :day_month do |object|
    now = Date.today
    past_month = (now-29)
    object.days.find_all{|day| day.date > past_month}
  end

  attribute :cardio_week do |object|
    now = Date.today
    past_week = (now-6)
    object.days.find_all{|day| day.date > past_week}.map{|day|day.exercise}.find_all{|ex| ex.kind == "cardio"}.as_json
  end

  attribute :strength_week do |object|
    now = Date.today
    past_week = (now-6)
    object.days.find_all{|day| day.date > past_week}.map{|day|day.exercise}.find_all{|ex| ex.kind == "strength"}.as_json
  end

  attribute :cardio_month do |object|
    now = Date.today
    past_month = (now-29)
    object.days.find_all{|day| day.date > past_month}.map{|day|day.exercise}.find_all{|ex| ex.kind == "cardio"}.as_json
  end

  attribute :strength_month do |object|
    now = Date.today
    past_month = (now-29)
    object.days.find_all{|day| day.date > past_month}.map{|day|day.exercise}.find_all{|ex| ex.kind == "strength"}.as_json
  end

end
