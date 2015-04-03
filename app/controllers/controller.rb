require_relative '../../config/application'

class Controller
  def initialize(args)
    @command = args[:command]
    @id = args[:id]
    @numbers = args[:numbers]
    Group.connection
    begin
      @numbers ? send(@command) : send(@command)
    #rescue ArgumentError => err
      puts 'Please enter phone numbers!'
    #rescue NoMethodError => err
      puts 'Please enter a valid command!'
    end
  end

  def addgroup
    @group = Group.new
    @group.save
    puts "Your group number is #{@group.id}"
  end

  def addusers
    group = Group.find(@id)
    @numbers.each do |number|
      user = User.new(phone: number)
      user.group_ids = group.id
      user.save
    end
  end

  def pay

    current_group = Group.users.where(group_ids: @id)
    person = current_group.sample
    @group.pay(person.phone)
  end
end
