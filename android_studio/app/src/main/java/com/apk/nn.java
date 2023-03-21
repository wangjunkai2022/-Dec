package com.apk;

import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.os.Build;
import android.os.Environment;
import android.os.ParcelFileDescriptor;
import android.provider.MediaStore;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import com.apk.uj;
import com.apk.ym;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.InputStream;

/* compiled from: QMediaStoreUriLoader.java */
@RequiresApi(29)
/* loaded from: classes8.dex */
public final class nn<DataT> implements ym<Uri, DataT> {

    /* renamed from: do  reason: not valid java name */
    public final Context f3259do;

    /* renamed from: for  reason: not valid java name */
    public final ym<Uri, DataT> f3260for;

    /* renamed from: if  reason: not valid java name */
    public final ym<File, DataT> f3261if;

    /* renamed from: new  reason: not valid java name */
    public final Class<DataT> f3262new;

    /* compiled from: QMediaStoreUriLoader.java */
    /* renamed from: com.apk.nn$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public static abstract class Cdo<DataT> implements zm<Uri, DataT> {

        /* renamed from: do  reason: not valid java name */
        public final Context f3263do;

        /* renamed from: if  reason: not valid java name */
        public final Class<DataT> f3264if;

        public Cdo(Context context, Class<DataT> cls) {
            this.f3263do = context;
            this.f3264if = cls;
        }

        @Override // com.apk.zm
        /* renamed from: do */
        public final void mo54do() {
        }

