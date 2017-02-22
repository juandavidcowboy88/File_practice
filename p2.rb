

txt_file = open('students.txt')

txt_file.each_line do |maker|
     puts "maker: #{maker}"
 end




txt_file.close
