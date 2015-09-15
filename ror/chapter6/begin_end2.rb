BEGIN{
    puts "Welcome to install this program"
}
BEGIN{
    puts "Please read the agreement first"
}
BEGIN{
    puts "Please set the path to install"
}
def setup
    puts "Installing, please wait..."
end
setup
END{
    puts "Installed successed!"
}
END{
    puts "Configuring..."
}
at_exit{
    puts "Quit the program"
}
