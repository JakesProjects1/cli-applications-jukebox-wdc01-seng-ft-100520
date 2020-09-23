# Add your code here

songs = [
  "Phoenix - 1901",
  "Tokyo Police Club - Wait Up",
  "Sufjan Stevens - Too Much",
  "The Naked and the Famous - Young Blood",
  "(Far From) Home - Tiga",
  "The Cults - Abducted",
  "Phoenix - Consolation Prizes",
  "Harry Chapin - Cats in the Cradle",
  "Amos Lee - Keep It Loose, Keep It Tight"
]

def help
 puts "I accept the following commands:" 
 puts "- help : displays this help message"
 puts "- list : displays a list of songs you can play"
 puts "- play : lets you choose a song to play"
 puts "- exit : exits this program"
end




def play(my_songs)
  input = gets.chomp
  if my_songs.include?(input)
    puts "Playing #{input}"
    open my_songs[input]
  else
    puts "Invalid input, please try again"
  end
end


def exit_jukebox
  puts "Goodbye"
end 

def run(songs)
  help
  input = ""
  while input != "exit"
    puts "Please enter a command:"
    input = gets.chomp
    case input
    when "play"
      play(song)
    when "list"
      list(songs)
    when "help"
      help
    when "exit"
      exit_jukebox    
    else
      puts "Invalid input, please try again"
    end
  end
end
