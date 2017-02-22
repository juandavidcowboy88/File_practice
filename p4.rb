
  class Maker
      attr_accessor :name_maker

      def create_maker
        puts " HALLO  einleiten name:"
        @name_maker = gets
      end

      def send_maker
        txt_file = open('students.txt' ,'a+')
        txt_file.write( @name_maker )
        txt_file = open('students.txt')
        txt_file.each_line do |maker|
         puts "maker: #{maker}"
       end
         txt_file.close
        end

    def copy_maker_to_new_file
        txt_file = open('file_to_copy.txt' ,'a+')
        maker = txt_file.read
        txt_file.close
        puts "copia exitosa "

        txt_file = open('notes.txt' , 'w+')
        txt_file.write(maker)

        txt_file.each_line do |maker|
         puts "copia _ maker: #{maker}"
        end
         txt_file.close
       end

end


maker= Maker.new
#maker.create_maker
#maker.send_maker
maker.copy_maker_to_new_file
