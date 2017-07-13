def get_first_name_of_season_winner(data, season)
    data[season].each do |contestants|
            if contestants["status"] == "Winner"
                return contestants["name"].split.first
end
            end
    end


def get_contestant_name(data, occupation)
    data.each do |season, contestants|
        contestants.each do |index|
            if index["occupation"] == occupation
                return index["name"]
            end
        end
    end
end

def count_contestants_by_hometown(data, hometown)
  count_hometowns = 0
  data.each do |season, contestants|
        contestants.each do |contestant|
            if contestant["hometown"] == hometown
                count_hometowns += 1
end
            end
        end
  count_hometowns
  end

def get_occupation(data, hometown)
  data.each do |season, contestants|
      contestants.each do |index|
        if index["hometown"] == hometown
            return index["occupation"]
end
        end
      end
  end

def get_average_age_for_season(data, season)
    total = 0
    data[season].each do |contestant|
        total += contestant["age"].to_i
        end
    return (total.to_f/data[season].length).round
end
