package com.tencent.bugly.crashreport.common.info;

import android.os.Parcel;
import android.os.Parcelable;
/* compiled from: BUGLY */
/* loaded from: classes7.dex */
public class PlugInBean implements Parcelable {
    public static final Parcelable.Creator<PlugInBean> CREATOR = new Parcelable.Creator<PlugInBean>() { // from class: com.tencent.bugly.crashreport.common.info.PlugInBean.1
        @Override // android.os.Parcelable.Creator
        public final /* synthetic */ PlugInBean createFromParcel(Parcel parcel) {
            return new PlugInBean(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public final /* bridge */ /* synthetic */ PlugInBean[] newArray(int i) {
            return new PlugInBean[i];
        }
    };

    /* renamed from: a  reason: collision with root package name */
    public final String f12030a;
    public final String b;
    public final String c;

    public PlugInBean(String str, String str2, String str3) {
        this.f12030a = str;
        this.b = str2;
        this.c = str3;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public String toString() {
        return "plid:" + this.f12030a + " plV:" + this.b + " plUUID:" + this.c;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.f12030a);
        parcel.writeString(this.b);
        parcel.writeString(this.c);
    }

    public PlugInBean(Parcel parcel) {
        this.f12030a = parcel.readString();
        this.b = parcel.readString();
        this.c = parcel.readString();
    }
}
