class Dog

  def initialize(color, type)
    # @color, @type = color, type
    @color = color
    @type  = type
    @bones = []
  end

  # this is a class method, you can call it simply by writing:
  # Dog.info
  # def self.info
  #
  # end

  # this is an instance method (or object method). So you will need
  # to have an object created first before calling the method:
  # d = Dog.new("white", "poodle")
  # d.give
  def give(bone)
    if @bones.length >= 3
      puts "I can't take any more bones"
    else
      @bones << bone
    end
  end

  def eat
    if @bones.length >= 1
      bone_to_eat = @bones.pop
      puts "Eating a #{bone_to_eat.size} bone!"
    else
      puts "No bones to eat!"
    end
  end

  def bones
    puts "I have #{@bones.length} bone(s)"
  end

end
