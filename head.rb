count = 10
ARGF.each_line do |line|
    puts line
    count -= 1
    exit if count == 0
end
