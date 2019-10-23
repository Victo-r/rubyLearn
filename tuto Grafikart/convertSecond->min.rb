def convert_second_min (seconds)
  min = (seconds/60).to_i
  min_sc = seconds%60
  "#{min} minutes et #{min_sc} secondes"
end


puts convert_second_min gets.to_i
