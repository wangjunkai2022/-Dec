package com.apk;

import android.content.Context;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.io.IOException;
import java.util.List;

/* compiled from: ResourceDrawableDecoder.java */
/* loaded from: classes8.dex */
public class bp implements oj<Uri, Drawable> {

    /* renamed from: do  reason: not valid java name */
    public final Context f403do;

    public bp(Context context) {
        this.f403do = context.getApplicationContext();
    }

    @Override // com.apk.oj
    /* renamed from: do  reason: not valid java name */
    public boolean mo257do(@NonNull Uri uri, @NonNull mj mjVar) throws IOException {
        return uri.getScheme().equals("android.resource");
    }

    @Nullable
    /* renamed from: for  reason: not valid java name */
    public gl m258for(@NonNull Uri uri) {
        Context context;
        int parseInt;
        String authority = uri.getAuthority();
        if (authority.equals(this.f403do.getPackageName())) {
            context = this.f403do;
        } else {
            try {
                context = this.f403do.createPackageContext(authority, 0);
            } catch (PackageManager.NameNotFoundException e) {
                if (authority.contains(this.f403do.getPackageName())) {
                    context = this.f403do;
                } else {
                    throw new IllegalArgumentException(Cgoto.m1008new("Failed to obtain context or unrecognized Uri format for: ", uri), e);
                }
            }
        }
        List<String> pathSegments = uri.getPathSegments();
        if (pathSegments.size() == 2) {
            List<String> pathSegments2 = uri.getPathSegments();
            String authority2 = uri.getAuthority();
            String str = pathSegments2.get(0);
            String str2 = pathSegments2.get(1);
            parseInt = context.getResources().getIdentifier(str2, str, authority2);
            if (parseInt == 0) {
                parseInt = Resources.getSystem().getIdentifier(str2, str, "android");
            }
            if (parseInt == 0) {
                throw new IllegalArgumentException(Cgoto.m1008new("Failed to find resource id for: ", uri));
            }
        } else if (pathSegments.size() == 1) {
            try {
                parseInt = Integer.parseInt(uri.getPathSegments().get(0));
            } catch (NumberFormatException e2) {
                throw new IllegalArgumentException(Cgoto.m1008new("Unrecognized Uri format: ", uri), e2);
            }
        } else {
            throw new IllegalArgumentException(Cgoto.m1008new("Unrecognized Uri format: ", uri));
        }
        Drawable m3085do = yo.m3085do(this.f403do, context, parseInt, null);
        if (m3085do != null) {
            return new ap(m3085do);
        }
        return null;
    }

    @Override // com.apk.oj
    @Nullable
    /* renamed from: if  reason: not valid java name */
    public /* bridge */ /* synthetic */ gl<Drawable> mo259if(@NonNull Uri uri, int i, int i2, @NonNull mj mjVar) throws IOException {
        return m258for(uri);
    }
}
