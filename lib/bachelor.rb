
def get_first_name_of_season_winner(data, season)
  array = []
  data.each do |seasons, details|
    details.each do |details2|
      if seasons == season && details2["status"] == "Winner"
        winner = details2["name"]
        array = winner.split(" ")
      end
    end
  end
  array[0]
end

def get_contestant_name(data, occupation)
  array = []
  data.each do |seasons, details|
    details.each do |details2|
      if details2["occupation"] == occupation
        person = details2["name"]
        array.push(person)
      end
    end
  end
  array[0]
end

def count_contestants_by_hometown(data, hometown)
  counter = 0
  data.each do |seasons, details|
    details.each do |details2|
      if details2["hometown"] == hometown
        counter += 1
      end
    end
  end
  return counter
end

def get_occupation(data, hometown)
  array = []
  data.each do |seasons, details|
    details.each do |details2|
      if details2["hometown"] == hometown
        array.push(details2["occupation"])
      end
    end
  end
array[0]
end

def get_average_age_for_season(data, season)
  array = []
  data.each do |seasons, details|
    details.each do |details2|
      if seasons == season
      array.push(details2["age"])
      array = array.map { |x| x.to_f }
    end
    end
  end
return (array.inject{ |sum, y| sum + y } / array.size).round
end
