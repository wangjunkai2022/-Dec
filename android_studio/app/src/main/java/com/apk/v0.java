package com.apk;

import android.content.ContentValues;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.text.TextUtils;
import androidx.core.app.NotificationCompat;
import com.baidu.tts.client.SpeechSynthesizer;
import com.biquge.ebook.app.app.AppContext;
import com.biquge.ebook.app.bean.User;
import java.util.ArrayList;
import org.json.JSONObject;
import org.litepal.LitePal;

/* compiled from: UserHelper.java */
/* loaded from: classes8.dex */
public class v0 {

    /* renamed from: if  reason: not valid java name */
    public static v0 f4975if;

    /* renamed from: do  reason: not valid java name */
    public User f4976do;

    public v0() {
        m2737break();
    }

    /* renamed from: if  reason: not valid java name */
    public static String m2735if() {
        StringBuilder sb;
        int i;
        int i2;
        NetworkInfo activeNetworkInfo;
        StringBuilder sb2 = new StringBuilder();
        try {
            sb2.append("plateform=android");
            sb2.append("#");
            StringBuilder sb3 = new StringBuilder();
            sb3.append("sex=");
            sb3.append(w0.m2881import() ? "1" : SpeechSynthesizer.REQUEST_DNS_OFF);
            sb2.append(sb3.toString());
            sb2.append("#");
            sb2.append("pak=" + ze.m3168finally());
            sb2.append("#");
            sb2.append("appname=" + ze.m3166extends());
            sb2.append("#");
            sb2.append("versionName=" + ze.m());
            sb2.append("#");
            sb2.append("osver=" + ze.g());
            sb2.append("#");
            sb2.append("device=" + eg.m613super());
            sb2.append("#");
            sb2.append("brand=" + ze.b());
            sb2.append("#");
            sb2.append("model=" + ze.c());
            sb2.append("#");
            sb2.append("verCode=" + ze.k());
            sb2.append("#");
            sb2.append("channelId=" + ze.m3156abstract());
            sb2.append("#");
            sb = new StringBuilder();
            sb.append("network=");
            i = -1;
            try {
                activeNetworkInfo = ((ConnectivityManager) AppContext.f6392case.getSystemService("connectivity")).getActiveNetworkInfo();
            } catch (Exception unused) {
            }
        } catch (Exception unused2) {
        }
        if (activeNetworkInfo != null) {
            if (activeNetworkInfo.getType() != 1) {
                if (activeNetworkInfo.getType() == 0) {
                    switch (activeNetworkInfo.getSubtype()) {
                        case 1:
                        case 2:
                        case 4:
                        case 7:
                        case 11:
                            i = 2;
                            break;
                        case 3:
                        case 5:
                        case 6:
                        case 8:
                        case 9:
                        case 10:
                        case 12:
                        case 14:
                        case 15:
                            i = 3;
                            break;
                        case 13:
                            i = 4;
                            break;
                    }
                }
            } else {
                i2 = 0;
                sb.append(i2);
                sb2.append(sb.toString());
                sb2.append("#");
                sb2.append("userId=" + m2736try().m2738case());
                sb2.append("#");
                sb2.append("ua=" + eg.m594extends());
                sb2.append("#");
                sb2.append("mac=" + ys.m3116if().f3938for);
                sb2.append("#");
                sb2.append("imei=" + ys.m3116if().f3936do);
                sb2.append("#");
                sb2.append("oaid=" + eg.m609public());
                sb2.append("#");
                sb2.append("androidId=" + ys.m3116if().f3939if);
                return sb2.toString();
            }
        }
        i2 = i;
        sb.append(i2);
        sb2.append(sb.toString());
        sb2.append("#");
        sb2.append("userId=" + m2736try().m2738case());
        sb2.append("#");
        sb2.append("ua=" + eg.m594extends());
        sb2.append("#");
        sb2.append("mac=" + ys.m3116if().f3938for);
        sb2.append("#");
        sb2.append("imei=" + ys.m3116if().f3936do);
        sb2.append("#");
        sb2.append("oaid=" + eg.m609public());
        sb2.append("#");
        sb2.append("androidId=" + ys.m3116if().f3939if);
        return sb2.toString();
    }

    /* renamed from: try  reason: not valid java name */
    public static v0 m2736try() {
        if (f4975if == null) {
            synchronized (v0.class) {
                if (f4975if == null) {
                    f4975if = new v0();
                }
            }
        }
        return f4975if;
    }

