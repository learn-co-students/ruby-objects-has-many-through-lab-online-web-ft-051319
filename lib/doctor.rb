require "pry"

class Doctor

  attr_accessor :name, :appointments

  @@all = []

  def initialize(name)
    @name = name
    @appointments = []
    @@all << self
  end

  def self.all
    @@all
  end

  def new_appointment(patient, date)
    appointment = Appointment.new(patient, self, date)
    @appointments.push(appointment)
    appointment
  end

  def patients
    @appointments.map {|appointment| appointment.patient}.uniq
  end

end
