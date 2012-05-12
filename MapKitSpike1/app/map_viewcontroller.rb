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
    region = MKCoordinateRegionMake(CLLocationCoordinate2D.new(44.7981, -93.5267), MKCoordinateSpanMake(0.2, 0.2))
    self.view.setRegion(region)
    navigationController.setNavigationBarHidden(true, animated:true)
  end    
  
end
