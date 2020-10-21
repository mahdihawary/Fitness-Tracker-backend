class DaySerializer
  include FastJsonapi::ObjectSerializer
  attributes :date, :weight, :rep, :set, :distance, :time

end
