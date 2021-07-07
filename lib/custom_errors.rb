class Person
  attr_accessor :partner, :name

  def initialize(name)
    @name = name
  end

  def get_married(person)
      self.partner = person
  #  (Beyonces partner is (instance of Person) Jay Z)
      if person.class != Person
      #if what is passed in as an argument is not a Person class
      #raise the partner error we created.
        begin
          #first we raise our partner error
          raise PartnerError
          #then we rescue our PartnerError
          #this method creates an instance of the PartnerError
          # class and puts out the result of calling "message"
          #   on that instance.
        rescue PartnerError => error_message
          puts error_message.message
        end
      else
      #if it is. then the instance of the persons partner is Beyonce.
        person.partner = self
      end
  end


  class PartnerError < StandardError
    def message
    "you must give the get_married method an argument of an instance of the person class!"
    end
  end


end

beyonce = Person.new("Beyonce")
beyonce.get_married("Jay-Z")
puts beyonce.name

