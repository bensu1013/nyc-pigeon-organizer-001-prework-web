def nyc_pigeon_organizer(data)
  pigeon_list = Hash.new
  pigeon_name = ""

  data[:color].each {|color, ar_name|
    ar_name.each {|name|
      if pigeon_list.has_key?(name)

      else
        a_color = Array.new
        a_gender = Array.new
        a_lives = Array.new
        data[:color].each {|c, ar_n|
          a_color.push(c.to_s) if ar_n.include?(name)
          }
        data[:gender].each {|gen, ar_n|
          a_gender.push(gen.to_s) if ar_n.include?(name)
          }
        data[:lives].each {|place, ar_n|
          a_lives.push(place) if ar_n.include?(name)
          }
        pigeon_list[name] = {color: a_color, gender: a_gender, lives: a_lives}

      end
      }
    }
  pigeon_list

end