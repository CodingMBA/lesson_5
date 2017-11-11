def generate_UUID
  characters = []
  (0..9).each { |char| characters << char.to_s }
  ('a'..'f').each { |char| characters << char }
  
  uuid = ""
  sections = [8, 4, 4, 4, 12]
  sections.each_with_index do |section, index|
    section.times { uuid += characters.sample }
    uuid += "-" unless index >= sections.size - 1
  end
  uuid
end

p generate_UUID
