package com.google.zxing.client.result;

import com.apk.Cgoto;
/* loaded from: classes8.dex */
public final class GeoParsedResult extends ParsedResult {
    public final double altitude;
    public final double latitude;
    public final double longitude;
    public final String query;

    public GeoParsedResult(double d, double d2, double d3, String str) {
        super(ParsedResultType.GEO);
        this.latitude = d;
        this.longitude = d2;
        this.altitude = d3;
        this.query = str;
    }

    public double getAltitude() {
        return this.altitude;
    }

    @Override // com.google.zxing.client.result.ParsedResult
    public String getDisplayResult() {
        StringBuilder sb = new StringBuilder(20);
        sb.append(this.latitude);
        sb.append(", ");
        sb.append(this.longitude);
        if (this.altitude > 0.0d) {
            sb.append(", ");
            sb.append(this.altitude);
            sb.append('m');
        }
        if (this.query != null) {
            sb.append(" (");
            sb.append(this.query);
            sb.append(')');
        }
        return sb.toString();
    }

    public String getGeoURI() {
        StringBuilder m1016super = Cgoto.m1016super("geo:");
        m1016super.append(this.latitude);
        m1016super.append(',');
        m1016super.append(this.longitude);
        if (this.altitude > 0.0d) {
            m1016super.append(',');
            m1016super.append(this.altitude);
        }
        if (this.query != null) {
            m1016super.append('?');
            m1016super.append(this.query);
        }
        return m1016super.toString();
    }

    public double getLatitude() {
        return this.latitude;
    }

    public double getLongitude() {
        return this.longitude;
    }

    public String getQuery() {
        return this.query;
    }
}
