package com.apk;

import android.content.ComponentName;
import android.content.Context;
import android.content.ServiceConnection;
import android.content.pm.PackageManager;
import android.content.pm.Signature;
import android.os.IBinder;
import android.os.Parcel;
import android.text.TextUtils;
import androidx.exifinterface.media.ExifInterface;
import com.apk.op0;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

/* compiled from: OpenIDHelper.java */
/* loaded from: classes7.dex */
public class pp0 {

    /* renamed from: do  reason: not valid java name */
    public op0 f3724do = null;

    /* renamed from: if  reason: not valid java name */
    public String f3726if = null;

    /* renamed from: for  reason: not valid java name */
    public String f3725for = null;

    /* renamed from: new  reason: not valid java name */
    public final Object f3727new = new Object();

    /* renamed from: try  reason: not valid java name */
    public ServiceConnection f3728try = new Cdo();

    /* compiled from: OpenIDHelper.java */
    /* renamed from: com.apk.pp0$do  reason: invalid class name */
    /* loaded from: classes7.dex */
    public class Cdo implements ServiceConnection {
        public Cdo() {
        }

        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            pp0.this.f3724do = op0.Cdo.m1979do(iBinder);
            synchronized (pp0.this.f3727new) {
                pp0.this.f3727new.notify();
            }
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName componentName) {
            pp0.this.f3724do = null;
        }
    }

    /* compiled from: OpenIDHelper.java */
    /* renamed from: com.apk.pp0$if  reason: invalid class name */
    /* loaded from: classes7.dex */
    public static class Cif {

        /* renamed from: do  reason: not valid java name */
        public static final pp0 f3730do = new pp0();
    }

    /* renamed from: do  reason: not valid java name */
    public final String m2070do(Context context, String str) {
        Signature[] signatureArr;
        String str2;
        MessageDigest messageDigest;
        if (TextUtils.isEmpty(this.f3726if)) {
            this.f3726if = context.getPackageName();
        }
        if (TextUtils.isEmpty(this.f3725for)) {
            try {
                signatureArr = context.getPackageManager().getPackageInfo(this.f3726if, 64).signatures;
            } catch (PackageManager.NameNotFoundException e) {
                e.printStackTrace();
                signatureArr = null;
            }
            if (signatureArr != null && signatureArr.length > 0) {
                byte[] byteArray = signatureArr[0].toByteArray();
                try {
                    messageDigest = MessageDigest.getInstance("SHA1");
                } catch (NoSuchAlgorithmException e2) {
                    e2.printStackTrace();
                }
                if (messageDigest != null) {
                    byte[] digest = messageDigest.digest(byteArray);
                    StringBuilder sb = new StringBuilder();
                    for (byte b : digest) {
                        sb.append(Integer.toHexString((b & ExifInterface.MARKER) | 256).substring(1, 3));
                    }
                    str2 = sb.toString();
                    this.f3725for = str2;
                }
            }
            str2 = null;
            this.f3725for = str2;
        }
        op0 op0Var = this.f3724do;
        String str3 = this.f3726if;
        String str4 = this.f3725for;
        op0.Cdo.C0071do c0071do = (op0.Cdo.C0071do) op0Var;
        if (c0071do != null) {
            Parcel obtain = Parcel.obtain();
            Parcel obtain2 = Parcel.obtain();
            try {
                obtain.writeInterfaceToken("com.heytap.openid.IOpenID");
                obtain.writeString(str3);
                obtain.writeString(str4);
                obtain.writeString(str);
                c0071do.f3487do.transact(1, obtain, obtain2, 0);
                obtain2.readException();
                String readString = obtain2.readString();
                obtain2.recycle();
                obtain.recycle();
                return TextUtils.isEmpty(readString) ? "" : readString;
            } catch (Throwable th) {
                obtain2.recycle();
                obtain.recycle();
                throw th;
            }
        }
        throw null;
    }
}
