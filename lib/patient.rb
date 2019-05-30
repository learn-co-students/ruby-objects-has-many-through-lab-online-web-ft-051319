require "pry"

class Patient

  attr_accessor :name, :appointments

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
    @appointments = []
  end

  def self.all
    @@all
  end

  def new_appointment(doctor, date)
    appointment = Appointment.new(self, doctor, date)
    @appointments.push(appointment)
    appointment
  end

  def doctors
    appointments.map {|appointment| appointment.doctor }.uniq
  end

end
