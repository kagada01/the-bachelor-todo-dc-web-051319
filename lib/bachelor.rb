require 'pry'

def get_first_name_of_season_winner(data, season)
  data[season].each do |contestants|
    if contestants["status"] == "Winner"
      contestants.each do |contestant|
        return contestants["name"].split(" ").first
      end
    end
  end
end

def get_contestant_name(data, occupation)
  data.each do |season, contestants|
    contestants.each do |contestant|
      if contestant["occupation"] == occupation
       return contestant["name"]
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  i = 0
  data.each do |season, contestants|
    contestants.each do |contestant|
      if contestant["hometown"] == hometown
        i += 1
      end
    end
  end
  return i
end

def get_occupation(data, hometown)
  data.each do |season, contestants|
    contestants.each do |contestant|
      if contestant["hometown"] == hometown
        return contestant["occupation"]
      end
    end
  end
end


def get_average_age_for_season(data, season)
  age = 0
  num_contestants = 0
  data[season].each do |contestant|
    
    age += contestant["age"].to_i
    #binding.pry
    num_contestants += 1
    
    
  end
  return (age/num_contestants.to_f).round(0)
end
