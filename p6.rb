class Agenda
      attr_accessor :name , :richtung ,   :telefon  ,  :email ,  :genus , :info

       def create_contact
#  usuario ingresa a información  a las variables de instancia
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
        info = "#{@name}"+","+"#{@richtung}"+","+"#{@telefon}"+","+"#{@email}"+","+"#{@genus}"+"\n"
        end


        def writ_info
          txt_file = open('students.txt' , 'a')
          info =  "#{@name}"+","+"#{@richtung}"+","+"#{@telefon}"+","+"#{@email}"+","+"#{@genus}"+"\n"
          puts "#{info}"
          txt_file.write(info )
          txt_file.close
         end

         def show_all_contact
           txt_file = open('students.txt' , 'r+')
           txt_file.each_line do |maker|
                maker = maker.split(",")
                @name = maker[0]
                @richtung = maker[1]
                @telefon = maker[2]
                @email = maker[3]
                @genus = maker[4]

                puts "
                ---------------------------------
                Nombre: #{@name} \n
                Email: #{@richtung}  \n
                Telefono: #{@telefon}  \n
                Dirección: #{@email}  \n
                Genero:  #{@genus} \n
                 \n
                 ------------------------------
                "
               end
               txt_file.close

         end

end


maker= Agenda.new
#maker.create_contact
maker.show_all_contact
#maker.show_all_contact

#maker.copy_maker_to_new_file
