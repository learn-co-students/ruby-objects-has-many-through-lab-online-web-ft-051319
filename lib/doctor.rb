class Doctor 
  
  @@all = []
  attr_accessor :name 
  
  def initialize(name)
    @name = name 
    @@all << self 
  end 
  
  def self.all 
    @@all 
  end 
  
  def new_appointment(patient, date)
    appointment = Appointment.new(patient, self, date)
  end
  
  def appointments
    Appointment.all.select do |a| 
      a.doctor == self 
    end 
  end 
  
  def patients 
    appointments.collect do |a|
      a.patient 
    end 
  end 
end 