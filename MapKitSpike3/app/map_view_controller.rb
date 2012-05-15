class MapViewController < UIViewController

  def init
    self
  end

  def loadView
    self.view = MKMapView.alloc.init
    view.delegate = self
  end

  def viewDidLoad
  end

  def viewWillAppear(animated)
    region = MKCoordinateRegionMake(CLLocationCoordinate2D.new(55.63, -6.11), MKCoordinateSpanMake(0.4, 0.4))
    self.view.setRegion(region)
    DistilleryAnnotation::Data.each { |annotation| self.view.addAnnotation(annotation) }
    
    navigationController.setNavigationBarHidden(true, animated:true)
  end    
  
end
