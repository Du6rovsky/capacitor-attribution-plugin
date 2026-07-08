export interface CapacitorAttributionPlugin {
    getIosAttributionToken(): Promise<{ attributionToken: string }>; // iOS method

    getAndroidReferrerUrl(): Promise<{ referrerUrl: string }>; // Android method
}
