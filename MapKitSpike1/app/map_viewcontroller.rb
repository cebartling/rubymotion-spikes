class MapViewController < UIViewController

  def init
    self
  end

  def loadView
    self.view = MKMapView.alloc.init
    view.delegate = self
  end

  def viewDidLoad
    #view.frame = @window.rootViewController.view.bounds

    # Center on Brussels.
    region = MKCoordinateRegionMake(CLLocationCoordinate2D.new(50.85, 4.35), MKCoordinateSpanMake(3.1, 3.1))
    self.view.setRegion(region)
  end

  def viewWillAppear(animated)
    navigationController.setNavigationBarHidden(true, animated:true)
  end    
  
end
