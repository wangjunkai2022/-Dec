package com.biquge.ebook.app.bean;

import org.litepal.crud.LitePalSupport;
/* loaded from: classes8.dex */
public class User extends LitePalSupport {
    public String Balance;
    public String KPTime;
    public boolean KingPower;
    public boolean NeedChanagePwd;
    public String avatar;
    public String email;
    public String extInfo;
    public boolean isFirstLogin;
    public boolean isNoAd;
    public int loginType;
    public String messageCode;
    public String name;
    public String nickName;
    public String noAdTitle;
    public String phone;
    public String pwd;
    public String signDate;
    public String signHistory;
    public int signdays;
    public String userid;
    public int vipLevel;

    public String getAvatar() {
        String str = this.avatar;
        return str == null ? "" : str;
    }

    public String getBalance() {
        String str = this.Balance;
        return str == null ? "" : str;
    }

    public String getEmail() {
        String str = this.email;
        return str == null ? "" : str;
    }

    public String getExtInfo() {
        String str = this.extInfo;
        return str == null ? "" : str;
    }

    public String getKPTime() {
        String str = this.KPTime;
        return str == null ? "" : str;
    }

    public int getLoginType() {
        return this.loginType;
    }

    public String getMessageCode() {
        String str = this.messageCode;
        return str == null ? "" : str;
    }

    public String getName() {
        String str = this.name;
        return str == null ? "" : str;
    }

    public String getNickName() {
        String str = this.nickName;
        return str == null ? "" : str;
    }

    public String getNoAdTitle() {
        String str = this.noAdTitle;
        return str == null ? "" : str;
    }

    public String getPhone() {
        String str = this.phone;
        return str == null ? "" : str;
    }

    public String getPwd() {
        String str = this.pwd;
        return str == null ? "" : str;
    }

    public String getSignDate() {
        String str = this.signDate;
        return str == null ? "" : str;
    }

    public String getSignHistory() {
        String str = this.signHistory;
        return str == null ? "" : str;
    }

    public int getSigndays() {
        return this.signdays;
    }

    public String getUserid() {
        String str = this.userid;
        return str == null ? "" : str;
    }

    public int getVipLevel() {
        return this.vipLevel;
    }

    public boolean isFirstLogin() {
        return this.isFirstLogin;
    }

    public boolean isKingPower() {
        return this.KingPower;
    }

    public boolean isNeedChanagePwd() {
        return this.NeedChanagePwd;
    }

    public boolean isNoAd() {
        return this.isNoAd;
    }

    public void setAvatar(String str) {
        this.avatar = str;
    }

    public void setBalance(String str) {
        this.Balance = str;
    }

    public void setEmail(String str) {
        this.email = str;
    }

    public void setExtInfo(String str) {
        this.extInfo = str;
    }

    public void setFirstLogin(boolean z) {
        this.isFirstLogin = z;
    }

    public void setKPTime(String str) {
        this.KPTime = str;
    }

    public void setKingPower(boolean z) {
        this.KingPower = z;
    }

    public void setLoginType(int i) {
        this.loginType = i;
    }

    public void setMessageCode(String str) {
        this.messageCode = str;
    }

    public void setName(String str) {
        this.name = str;
    }

    public void setNeedChanagePwd(boolean z) {
        this.NeedChanagePwd = z;
    }

    public void setNickName(String str) {
        this.nickName = str;
    }

    public void setNoAd(boolean z) {
        this.isNoAd = z;
    }

    public void setNoAdTitle(String str) {
        this.noAdTitle = str;
    }

    public void setPhone(String str) {
        this.phone = str;
    }

    public void setPwd(String str) {
        this.pwd = str;
    }

    public void setSignDate(String str) {
        this.signDate = str;
    }

    public void setSignHistory(String str) {
        this.signHistory = str;
    }

    public void setSigndays(int i) {
        this.signdays = i;
    }

    public void setUserid(String str) {
        this.userid = str;
    }

    public void setVipLevel(int i) {
        this.vipLevel = i;
    }
}