    /* renamed from: break  reason: not valid java name */
    public final void m2737break() {
        try {
            this.f4976do = (User) LitePal.findFirst(User.class);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: case  reason: not valid java name */
    public String m2738case() {
        return m2741const() ? this.f4976do.getName() : "";
    }

    /* renamed from: catch  reason: not valid java name */
    public boolean m2739catch() {
        User user = this.f4976do;
        if (user != null) {
            return (TextUtils.isEmpty(user.getPwd()) && this.f4976do.isNeedChanagePwd()) ? false : true;
        }
        return false;
    }

    /* renamed from: class  reason: not valid java name */
    public boolean m2740class() {
        User user = this.f4976do;
        return (user == null || TextUtils.isEmpty(user.getPhone())) ? false : true;
    }

    /* renamed from: const  reason: not valid java name */
    public boolean m2741const() {
        return this.f4976do != null;
    }

    /* renamed from: do  reason: not valid java name */
    public void m2742do(String str, String str2, String str3, String str4, String str5) {
        if (this.f4976do != null) {
            if (!TextUtils.isEmpty(str2)) {
                this.f4976do.setPhone(str2);
            }
            if (!TextUtils.isEmpty(str3)) {
                this.f4976do.setPwd(str3);
            }
            if (!TextUtils.isEmpty(str4)) {
                this.f4976do.setEmail(str4);
            }
            if (!TextUtils.isEmpty(str5)) {
                this.f4976do.setNickName(str5);
            }
            ContentValues contentValues = new ContentValues();
            if (!TextUtils.isEmpty(str2)) {
                contentValues.put("phone", this.f4976do.getPhone());
            }
            if (!TextUtils.isEmpty(str3)) {
                contentValues.put("pwd", this.f4976do.getPwd());
            }
            if (!TextUtils.isEmpty(str5)) {
                contentValues.put("nickName", this.f4976do.getNickName());
            }
            LitePal.updateAll(User.class, contentValues, "name = ?", str);
        }
    }

    /* renamed from: else  reason: not valid java name */
    public User m2743else() {
        if (this.f4976do == null) {
            m2737break();
        }
        return this.f4976do;
    }

    /* renamed from: final  reason: not valid java name */
    public void m2744final(sg0 sg0Var) {
        if (sg0Var == null || sg0Var.size() <= 0) {
            return;
        }
        String str = "";
        for (String str2 : sg0Var.m2457try("Set-Cookie")) {
            str = Cgoto.m996else(str, str2.substring(0, str2.indexOf(";")), ";");
        }
        if (TextUtils.isEmpty(str)) {
            return;
        }
        tt.f4763do.putString("SP_LOGIN_COOKIE_VALUE", str);
    }

    /* renamed from: for  reason: not valid java name */
    public String m2745for(String str) {
        try {
            return eg.m602instanceof(str) ? str.replaceAll("(\\d{3})\\d{5}(\\d{3})", "$1****$2") : str;
        } catch (Exception unused) {
            return str;
        }
    }

    /* renamed from: goto  reason: not valid java name */
    public String m2746goto() {
        return m2741const() ? this.f4976do.getUserid() : "";
    }

    /* renamed from: new  reason: not valid java name */
    public String m2747new() {
        String str;
        if (m2741const()) {
            str = this.f4976do.getName();
            if (TextUtils.isEmpty(str)) {
                str = this.f4976do.getNickName();
            }
            if (TextUtils.isEmpty(str)) {
                str = this.f4976do.getPhone();
            }
            if (TextUtils.isEmpty(str)) {
                str = this.f4976do.getUserid();
            }
        } else {
            str = "";
        }
        return m2745for(str);
    }

    /* renamed from: super  reason: not valid java name */
    public void m2748super(boolean z, int i, String str, String str2, JSONObject jSONObject) {
        tt.f4763do.putBoolean("SP_ADD_BOOK_SHELF_AUTO_LOGIN_KEY", false);
        boolean z2 = LitePal.findFirst(User.class) == null ? true : z;
        try {
            if (this.f4976do == null || z2) {
                this.f4976do = new User();
            }
            this.f4976do.setLoginType(i);
            this.f4976do.setName(str);
            this.f4976do.setPwd(str2);
            JSONObject optJSONObject = jSONObject.optJSONObject("UserInfo");
            if (optJSONObject != null) {
                if (optJSONObject.has("UserId")) {
                    this.f4976do.setUserid(optJSONObject.optString("UserId"));
                }
                if (optJSONObject.has("UserName")) {
                    this.f4976do.setName(optJSONObject.optString("UserName"));
                }
                if (optJSONObject.has("NickName")) {
                    this.f4976do.setNickName(optJSONObject.optString("NickName"));
                }
                if (optJSONObject.has("Phone")) {
                    this.f4976do.setPhone(optJSONObject.optString("Phone"));
                }
                if (optJSONObject.has("Email")) {
                    this.f4976do.setEmail(optJSONObject.optString("Email"));
                }
                this.f4976do.setVipLevel(optJSONObject.optInt("VipLevel", 0));
                this.f4976do.setNoAdTitle(optJSONObject.optString("NoAdTitle"));
                boolean optBoolean = optJSONObject.optBoolean("IsNoAd", false);
                this.f4976do.setNoAd(optBoolean);
                boolean optBoolean2 = optJSONObject.optBoolean("KingPower", false);
                this.f4976do.setKingPower(optBoolean2);
                if (optBoolean || optBoolean2) {
                    Cfinally.m797else().f1346do = false;
                }
                this.f4976do.setExtInfo(optJSONObject.optString("ExtInfo"));
                boolean optBoolean3 = optJSONObject.optBoolean("IsFirstLogin");
                if (m2743else() != null && m2743else().isFirstLogin()) {
                    optBoolean3 = true;
                }
                this.f4976do.setFirstLogin(optBoolean3);
                this.f4976do.setBalance(optJSONObject.optString("Balance"));
                this.f4976do.setKPTime(optJSONObject.optString("KPTime"));
                this.f4976do.setNeedChanagePwd(optJSONObject.optBoolean("NeedChanagePwd"));
            }
            tt.f4763do.putBoolean("SP_ADD_BOOK_SHELF_AUTO_LOGIN_KEY", false);
            if (LitePal.count(User.class) == 0) {
                try {
                    this.f4976do.save();
                } catch (Exception e) {
                    e.printStackTrace();
                    if (LitePal.count(User.class) == 0) {
                        ArrayList arrayList = new ArrayList();
                        arrayList.add(this.f4976do);
                        LitePal.saveAll(arrayList);
                    }
                }
            } else {
                ContentValues contentValues = new ContentValues();
                contentValues.put("userid", this.f4976do.getUserid());
                contentValues.put("name", this.f4976do.getName());
                contentValues.put("pwd", this.f4976do.getPwd());
                contentValues.put("avatar", this.f4976do.getAvatar());
                contentValues.put(NotificationCompat.CATEGORY_EMAIL, this.f4976do.getEmail());
                contentValues.put("vipLevel", Integer.valueOf(this.f4976do.getVipLevel()));
                contentValues.put("noAdTitle", this.f4976do.getNoAdTitle());
                contentValues.put("isNoAd", Boolean.valueOf(this.f4976do.isNoAd()));
                contentValues.put("isFirstLogin", Boolean.valueOf(this.f4976do.isFirstLogin()));
                contentValues.put("extInfo", this.f4976do.getExtInfo());
                contentValues.put("Balance", this.f4976do.getBalance());
                contentValues.put("signDate", this.f4976do.getSignDate());
                contentValues.put("signdays", Integer.valueOf(this.f4976do.getSigndays()));
                contentValues.put("signHistory", this.f4976do.getSignHistory());
                contentValues.put("KingPower", Boolean.valueOf(this.f4976do.isKingPower()));
                contentValues.put("KPTime", this.f4976do.getKPTime());
                contentValues.put("messageCode", this.f4976do.getMessageCode());
                contentValues.put("loginType", Integer.valueOf(this.f4976do.getLoginType()));
                contentValues.put("nickName", this.f4976do.getNickName());
                contentValues.put("phone", this.f4976do.getPhone());
                contentValues.put("NeedChanagePwd", Boolean.valueOf(this.f4976do.isNeedChanagePwd()));
                LitePal.updateAll(User.class, contentValues, new String[0]);
            }
            if (!ze.D("SP_USER_NICKNAME_KEY")) {
                tt.f4763do.putString("SP_USER_NICKNAME_KEY", this.f4976do.getNickName());
            }
            if (!tt.m2620do("SP_USER_NICKNAME_KEY", "").equals(this.f4976do.getNickName())) {
                tt.f4763do.putBoolean("SP_USER_AUDIT_NICKNAME_KEY", true);
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        mf.m1713if("login_action", Boolean.valueOf(z2), "message", Boolean.TRUE);
    }

    /* renamed from: this  reason: not valid java name */
    public String m2749this() {
        User user = this.f4976do;
        if (user != null) {
            String nickName = user.getNickName();
            if (TextUtils.isEmpty(nickName)) {
                nickName = this.f4976do.getPhone();
            }
            return m2745for(nickName);
        }
        return "";
    }
}
