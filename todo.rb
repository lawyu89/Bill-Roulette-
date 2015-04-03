require_relative 'config/application'
require_relative 'app/controller/controller'

input = ARGV

#addgroup 1 arg
#addusers multiple phones
#pay to play

command = ARGV[0]
numbers = ARGV[1..-1]

controller = Controller.new({

})

