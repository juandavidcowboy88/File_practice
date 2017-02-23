class Agenda
      attr_accessor :name , :richtung ,   :telefon  ,  :email ,  :genus , :info


      def info_contact
        @info =[]
        puts " einleiten name:"
        @name = gets.chomp

        puts " einleiten richtung:"
        @richtung = gets.chomp


        puts " HALLO  einleiten telefon:"
        @telefon = gets.chomp

        puts " HALLO  einleiten email:"
        @email = gets.chomp


        puts " HALLO  einleiten genus:"
        @genus = gets.chomp

      end

      def create_contact
        txt_file = open('students.txt' , 'a')
        info = "#{@name}"+","+"#{@richtung}"+","+"#{@telefon}"+","+"#{@email}"+","+"#{@genus}"+"\n"
        puts "#{info}"
        txt_file.write(info )
        txt_file.close
       end

       def show_all_contact
         txt_file = open('students.txt' , 'a')
         txt_file.close
       end
end


maker= Agenda.new
maker.info_contact
maker.create_contact
#maker.send_maker
#maker.copy_maker_to_new_file
