require "pry"

class Patient
  attr_accessor :name
  
  @@all = []
  
  def initialize (name)
    @appointment = nil
    @name = name
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def appointments
    Appointment.all.select{|a| a.patient == self}
  end
  
  def new_appointment(doctor, date)
    Appointment.new(self, date, doctor)
  end
  
  def doctors
    self.appointments.collect{|appointment| appointment.doctor}
  end
end