#Read
File.open('example.txt').each do |line|
  puts line
end

#Write
File.open('example.txt', 'w') do |file|
  file.write 'No line break here!'
end

#Append
File.open('example.txt', 'a') do |file|
  file.puts "This will be appended to the end \n"
  file.print "Test2 \n"
  file.write 'And another line with file.write'
end