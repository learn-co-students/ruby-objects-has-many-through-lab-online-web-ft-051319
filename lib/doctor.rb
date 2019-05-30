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

  def new_appointment(date, patient)
    new_patient = Patient.new(patient)
    new_appt = Appointment.new(new_patient, date, self)
    new_appt
  end

  def appointments
    Appointment.all.select {|appointment| appointment.doctor == self}
  end

  def patients
    appointments.collect do |appointment|
      appointment.patient
    end
  end

end
