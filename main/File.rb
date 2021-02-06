File.open("HelloWorld.rb", "r") do |file| 
    # puts file.read()
    # puts file.readline()
    # puts file.readchar()
    for line in file.readlines()
    	puts line
    end

    file.close()
end

=begin
File.open("new.html", "w") do |file|
    file.write("<h1>title</h1>")
end
=end

# append (to tail)
=begin
File.open("new.html", "a") do |file|
    file.write("\nthis is a new line")
end
=end