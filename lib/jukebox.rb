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
  puts "/I accept the following commands:/"
  puts "/- help : displays this help message/"
  puts "/- list : displays a list of songs you can play/"
  puts "/- play : lets you choose a song to play/"
  puts "/- exit : exits this program/"
end

def list(songs)
  songs.each_with_index{|song,track|
    puts "#{track+1}. #{song}"}
end

def play(songs)
  puts "Please enter a song name or number:"
  input=gets.strip
  message=nil
  songs.each_with_index{|song,track|
    if song == input or (track+1).to_s == input
      message = "Playing #{song}"
    end
  }
  if message == nil
    puts "Invalid input, please try again"
  else
    puts message
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  puts "Please enter a command:"
  input=gets.strip
  
  while input != "exit"
    if input == "list"
      list(songs)
    elsif input == "play"
      play(songs)
    elsif input == "help"
      help
    end
  end
  
  if input =="exit"
    exit_jukebox
  end
end

