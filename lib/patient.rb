class Patient

  attr_accessor :name, :appointment

  @@all=[]

  def initialize(name)
    @name=name
    @@all << self
  end

  def new_appointment(doctor,date)
    @appointment=Appointment.new(date,self,doctor)
  end

  def appointments
    Appointment.all.select{|app| app.patient==self}
  end

  def doctors
    Appointment.all.map{|app| app.doctor}
  end

  def self.all
    @@all
  end

end
