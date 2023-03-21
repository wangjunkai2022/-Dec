package com.biquge.ebook.app.bean;

/* loaded from: classes8.dex */
public class UserPrivacyBean {
    public String address;
    public String company;
    public String email;
    public String phone;

    public String getAddress() {
        String str = this.address;
        return str == null ? "" : str;
    }

    public String getCompany() {
        String str = this.company;
        return str == null ? "" : str;
    }

    public String getEmail() {
        String str = this.email;
        return str == null ? "" : str;
    }

    public String getPhone() {
        String str = this.phone;
        return str == null ? "" : str;
    }

    public void setAddress(String str) {
        this.address = str;
    }

    public void setCompany(String str) {
        this.company = str;
    }

    public void setEmail(String str) {
        this.email = str;
    }

    public void setPhone(String str) {
        this.phone = str;
    }
}
