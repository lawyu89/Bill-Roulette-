require_relative '../../config/application'

class Controller
  def initialize(args)
   @command = args[:command]
   @id = args[:id]
   @numbers = args[:numbers]

    if @command == "addgroup"
      addgroup
    elsif @command == "addusers" && @id && @numbers
      addusers
    elsif @command == "pay" && @id
      pay
    else
      puts "Command Invalid, Please Try Again!"
    end
  end

  def addgroup
    @group = Group.new
    @group.save
    puts "Your group number is #{@group.id}"
  end

  def addusers
    @numbers.each do |number|
      user = User.new(phone: number)
      user.save
      user.group_ids = @id
      user.save
    end
  end

  def pay
    users = User.all

    group = []
    users.each do |user|
      group << user if user.group_ids = @id
    end
    person = group.sample
    person.phone
    Group.pay(person.phone)
  end
end
