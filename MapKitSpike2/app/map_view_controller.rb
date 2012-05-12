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
    # Scotland: 56.4396° N, 4.0532° W
    region = MKCoordinateRegionMake(CLLocationCoordinate2D.new(56.4396, -4.0532), MKCoordinateSpanMake(4, 4))
    self.view.setRegion(region)
    navigationController.setNavigationBarHidden(true, animated:true)
  end    
  
end
