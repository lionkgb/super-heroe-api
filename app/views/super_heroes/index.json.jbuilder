json.array! @super_heroes.each do |super_hero|
  json.name super_hero.name
  json.power super_hero.power
  json.descriptor super_hero.descriptor
end 

# json.name @super_hero.name
# json.power @super_hero.power
# json.descriptor @super_hero.descriptor