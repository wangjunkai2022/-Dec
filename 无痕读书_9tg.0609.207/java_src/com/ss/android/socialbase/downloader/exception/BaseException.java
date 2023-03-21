package com.ss.android.socialbase.downloader.exception;

import android.os.Parcel;
import android.os.Parcelable;
import com.apk.Cgoto;
/* loaded from: classes7.dex */
public class BaseException extends Exception implements Parcelable {
    public static final Parcelable.Creator<BaseException> CREATOR = new Parcelable.Creator<BaseException>() { // from class: com.ss.android.socialbase.downloader.exception.BaseException.1
        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public BaseException createFromParcel(Parcel parcel) {
            return new BaseException(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public BaseException[] newArray(int i) {
            return new BaseException[i];
        }
    };
    public static final String TAG = "[d-ex]:";
    public int errorCode;
    public String errorMsg;
    public String extraInfo;

    public BaseException() {
        this.extraInfo = "";
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public int getErrorCode() {
        return this.errorCode;
    }

    public String getErrorMessage() {
        return this.errorMsg;
    }

    public String getExtraInfo() {
        return this.extraInfo;
    }

    public void readFromParcel(Parcel parcel) {
        this.errorCode = parcel.readInt();
        this.errorMsg = parcel.readString();
        this.extraInfo = parcel.readString();
    }

    public void setErrorMsg(String str) {
        this.errorMsg = str;
    }

    public void setExtraInfo(String str) {
        this.extraInfo = str;
    }

    @Override // java.lang.Throwable
    public String toString() {
        StringBuilder m1016super = Cgoto.m1016super("BaseException{errorCode=");
        m1016super.append(this.errorCode);
        m1016super.append(", errorMsg='");
        m1016super.append(this.errorMsg);
        m1016super.append('\'');
        m1016super.append('}');
        return m1016super.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.errorCode);
        parcel.writeString(this.errorMsg);
        parcel.writeString(this.extraInfo);
    }

    public BaseException(int i, String str) {
        super(Cgoto.m989case(TAG, str));
        this.extraInfo = "";
        this.errorMsg = Cgoto.m989case(TAG, str);
        this.errorCode = i;
    }

    public BaseException(int i, Throwable th) {
        this(i, com.ss.android.socialbase.downloader.i.f.j(th));
    }

    public BaseException(int i, String str, Throwable th) {
        super(Cgoto.m989case(TAG, str), th);
        this.extraInfo = "";
        this.errorMsg = Cgoto.m989case(TAG, str);
        this.errorCode = i;
    }

    public BaseException(Parcel parcel) {
        this.extraInfo = "";
        readFromParcel(parcel);
    }
}
