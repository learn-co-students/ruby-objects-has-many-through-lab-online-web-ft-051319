class Patient 
  
  attr_accessor :name 
  
  @@all = [] 
  
  def initialize(name)
    @name = name 
    @@all << self 
  end 
  
  def new_appointment(doctor, date) 
    Appointment.new(self, doctor, date)
  end 
  
  def appointments 
    Appointment.all.select do |appt|
      appt.patient 
    end
  end
  
  def doctors 
    appointments.map do |appt|
      appt.doctor
    end 
  end
  
  def self.all 
    @@all 
  end 
  
end