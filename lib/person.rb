require 'pry'

class Person
    attr_reader :name, :happiness, :hygiene
    attr_writer 
    attr_accessor :bank_account
    
    def initialize(name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end 

    def happiness=(amt)
        if amt > 10
            @happiness = 10
        elsif amt < 0
            @happiness = 0
        else 
            @happiness = amt
        end 
    end

    def hygiene=(amt)
        if amt > 10
            @hygiene = 10
        elsif amt < 0
            @hygiene = 0
        else 
            @hygiene = amt
        end 
    end

    def happy?
        if @happiness > 7
            return true
        else 
            return false
        end
    end

    def clean? 
        if @hygiene > 7
            return true
        else 
            return false
        end
    end

    def get_paid(salary)
        @bank_account += salary
        "all about the benjamins"
    end

    def take_bath
        new_hygiene = @hygiene + 4
        self.hygiene = new_hygiene
        return "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        new_hygiene = @hygiene - 3
        self.hygiene = new_hygiene
        new_happiness = @happiness + 2
        self.happiness = new_happiness
        return "♪ another one bites the dust ♫"
    end

    def call_friend(person)
        new_happiness = @happiness + 3
        self.happiness = new_happiness
        new_friends_happiness = person.happiness + 3
        person.happiness = new_friends_happiness
        return "Hi #{person.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(person, topic)
        if topic == "politics"
            new_happiness = @happiness - 2
            self.happiness = new_happiness
            new_persons_happiness = person.happiness - 2
            person.happiness = new_persons_happiness
            return "blah blah partisan blah lobbyist"
        elsif topic == "weather"
            new_happiness = @happiness + 1
            self.happiness = new_happiness
            new_persons_happiness = person.happiness + 1
            person.happiness = new_persons_happiness
            return "blah blah sun blah rain"
        else
            return "blah blah blah blah blah"
        end

    end



end

