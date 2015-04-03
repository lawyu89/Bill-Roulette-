require_relative 'config/application'
require_relative 'app/controllers/controller'

#addgroup 1 arg
#addusers multiple phones
#pay to play

command = ARGV[0]
id = ARGV[1]
numbers = ARGV[2..-1]

controller = Controller.new({
  command: command.nil? ? nil : command,
  id: id.nil? ? nil : id,
  numbers: numbers.nil? ? nil : numbers
})

