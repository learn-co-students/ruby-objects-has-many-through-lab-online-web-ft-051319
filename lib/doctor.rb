class Doctor

  @@all=[]

  attr_accessor :name, :appointment

  def initialize(name)
    @name=name
    @@all << self
  end

  def new_appointment(patient,date)
    @appointment=Appointment.new(date,patient,self)
  end

  def appointments
    Appointment.all.select{|app| app.doctor==self}
  end

  def patients
    Appointment.all.map{|app| app.patient}
  end

  def self.all
    @@all
  end


end
