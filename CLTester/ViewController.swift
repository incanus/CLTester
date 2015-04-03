import UIKit
import CoreLocation

class ViewController: UIViewController, CLLocationManagerDelegate {

    var locationManager: CLLocationManager!
    var privateManager: PrivateLocationManager!

    override func viewDidLoad() {
        super.viewDidLoad()
        locationManager = CLLocationManager()
        locationManager.desiredAccuracy = 100
        locationManager.delegate = self
        println("Third-party CL is \(locationManager)")
    }

    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        privateManager = PrivateLocationManager()
        locationManager.requestAlwaysAuthorization()
    }

    func locationManager(manager: CLLocationManager!, didChangeAuthorizationStatus status: CLAuthorizationStatus) {
        println("Third-party: CL \(manager) changed auth status to \"\(Utility.descriptionForAuthStatus(status))\"")
        println("Third-party: CL \(manager) has desired accuracy of \(manager.desiredAccuracy)")
    }

}