        @Override // com.apk.zm
        @NonNull
        /* renamed from: for */
        public final ym<Uri, DataT> mo55for(@NonNull cn cnVar) {
            return new nn(this.f3263do, cnVar.m368for(File.class, this.f3264if), cnVar.m368for(Uri.class, this.f3264if), this.f3264if);
        }
    }

    /* compiled from: QMediaStoreUriLoader.java */
    @RequiresApi(29)
    /* renamed from: com.apk.nn$for  reason: invalid class name */
    /* loaded from: classes8.dex */
    public static final class Cfor extends Cdo<InputStream> {
        public Cfor(Context context) {
            super(context, InputStream.class);
        }
    }

    /* compiled from: QMediaStoreUriLoader.java */
    @RequiresApi(29)
    /* renamed from: com.apk.nn$if  reason: invalid class name */
    /* loaded from: classes8.dex */
    public static final class Cif extends Cdo<ParcelFileDescriptor> {
        public Cif(Context context) {
            super(context, ParcelFileDescriptor.class);
        }
    }

    /* compiled from: QMediaStoreUriLoader.java */
    /* renamed from: com.apk.nn$new  reason: invalid class name */
    /* loaded from: classes8.dex */
    public static final class Cnew<DataT> implements uj<DataT> {

        /* renamed from: catch  reason: not valid java name */
        public static final String[] f3265catch = {"_data"};
        @Nullable

        /* renamed from: break  reason: not valid java name */
        public volatile uj<DataT> f3266break;

        /* renamed from: case  reason: not valid java name */
        public final int f3267case;

        /* renamed from: do  reason: not valid java name */
        public final Context f3268do;

        /* renamed from: else  reason: not valid java name */
        public final mj f3269else;

        /* renamed from: for  reason: not valid java name */
        public final ym<Uri, DataT> f3270for;

        /* renamed from: goto  reason: not valid java name */
        public final Class<DataT> f3271goto;

        /* renamed from: if  reason: not valid java name */
        public final ym<File, DataT> f3272if;

        /* renamed from: new  reason: not valid java name */
        public final Uri f3273new;

        /* renamed from: this  reason: not valid java name */
        public volatile boolean f3274this;

        /* renamed from: try  reason: not valid java name */
        public final int f3275try;

        public Cnew(Context context, ym<File, DataT> ymVar, ym<Uri, DataT> ymVar2, Uri uri, int i, int i2, mj mjVar, Class<DataT> cls) {
            this.f3268do = context.getApplicationContext();
            this.f3272if = ymVar;
            this.f3270for = ymVar2;
            this.f3273new = uri;
            this.f3275try = i;
            this.f3267case = i2;
            this.f3269else = mjVar;
            this.f3271goto = cls;
        }

        @Override // com.apk.uj
        public void cancel() {
            this.f3274this = true;
            uj<DataT> ujVar = this.f3266break;
            if (ujVar != null) {
                ujVar.cancel();
            }
        }

        @Override // com.apk.uj
        /* renamed from: case */
        public void mo57case(@NonNull ni niVar, @NonNull uj.Cdo<? super DataT> cdo) {
            try {
                uj<DataT> m1895for = m1895for();
                if (m1895for == null) {
                    cdo.mo212for(new IllegalArgumentException("Failed to build fetcher for: " + this.f3273new));
                    return;
                }
                this.f3266break = m1895for;
                if (this.f3274this) {
                    cancel();
                } else {
                    m1895for.mo57case(niVar, cdo);
                }
            } catch (FileNotFoundException e) {
                cdo.mo212for(e);
            }
        }

        @Override // com.apk.uj
        @NonNull
        /* renamed from: do */
        public Class<DataT> mo58do() {
            return this.f3271goto;
        }

        @Nullable
        /* renamed from: for  reason: not valid java name */
        public final uj<DataT> m1895for() throws FileNotFoundException {
            ym.Cdo<DataT> mo53if;
            Cursor cursor = null;
            if (Environment.isExternalStorageLegacy()) {
                ym<File, DataT> ymVar = this.f3272if;
                Uri uri = this.f3273new;
                try {
                    Cursor query = this.f3268do.getContentResolver().query(uri, f3265catch, null, null, null);
                    if (query != null) {
                        try {
                            if (query.moveToFirst()) {
                                String string = query.getString(query.getColumnIndexOrThrow("_data"));
                                if (!TextUtils.isEmpty(string)) {
                                    File file = new File(string);
                                    query.close();
                                    mo53if = ymVar.mo53if(file, this.f3275try, this.f3267case, this.f3269else);
                                } else {
                                    throw new FileNotFoundException("File path was empty in media store for: " + uri);
                                }
                            }
                        } catch (Throwable th) {
                            th = th;
                            cursor = query;
                            if (cursor != null) {
                                cursor.close();
                            }
                            throw th;
                        }
                    }
                    throw new FileNotFoundException("Failed to media store entry for: " + uri);
                } catch (Throwable th2) {
                    th = th2;
                }
            } else {
                mo53if = this.f3270for.mo53if(this.f3268do.checkSelfPermission("android.permission.ACCESS_MEDIA_LOCATION") == 0 ? MediaStore.setRequireOriginal(this.f3273new) : this.f3273new, this.f3275try, this.f3267case, this.f3269else);
            }
            if (mo53if != null) {
                return mo53if.f6004for;
            }
            return null;
        }

        @Override // com.apk.uj
        /* renamed from: if */
        public void mo60if() {
            uj<DataT> ujVar = this.f3266break;
            if (ujVar != null) {
                ujVar.mo60if();
            }
        }

        @Override // com.apk.uj
        @NonNull
        /* renamed from: try */
        public dj mo61try() {
            return dj.LOCAL;
        }
    }

    public nn(Context context, ym<File, DataT> ymVar, ym<Uri, DataT> ymVar2, Class<DataT> cls) {
        this.f3259do = context.getApplicationContext();
        this.f3261if = ymVar;
        this.f3260for = ymVar2;
        this.f3262new = cls;
    }

    @Override // com.apk.ym
    /* renamed from: do */
    public boolean mo52do(@NonNull Uri uri) {
        return Build.VERSION.SDK_INT >= 29 && eg.m619transient(uri);
    }

    @Override // com.apk.ym
    /* renamed from: if */
    public ym.Cdo mo53if(@NonNull Uri uri, int i, int i2, @NonNull mj mjVar) {
        Uri uri2 = uri;
        return new ym.Cdo(new vr(uri2), new Cnew(this.f3259do, this.f3261if, this.f3260for, uri2, i, i2, mjVar, this.f3262new));
    }
}
