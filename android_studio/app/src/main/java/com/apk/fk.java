package com.apk;

import android.content.ContentResolver;
import android.content.UriMatcher;
import android.net.Uri;
import androidx.annotation.NonNull;
import java.io.IOException;
import java.io.InputStream;

/* compiled from: StreamLocalUriFetcher.java */
/* loaded from: classes8.dex */
public class fk extends ck<InputStream> {

    /* renamed from: new  reason: not valid java name */
    public static final UriMatcher f1393new;

    static {
        UriMatcher uriMatcher = new UriMatcher(-1);
        f1393new = uriMatcher;
        uriMatcher.addURI("com.android.contacts", "contacts/lookup/*/#", 1);
        f1393new.addURI("com.android.contacts", "contacts/lookup/*", 1);
        f1393new.addURI("com.android.contacts", "contacts/#/photo", 2);
        f1393new.addURI("com.android.contacts", "contacts/#", 3);
        f1393new.addURI("com.android.contacts", "contacts/#/display_photo", 4);
        f1393new.addURI("com.android.contacts", "phone_lookup/*", 5);
    }

    public fk(ContentResolver contentResolver, Uri uri) {
        super(contentResolver, uri);
    }

    @Override // com.apk.uj
    @NonNull
    /* renamed from: do */
    public Class<InputStream> mo58do() {
        return InputStream.class;
    }

    @Override // com.apk.ck
    /* renamed from: for */
    public void mo351for(InputStream inputStream) throws IOException {
        inputStream.close();
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x0025 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0026  */
    @Override // com.apk.ck
    /* renamed from: new */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public java.io.InputStream mo352new(android.net.Uri r4, android.content.ContentResolver r5) throws java.io.FileNotFoundException {
        /*
            r3 = this;
            android.content.UriMatcher r0 = com.apk.fk.f1393new
            int r0 = r0.match(r4)
            r1 = 1
            if (r0 == r1) goto L19
            r2 = 3
            if (r0 == r2) goto L14
            r2 = 5
            if (r0 == r2) goto L19
            java.io.InputStream r5 = r5.openInputStream(r4)
            goto L23
        L14:
            java.io.InputStream r5 = android.provider.ContactsContract.Contacts.openContactPhotoInputStream(r5, r4, r1)
            goto L23
        L19:
            android.net.Uri r0 = android.provider.ContactsContract.Contacts.lookupContact(r5, r4)
            if (r0 == 0) goto L32
            java.io.InputStream r5 = android.provider.ContactsContract.Contacts.openContactPhotoInputStream(r5, r0, r1)
        L23:
            if (r5 == 0) goto L26
            return r5
        L26:
            java.io.FileNotFoundException r5 = new java.io.FileNotFoundException
            java.lang.String r0 = "InputStream is null for "
            java.lang.String r4 = com.apk.Cgoto.m1008new(r0, r4)
            r5.<init>(r4)
            throw r5
        L32:
            java.io.FileNotFoundException r4 = new java.io.FileNotFoundException
            java.lang.String r5 = "Contact cannot be found"
            r4.<init>(r5)
            throw r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.apk.fk.mo352new(android.net.Uri, android.content.ContentResolver):java.lang.Object");
    }
}
