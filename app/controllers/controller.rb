class Controller
  def initialize(args)
    command = args[:command]
    numbers = args[:numbers]

    begin
      numbers ? send(command, numbers) : send(command)
    rescue ArgumentError => err
      puts 'Please enter phone numbers!'
    rescue NoMethodError => err
      puts 'Please enter a valid command!'
    end
  end

  def


end