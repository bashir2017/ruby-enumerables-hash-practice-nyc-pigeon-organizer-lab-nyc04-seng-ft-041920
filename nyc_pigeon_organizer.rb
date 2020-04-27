require ("pry")

def nyc_pigeon_organizer(data)
  # write your code here!
  new_hash = {}
  data.each do |attribute|
    attribute[1].each do |attributeOption|
      attributeOption[1].map do |name|
        new_hash[name] = {}
        if !(new_hash[name][attribute[0]])
          new_hash[name][attribute[0]] = []
        end 
        new_hash[name][attribute[0]] << attributeOption[0].to_s
      end 
    end 
  end 
  new_hash
end
