package com.ss.android.socialbase.downloader.model;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import com.apk.Cgoto;
/* loaded from: classes7.dex */
public class c implements Parcelable, Comparable {
    public static final Parcelable.Creator<c> CREATOR = new Parcelable.Creator<c>() { // from class: com.ss.android.socialbase.downloader.model.c.1
        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public c createFromParcel(Parcel parcel) {
            return new c(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public c[] newArray(int i) {
            return new c[i];
        }
    };

    /* renamed from: a  reason: collision with root package name */
    public final String f11986a;
    public final String b;

    public c(String str, String str2) {
        this.f11986a = str;
        this.b = str2;
    }

    public String a() {
        return this.f11986a;
    }

    public String b() {
        return this.b;
    }

    @Override // java.lang.Comparable
    public int compareTo(Object obj) {
        if (obj instanceof c) {
            c cVar = (c) obj;
            if (TextUtils.equals(this.f11986a, cVar.a())) {
                return 0;
            }
            String str = this.f11986a;
            if (str == null) {
                return -1;
            }
            int compareTo = str.compareTo(cVar.a());
            if (compareTo > 0) {
                return 1;
            }
            return compareTo < 0 ? -1 : 0;
        }
        return 1;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || c.class != obj.getClass()) {
            return false;
        }
        c cVar = (c) obj;
        return TextUtils.equals(this.f11986a, cVar.f11986a) && TextUtils.equals(this.b, cVar.b);
    }

    public int hashCode() {
        String str = this.f11986a;
        int hashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.b;
        return hashCode + (str2 != null ? str2.hashCode() : 0);
    }

    public String toString() {
        StringBuilder m1016super = Cgoto.m1016super("HttpHeader{name='");
        Cgoto.m987abstract(m1016super, this.f11986a, '\'', ", value='");
        m1016super.append(this.b);
        m1016super.append('\'');
        m1016super.append('}');
        return m1016super.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.f11986a);
        parcel.writeString(this.b);
    }

    public c(Parcel parcel) {
        this.f11986a = parcel.readString();
        this.b = parcel.readString();
    }
}
