require './book'
require './classroom'
require './person'
require './rental'
require './teacher'
require './student'

class App
    attr_accessor :input

    def initialize
        puts 'welcome to the school library App!'
        prompt
        @rental = []
        @people = []
        @classroom_default = classroom.new('default_classroom')
        @books = []
        @input = gets.chomp
    end

    def prompt
        puts '
        Please choose an option by entering a number:
        1 - List all books
        2 - List all people
        3 - Create a person
        4 - Create a book
        5 - Create a rental
        6 - list all rentals for a given person id
        7 - Exit
        '

        puts ''
        puts 'Select an Option'
    end
end