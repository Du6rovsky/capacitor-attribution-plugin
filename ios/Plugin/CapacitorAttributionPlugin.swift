import Foundation
import Capacitor
import AdServices

@objc(CapacitorAttributionPlugin)
public class CapacitorAttributionPlugin: CAPPlugin {
    @objc func getIosAttributionToken(_ call: CAPPluginCall) {
        if #available(iOS 14.3, *) {
            Task {
                do {
                    let token = try await AAAttribution.attributionToken()
                    call.resolve([
                        "attributionToken": token
                    ])
                } catch {
                    call.reject("Failed to get attribution token", error.localizedDescription)
                }
            }
        } else {
            call.reject("AdServices API requires iOS 14.3+")
        }
    }
}
