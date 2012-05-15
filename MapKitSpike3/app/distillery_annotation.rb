class DistilleryAnnotation

  def initialize(latitude, longitude, distilleryName)
    @name = distilleryName
    @coordinate = CLLocationCoordinate2D.new(latitude, longitude)
  end

  def title; @name; end
  def coordinate; @coordinate; end

  Data = [
    DistilleryAnnotation.new(55.6355209350586, -6.12622451782227, 'Lagavulin'),
    DistilleryAnnotation.new(55.6298294067383, -6.15358829498291, 'Laphroaig'),
    DistilleryAnnotation.new(55.6420860290527, -6.11207962036133, 'Ardbeg')
  ]

end
