import Foundation
import CoreLocation

class PrivateLocationManager: NSObject, CLLocationManagerDelegate {

    var locationManager: CLLocationManager!

    override init() {
        super.init()
        locationManager = CLLocationManager()
        locationManager.desiredAccuracy = 5000
        locationManager.delegate = self
        println("Mapbox CL is \(locationManager)")
        let backgroundModes = NSBundle.mainBundle().objectForInfoDictionaryKey("UIBackgroundModes") as? NSArray
        println("Background modes for app? \(backgroundModes!)")

    }

    func locationManager(manager: CLLocationManager!, didChangeAuthorizationStatus status: CLAuthorizationStatus) {
        println("Mapbox: CL \(manager) changed auth status to \"\(Utility.descriptionForAuthStatus(status))\"")
        println("Mapbox: CL \(manager) has desired accuracy of \(manager.desiredAccuracy)")
    }

}