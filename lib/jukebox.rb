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


def list(my_songs)
   i = 1
   my_songs.each_key do |song|
    puts "#{i}. #{song}"
    i += 1
   end
end

def play(my_songs)
  puts "Please enter a song name:"
  input = gets.chomp
  my_songs.each_key do |song|
    if input == song.downcase
      system "open " + my_songs[song]
      break
    end 
  end
end	


def exit_jukebox
  puts "Goodbye"
end 


def run(my_songs)
  help 
  input = "" 
  while input != "exit"  
  puts "Please enter a command:"
  input = gets.chomp
  case input 
  when "play"
    play(my_songs)
  when "list"
    list(my_songs)
  when "help"
    help
  when "exit"
    exit_jukebox
  else
    puts "Invalid input, please try again"
    
  
