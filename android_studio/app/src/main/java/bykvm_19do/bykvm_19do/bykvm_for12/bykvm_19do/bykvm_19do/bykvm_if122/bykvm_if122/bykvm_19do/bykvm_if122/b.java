package bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.bykvm_19do.bykvm_if122;

import bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.k;
import com.apk.Cgoto;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.net.ProtocolException;
import java.net.UnknownServiceException;
import java.security.cert.CertificateException;
import java.util.Arrays;
import java.util.List;
import javax.net.ssl.SSLHandshakeException;
import javax.net.ssl.SSLPeerUnverifiedException;
import javax.net.ssl.SSLProtocolException;
import javax.net.ssl.SSLSocket;

/* compiled from: ConnectionSpecSelector.java */
/* loaded from: classes8.dex */
public final class b {

    /* renamed from: a  reason: collision with root package name */
    public final List<k> f10725a;
    public int b = 0;
    public boolean c;
    public boolean d;

    public b(List<k> list) {
        this.f10725a = list;
    }

    private boolean b(SSLSocket sSLSocket) {
        for (int i = this.b; i < this.f10725a.size(); i++) {
            if (this.f10725a.get(i).a(sSLSocket)) {
                return true;
            }
        }
        return false;
    }

    public k a(SSLSocket sSLSocket) throws IOException {
        k kVar;
        int i = this.b;
        int size = this.f10725a.size();
        while (true) {
            if (i >= size) {
                kVar = null;
                break;
            }
            kVar = this.f10725a.get(i);
            if (kVar.a(sSLSocket)) {
                this.b = i + 1;
                break;
            }
            i++;
        }
        if (kVar != null) {
            this.c = b(sSLSocket);
            bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.bykvm_19do.a.f10706a.a(kVar, sSLSocket, this.d);
            return kVar;
        }
        StringBuilder m1016super = Cgoto.m1016super("Unable to find acceptable protocols. isFallback=");
        m1016super.append(this.d);
        m1016super.append(", modes=");
        m1016super.append(this.f10725a);
        m1016super.append(", supported protocols=");
        m1016super.append(Arrays.toString(sSLSocket.getEnabledProtocols()));
        throw new UnknownServiceException(m1016super.toString());
    }

    public boolean a(IOException iOException) {
        this.d = true;
        if (!this.c || (iOException instanceof ProtocolException) || (iOException instanceof InterruptedIOException)) {
            return false;
        }
        boolean z = iOException instanceof SSLHandshakeException;
        if ((z && (iOException.getCause() instanceof CertificateException)) || (iOException instanceof SSLPeerUnverifiedException)) {
            return false;
        }
        return z || (iOException instanceof SSLProtocolException);
    }
}
