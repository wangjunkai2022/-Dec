package com.apk;

import android.content.res.AssetFileDescriptor;
import android.content.res.Resources;
import android.net.Uri;
import android.os.ParcelFileDescriptor;
import android.util.Log;
import androidx.annotation.NonNull;
import com.apk.ym;
import java.io.InputStream;
/* compiled from: ResourceLoader.java */
/* loaded from: classes8.dex */
public class dn<Data> implements ym<Integer, Data> {

    /* renamed from: do  reason: not valid java name */
    public final ym<Uri, Data> f940do;

    /* renamed from: if  reason: not valid java name */
    public final Resources f941if;

    /* compiled from: ResourceLoader.java */
    /* renamed from: com.apk.dn$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public static final class Cdo implements zm<Integer, AssetFileDescriptor> {

        /* renamed from: do  reason: not valid java name */
        public final Resources f942do;

        public Cdo(Resources resources) {
            this.f942do = resources;
        }

        @Override // com.apk.zm
        /* renamed from: do */
        public void mo54do() {
        }

        @Override // com.apk.zm
        /* renamed from: for */
        public ym<Integer, AssetFileDescriptor> mo55for(cn cnVar) {
            return new dn(this.f942do, cnVar.m368for(Uri.class, AssetFileDescriptor.class));
        }
    }

    /* compiled from: ResourceLoader.java */
    /* renamed from: com.apk.dn$for  reason: invalid class name */
    /* loaded from: classes8.dex */
    public static class Cfor implements zm<Integer, InputStream> {

        /* renamed from: do  reason: not valid java name */
        public final Resources f943do;

        public Cfor(Resources resources) {
            this.f943do = resources;
        }

        @Override // com.apk.zm
        /* renamed from: do */
        public void mo54do() {
        }

        @Override // com.apk.zm
        @NonNull
        /* renamed from: for */
        public ym<Integer, InputStream> mo55for(cn cnVar) {
            return new dn(this.f943do, cnVar.m368for(Uri.class, InputStream.class));
        }
    }

    /* compiled from: ResourceLoader.java */
    /* renamed from: com.apk.dn$if  reason: invalid class name */
    /* loaded from: classes8.dex */
    public static class Cif implements zm<Integer, ParcelFileDescriptor> {

        /* renamed from: do  reason: not valid java name */
        public final Resources f944do;

        public Cif(Resources resources) {
            this.f944do = resources;
        }

        @Override // com.apk.zm
        /* renamed from: do */
        public void mo54do() {
        }

        @Override // com.apk.zm
        @NonNull
        /* renamed from: for */
        public ym<Integer, ParcelFileDescriptor> mo55for(cn cnVar) {
            return new dn(this.f944do, cnVar.m368for(Uri.class, ParcelFileDescriptor.class));
        }
    }

    /* compiled from: ResourceLoader.java */
    /* renamed from: com.apk.dn$new  reason: invalid class name */
    /* loaded from: classes8.dex */
    public static class Cnew implements zm<Integer, Uri> {

        /* renamed from: do  reason: not valid java name */
        public final Resources f945do;

        public Cnew(Resources resources) {
            this.f945do = resources;
        }

        @Override // com.apk.zm
        /* renamed from: do */
        public void mo54do() {
        }

        @Override // com.apk.zm
        @NonNull
        /* renamed from: for */
        public ym<Integer, Uri> mo55for(cn cnVar) {
            return new dn(this.f945do, gn.f1610do);
        }
    }

    public dn(Resources resources, ym<Uri, Data> ymVar) {
        this.f941if = resources;
        this.f940do = ymVar;
    }

    @Override // com.apk.ym
    /* renamed from: do */
    public boolean mo52do(@NonNull Integer num) {
        return true;
    }

    @Override // com.apk.ym
    /* renamed from: if */
    public ym.Cdo mo53if(@NonNull Integer num, int i, int i2, @NonNull mj mjVar) {
        Uri uri;
        Integer num2 = num;
        try {
            uri = Uri.parse("android.resource://" + this.f941if.getResourcePackageName(num2.intValue()) + '/' + this.f941if.getResourceTypeName(num2.intValue()) + '/' + this.f941if.getResourceEntryName(num2.intValue()));
        } catch (Resources.NotFoundException unused) {
            if (Log.isLoggable("ResourceLoader", 5)) {
                String str = "Received invalid resource id: " + num2;
            }
            uri = null;
        }
        if (uri == null) {
            return null;
        }
        return this.f940do.mo53if(uri, i, i2, mjVar);
    }
}
