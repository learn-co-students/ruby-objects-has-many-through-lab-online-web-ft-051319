class Doctor
  attr_accessor :name
  @@all = []
  
  def initialize(name)
   @name = name
   @@all << self
  end
  
  def self.all
    @@all
  end
  
  def new_appointment(patient, date)
    Appointment.new(patient, self, date)
  end
  
  def appointments
    Appointment.all.select do |selection|
      #binding.pry
      selection.doctor.name == self.name
    end
  end
  
  def patients
      self.appointments.collect do |appointment|
        # binding.pry
         appointment.patient
      end
  
  end
end