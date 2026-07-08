#import <Foundation/Foundation.h>
#import <Capacitor/Capacitor.h>

CAP_PLUGIN(CapacitorAttributionPlugin, "CapacitorAttributionPlugin",
    CAP_PLUGIN_METHOD(getIosAttributionToken, CAPPluginReturnPromise);
)