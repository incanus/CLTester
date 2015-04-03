import Foundation
import CoreLocation

class Utility {

    class func descriptionForAuthStatus(status: CLAuthorizationStatus) -> String {
        if (status == .Restricted) {
            return "Restricted"
        } else if (status == .Denied) {
            return "Denied"
        } else if (status == .AuthorizedAlways) {
            return "Authorized Always"
        } else if (status == .AuthorizedWhenInUse) {
            return "Authorized When In Use"
        } else {
            return "Not Determined"
        }
    }

}
