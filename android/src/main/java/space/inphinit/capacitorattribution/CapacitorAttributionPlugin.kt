package space.inphinit.capacitorattribution

import android.util.Log
import com.getcapacitor.Plugin
import com.getcapacitor.PluginCall
import com.getcapacitor.annotation.CapacitorPlugin
import com.android.installreferrer.api.*
import com.android.installreferrer.api.InstallReferrerStateListener
import com.getcapacitor.JSObject
import com.getcapacitor.PluginMethod

@CapacitorPlugin(name = "CapacitorAttributionPlugin")
class CapacitorAttributionPlugin : Plugin(), InstallReferrerStateListener {
    @PluginMethod
    fun getAndroidReferrerUrl(call: PluginCall) {
        val referrerClient = InstallReferrerClient.newBuilder(context).build()

        referrerClient.startConnection(object : InstallReferrerStateListener {
            override fun onInstallReferrerSetupFinished(responseCode: Int) {
                if (responseCode == InstallReferrerClient.InstallReferrerResponse.OK) {
                    val referrerDetails = referrerClient.installReferrer
                    val referrerUrl = referrerDetails.installReferrer

                    val result = JSObject().apply {
                        put("referrerUrl", referrerUrl)
                    }

                    call.resolve(result)
                    referrerClient.endConnection()
                } else {
                    call.reject("Install Referrer API failed with code: $responseCode")
                }
            }

            override fun onInstallReferrerServiceDisconnected() {
                // Can retry if needed
            }
        })
    }

    override fun onInstallReferrerSetupFinished(p0: Int) {
        TODO("Not yet implemented")
    }

    override fun onInstallReferrerServiceDisconnected() {
        TODO("Not yet implemented")
    }
}
