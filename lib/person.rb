# #instance variables.....
# happiness
# hygiene
# bank_account

class Person
  attr_accessor :hygiene, :happiness, :bank_account
  attr_reader :name

  def initialize(name)
    @name = name
    @happiness = 8
    @hygiene = 8
    @bank_account = 25

  end

  def happiness=(happiness)
    if happiness > 10
      return @happiness = 10
    elsif happiness < 0
      return @happiness = 0
    else
      @happiness = happiness

  end
end

 # happpy = happiness
 def hygiene=(hygiene)
   if hygiene > 10
     return @hygiene = 10
   elsif hygiene < 0
     return @hygiene = 0
   else
     @hygiene = hygiene
 end
end

  def clean?
    if  self.hygiene > 7
      return true
    else
      return false
    end
  end

  def happy?
    if self.happiness> 7
      return true
    else
      return false
  end
end


  def get_paid(salary_amount)
      @bank_account += salary_amount
      return "all about the benjamins"
  end

  def take_bath
    self.hygiene += 4
    return "♪ Rub-a-dub just relaxing in the tub ♫"
  end


  def work_out
    self.happiness += 2
    self.hygiene -= 3
    return "♪ another one bites the dust ♫"
  end

  def start_conversation(person, topic)
    if topic == "politics"
      self.happiness -= 2
      person.happiness -= 2
      return "blah blah partisan blah lobbyist"
    elsif topic == "weather"
      self.happiness += 1
      person.happiness += 1
      return "blah blah sun blah rain"
    else
      return "blah blah blah blah blah"
    end
  end


  def call_friend(person )
    self.happiness += 3
    person.happiness += 3

    if person.happiness > 10
      person.happiness = 10
    end
      if self.happiness > 10
      self.happiness = 10
  end
  return "Hi #{person.name}! It's #{self.name}. How are you?"
end
end
