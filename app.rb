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
        puts
    end
end