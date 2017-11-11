munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

male_hash = munsters.select { |_, v| v["gender"] == "male" }
male_age_sum = 0
male_hash.each do |_, v|
  male_age_sum += v["age"]
end

puts male_age_sum

# Refactored

male_age_sum = 0
munsters.each_value do |stats|
  male_age_sum += stats["age"] if stats['gender'] == 'male'
end

puts male_age_sum
