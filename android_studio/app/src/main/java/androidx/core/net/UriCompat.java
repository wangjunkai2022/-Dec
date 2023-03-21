package androidx.core.net;

import android.net.Uri;
import androidx.annotation.NonNull;
import com.apk.Cgoto;
import com.baidu.tts.client.SpeechSynthesizer;

/* loaded from: classes8.dex */
public final class UriCompat {
    @NonNull
    public static String toSafeString(@NonNull Uri uri) {
        String scheme = uri.getScheme();
        String schemeSpecificPart = uri.getSchemeSpecificPart();
        if (scheme != null) {
            if (!scheme.equalsIgnoreCase("tel") && !scheme.equalsIgnoreCase("sip") && !scheme.equalsIgnoreCase("sms") && !scheme.equalsIgnoreCase("smsto") && !scheme.equalsIgnoreCase("mailto") && !scheme.equalsIgnoreCase("nfc")) {
                if (scheme.equalsIgnoreCase(SpeechSynthesizer.REQUEST_PROTOCOL_HTTP) || scheme.equalsIgnoreCase(SpeechSynthesizer.REQUEST_PROTOCOL_HTTPS) || scheme.equalsIgnoreCase("ftp") || scheme.equalsIgnoreCase("rtsp")) {
                    StringBuilder m1016super = Cgoto.m1016super("//");
                    String str = "";
                    m1016super.append(uri.getHost() != null ? uri.getHost() : "");
                    if (uri.getPort() != -1) {
                        StringBuilder m1016super2 = Cgoto.m1016super(":");
                        m1016super2.append(uri.getPort());
                        str = m1016super2.toString();
                    }
                    schemeSpecificPart = Cgoto.m991class(m1016super, str, "/...");
                }
            } else {
                StringBuilder sb = new StringBuilder(64);
                sb.append(scheme);
                sb.append(':');
                if (schemeSpecificPart != null) {
                    for (int i = 0; i < schemeSpecificPart.length(); i++) {
                        char charAt = schemeSpecificPart.charAt(i);
                        if (charAt != '-' && charAt != '@' && charAt != '.') {
                            sb.append('x');
                        } else {
                            sb.append(charAt);
                        }
                    }
                }
                return sb.toString();
            }
        }
        StringBuilder sb2 = new StringBuilder(64);
        if (scheme != null) {
            sb2.append(scheme);
            sb2.append(':');
        }
        if (schemeSpecificPart != null) {
            sb2.append(schemeSpecificPart);
        }
        return sb2.toString();
    }
}
