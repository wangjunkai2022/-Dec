package com.apk;

import android.text.TextUtils;
import androidx.appcompat.widget.ActivityChooserModel;
import androidx.core.app.NotificationCompat;
import androidx.core.app.NotificationCompatJellybean;
import com.biquge.ebook.app.bean.BaiduTtsConfigBean;
import com.biquge.ebook.app.bean.BarrageConfigBean;
import com.biquge.ebook.app.bean.BigDataAgentBean;
import com.biquge.ebook.app.bean.DiscoverBean;
import com.biquge.ebook.app.bean.MhtgTwoBean;
import com.biquge.ebook.app.bean.MyInfoMsgBean;
import com.biquge.ebook.app.bean.NewShareDisBean;
import com.biquge.ebook.app.bean.NewYyConfBean;
import com.biquge.ebook.app.bean.SameCommendBean;
import com.biquge.ebook.app.bean.SrhConfBean;
import com.biquge.ebook.app.bean.StoreConfigBean;
import com.biquge.ebook.app.bean.UserPrivacyBean;
import com.biquge.ebook.app.bean.WebConfBean;
import com.biquge.ebook.app.helper.req.convert.Convert;
import com.qq.e.comm.pi.ACTD;
import com.swl.gg.sdk.TrAdSdk;
import com.tr.comment.sdk.TrCommentSdk;
import com.tr.danmu.sdk.TrDanMuSdk;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;
/* compiled from: AdViewUtil.java */
/* renamed from: com.apk.continue  reason: invalid class name */
/* loaded from: classes8.dex */
public class Ccontinue {

    /* renamed from: default  reason: not valid java name */
    public static Ccontinue f705default;

    /* renamed from: break  reason: not valid java name */
    public MhtgTwoBean f706break;

    /* renamed from: case  reason: not valid java name */
    public List<StoreConfigBean> f707case;

    /* renamed from: catch  reason: not valid java name */
    public List<StoreConfigBean> f708catch;

    /* renamed from: class  reason: not valid java name */
    public SrhConfBean f709class;

    /* renamed from: const  reason: not valid java name */
    public WebConfBean f710const;

    /* renamed from: do  reason: not valid java name */
    public gf f711do;

    /* renamed from: else  reason: not valid java name */
    public SameCommendBean f712else;

    /* renamed from: final  reason: not valid java name */
    public BaiduTtsConfigBean f713final;

    /* renamed from: for  reason: not valid java name */
    public NewYyConfBean f714for;

    /* renamed from: goto  reason: not valid java name */
    public BarrageConfigBean f715goto;

    /* renamed from: if  reason: not valid java name */
    public boolean f716if;

    /* renamed from: import  reason: not valid java name */
    public DiscoverBean f717import;

    /* renamed from: native  reason: not valid java name */
    public JSONObject f718native;

    /* renamed from: new  reason: not valid java name */
    public NewShareDisBean f719new;

    /* renamed from: public  reason: not valid java name */
    public JSONObject f720public;

    /* renamed from: return  reason: not valid java name */
    public JSONArray f721return;

    /* renamed from: static  reason: not valid java name */
    public boolean f722static;

    /* renamed from: super  reason: not valid java name */
    public UserPrivacyBean f723super;

    /* renamed from: switch  reason: not valid java name */
    public boolean f724switch;

    /* renamed from: this  reason: not valid java name */
    public MhtgTwoBean f725this;

    /* renamed from: throw  reason: not valid java name */
    public int f726throw;

    /* renamed from: throws  reason: not valid java name */
    public MyInfoMsgBean f727throws;

    /* renamed from: try  reason: not valid java name */
    public int f728try;

    /* renamed from: while  reason: not valid java name */
    public hf f729while;

    public Ccontinue() {
        gf gfVar = bf.f299do;
        this.f711do = gf.TUIGUANG;
        this.f716if = true;
        this.f726throw = 1;
        hf hfVar = bf.f301if;
        this.f729while = hf.BOOK_COMIC;
    }

    /* renamed from: do  reason: not valid java name */
    public static List<String> m378do(JSONObject jSONObject) {
        String str;
        ArrayList arrayList = new ArrayList();
        JSONArray optJSONArray = jSONObject.optJSONArray("chls");
        String str2 = null;
        if (optJSONArray != null) {
            str = null;
            for (int i = 0; i < optJSONArray.length(); i++) {
                JSONObject optJSONObject = optJSONArray.optJSONObject(i);
                if (optJSONObject != null) {
                    String optString = optJSONObject.optString(com.umeng.analytics.pro.ak.aF);
                    if (!TextUtils.isEmpty(optString)) {
                        String m3156abstract = ze.m3156abstract();
                        String[] split = optString.split(",");
                        int length = split.length;
                        int i2 = 0;
                        while (true) {
                            if (i2 >= length) {
                                break;
                            } else if (m3156abstract.equals(split[i2])) {
                                str2 = optJSONObject.optString("ids_man");
                                str = optJSONObject.optString("ids_lady");
                                break;
                            } else {
                                i2++;
                            }
                        }
                    }
                }
            }
        } else {
            str = null;
        }
        if (TextUtils.isEmpty(str2)) {
            str2 = jSONObject.optString("def_man");
        }
        if (TextUtils.isEmpty(str)) {
            str = jSONObject.optString("def_lady");
        }
        arrayList.add(str2);
        arrayList.add(str);
        return arrayList;
    }

    /* renamed from: if  reason: not valid java name */
    public static Ccontinue m379if() {
        if (f705default == null) {
            synchronized (Ccontinue.class) {
                if (f705default == null) {
                    f705default = new Ccontinue();
                }
            }
        }
        return f705default;
    }

    /* renamed from: case  reason: not valid java name */
    public boolean m380case() {
        hf hfVar = this.f729while;
        return hfVar == hf.BOOK_COMIC || hfVar == hf.COMIC_BOOK;
    }

    /* renamed from: else  reason: not valid java name */
    public boolean m381else() {
        return this.f711do == gf.ZITUI;
    }

    /* renamed from: for  reason: not valid java name */
    public NewShareDisBean m382for() {
        if (ze.E()) {
            return null;
        }
        return this.f719new;
    }

    /* renamed from: goto  reason: not valid java name */
    public void m383goto(JSONObject jSONObject) {
        boolean z;
        String str;
        String str2;
        hf hfVar;
        hf hfVar2;
        String str3;
        String str4;
        List<BaiduTtsConfigBean.YyconfBean> list;
        boolean z2;
        JSONObject optJSONObject;
        JSONObject optJSONObject2;
        JSONObject optJSONObject3;
        JSONObject optJSONObject4;
        JSONObject optJSONObject5;
        JSONObject optJSONObject6;
        JSONObject optJSONObject7;
        JSONArray optJSONArray;
        JSONObject optJSONObject8;
        int optInt;
        JSONObject optJSONObject9;
        int optInt2;
        JSONObject optJSONObject10;
        int optInt3;
        JSONObject optJSONObject11;
        String[] strArr;
        JSONArray jSONArray;
        String str5;
        int i;
        JSONObject optJSONObject12;
        DiscoverBean discoverBean;
        hf hfVar3 = hf.COMIC;
        hf hfVar4 = hf.BOOK;
        JSONObject optJSONObject13 = jSONObject.optJSONObject("discover");
        if (optJSONObject13 != null) {
            String m3168finally = ze.m3168finally();
            String optString = optJSONObject13.optString(NotificationCompatJellybean.KEY_TITLE);
            String optString2 = optJSONObject13.optString("default");
            String optString3 = optJSONObject13.optString("icon");
            boolean z3 = !TextUtils.isEmpty(optString2);
            int optInt4 = optJSONObject13.optInt("pubver", 1);
            if (optInt4 > ze.m3174instanceof("DISCOVER_PUBVER_KEY", 0)) {
                tt.f4763do.putBoolean("SP_IS_VISIBLE_GAME_TAG_VIEW_KEY", true);
                tt.f4763do.putInt("DISCOVER_PUBVER_KEY", optInt4);
            }
            JSONArray optJSONArray2 = optJSONObject13.optJSONArray("conf");
            if (optJSONArray2 != null) {
                int length = optJSONArray2.length();
                int i2 = 0;
                while (true) {
                    if (i2 >= length) {
                        break;
                    }
                    JSONObject optJSONObject14 = optJSONArray2.optJSONObject(i2);
                    if (m3168finally.equals(optJSONObject14.optString("apid"))) {
                        String optString4 = optJSONObject14.optString("url");
                        if (TextUtils.isEmpty(optString4)) {
                            z3 = false;
                        } else {
                            z3 = "1".equals(optJSONObject14.optString("showflag"));
                            optString2 = optString4;
                        }
                    } else {
                        i2++;
                    }
                }
            }
            if (z3) {
                discoverBean = new DiscoverBean();
                discoverBean.setDiscoverUrl(optString2);
                discoverBean.setDiscoverTitle(optString);
                discoverBean.setDiscoverIcon(optString3);
            } else {
                discoverBean = null;
            }
            this.f717import = discoverBean;
        }
        JSONObject optJSONObject15 = jSONObject.optJSONObject("comment");
        String str6 = "openflag";
        if (optJSONObject15 != null && optJSONObject15.has("openflag")) {
            tt.f4763do.putBoolean("SP_OPEN_COMMENT_FLAG_KEY", optJSONObject15.optBoolean("openflag"));
            TrCommentSdk.setCommentHost(optJSONObject15.optString("token_ym"), optJSONObject15.optString("dt_ym"), optJSONObject15.optString("jt_ym"));
        }
        if (w0.m2896throws() && (optJSONObject12 = jSONObject.optJSONObject("plsdk_extra")) != null && optJSONObject12.optBoolean("open_flag")) {
            this.f718native = optJSONObject12;
            this.f720public = optJSONObject12.optJSONObject("ad_conf");
        }
        String optString5 = jSONObject.optString("moduleflag");
        if (!TextUtils.isEmpty(optString5)) {
            this.f729while = ze.m3163default(optString5);
        }
        if (jSONObject.has("xsmhtime")) {
            tt.f4763do.putInt("SP_APP_CHANGE_MODULE_DAY_KEY", jSONObject.optInt("xsmhtime"));
        }
        if (jSONObject.optBoolean("xsmhflag", true)) {
            hf hfVar5 = this.f729while;
            if (hfVar5 != hfVar4 && hfVar5 != hfVar3) {
                tt.f4763do.putString("SP_APP_CONFIG_MODULE_KEY", optString5);
            } else {
                hf hfVar6 = this.f729while;
                hf hfVar7 = bf.f301if;
                if (hfVar6 != hf.BOOK_COMIC) {
                    if (!ze.D("SP_APP_SINGLE_MODULE_FIRST_DATA_KEY")) {
                        tt.f4763do.putLong("SP_APP_SINGLE_MODULE_FIRST_DATA_KEY", System.currentTimeMillis());
                    } else {
                        int m1494do = kg.m1494do(System.currentTimeMillis(), ze.a("SP_APP_SINGLE_MODULE_FIRST_DATA_KEY", System.currentTimeMillis()));
                        if (ze.m3179private("SP_APP_CONFIG_MODULE_BIAOJI_KEY", false) || Math.abs(m1494do) >= ze.m3174instanceof("SP_APP_CHANGE_MODULE_DAY_KEY", 7)) {
                            tt.f4763do.putBoolean("SP_APP_CONFIG_MODULE_BIAOJI_KEY", true);
                            this.f729while = ze.m3163default(tt.m2620do("SP_APP_CONFIG_MODULE_KEY", ""));
                        }
                    }
                }
            }
        }
        if (jSONObject.has("mhpreimgs")) {
            tt.f4763do.putInt("SP_PRELOAD_COMIC_IMAGE_SIZE_KEY", jSONObject.optInt("mhpreimgs"));
        }
        if (jSONObject.has("barrageflag")) {
            tt.f4763do.putBoolean("SP_OPEN_BARRAGE_FLAG_KEY", jSONObject.optBoolean("barrageflag"));
        }
        if (jSONObject.has("barragehost")) {
            TrDanMuSdk.setHost(jSONObject.optString("barragehost"));
        }
        if (jSONObject.has("scads")) {
            this.f726throw = jSONObject.optInt("scads");
        }
        tt.f4763do.putBoolean("SP_FILTER_FLAG_KEY", jSONObject.optBoolean("copyrightflag", true));
        if (jSONObject.has("copyrighttime")) {
            tt.f4763do.putInt("SP_FILTER_AUTO_RESTORE_DAYS_KEY", jSONObject.optInt("copyrighttime"));
        }
        JSONArray optJSONArray3 = jSONObject.optJSONArray("copyright_dis");
        if (optJSONArray3 == null || optJSONArray3.length() <= 0) {
            z = true;
            str = null;
            str2 = null;
        } else {
            String m3156abstract = ze.m3156abstract();
            int length2 = optJSONArray3.length();
            int i3 = 0;
            str = null;
            str2 = null;
            while (i3 < length2) {
                JSONObject optJSONObject16 = optJSONArray3.optJSONObject(i3);
                if (optJSONObject16 != null) {
                    jSONArray = optJSONArray3;
                    String optString6 = optJSONObject16.optString("channel");
                    i = length2;
                    String optString7 = optJSONObject16.optString(ACTD.APPID_KEY);
                    if (!TextUtils.isEmpty(optString7) && (TextUtils.isEmpty(optString6) || optString6.contains(m3156abstract))) {
                        String[] split = optString7.split("&");
                        if (split.length > 0) {
                            int length3 = split.length;
                            str5 = m3156abstract;
                            int i4 = 0;
                            while (i4 < length3) {
                                int i5 = length3;
                                String[] strArr2 = split;
                                if (ze.m3168finally().equals(split[i4])) {
                                    str2 = optJSONObject16.optString("blocks");
                                    str = optJSONObject16.optString("blocks_mh");
                                }
                                i4++;
                                length3 = i5;
                                split = strArr2;
                            }
                        }
                    }
                    str5 = m3156abstract;
                } else {
                    jSONArray = optJSONArray3;
                    str5 = m3156abstract;
                    i = length2;
                }
                i3++;
                optJSONArray3 = jSONArray;
                length2 = i;
                m3156abstract = str5;
            }
            z = true;
        }
        if (ze.m3179private("SP_FILTER_FLAG_KEY", z)) {
            if (TextUtils.isEmpty(tt.m2620do("SP_FILTER_BOOK_NOVEL_KEY", "")) || !TextUtils.isEmpty(str2)) {
                str4 = "open_flag";
            } else {
                str4 = "open_flag";
                tt.f4763do.putBoolean("SP_FILTER_NOVEL_EMPTY_KEY", true);
            }
            if (ze.m3179private("SP_FILTER_NOVEL_EMPTY_KEY", false) || TextUtils.isEmpty(str2)) {
                hfVar = hfVar3;
            } else {
                String[] split2 = str2.split(",");
                int length4 = split2.length;
                hfVar = hfVar3;
                int i6 = 0;
                while (i6 < length4) {
                    int i7 = length4;
                    String str7 = split2[i6];
                    if (!TextUtils.isEmpty(str7)) {
                        strArr = split2;
                        String m989case = Cgoto.m989case("SP_FILTER_NOVEL_TIME_KEY", str7);
                        if (!ze.D(m989case)) {
                            str3 = str6;
                            hfVar2 = hfVar4;
                            tt.f4763do.putLong(m989case, System.currentTimeMillis());
                        } else {
                            hfVar2 = hfVar4;
                            str3 = str6;
                            long a2 = ze.a(m989case, 0L);
                            if (a2 != 0 && Math.abs(kg.m1494do(a2, System.currentTimeMillis())) >= ze.m3174instanceof("SP_FILTER_AUTO_RESTORE_DAYS_KEY", 7)) {
                                tt.f4763do.putBoolean("SP_FILTER_NOVEL_EMPTY_KEY", true);
                                tt.f4763do.putBoolean("SP_FILTER_COMIC_EMPTY_KEY", true);
                                break;
                            }
                        }
                    } else {
                        hfVar2 = hfVar4;
                        strArr = split2;
                        str3 = str6;
                    }
                    i6++;
                    length4 = i7;
                    split2 = strArr;
                    str6 = str3;
                    hfVar4 = hfVar2;
                }
            }
            hfVar2 = hfVar4;
            str3 = str6;
        } else {
            hfVar = hfVar3;
            hfVar2 = hfVar4;
            str3 = "openflag";
            str4 = "open_flag";
        }
        if (!TextUtils.isEmpty(str2)) {
            tt.f4763do.putString("SP_FILTER_BOOK_NOVEL_KEY", str2);
        } else {
            ze.W("SP_FILTER_BOOK_NOVEL_KEY");
        }
        if (ze.m3179private("SP_FILTER_FLAG_KEY", true)) {
            if (!TextUtils.isEmpty(tt.m2620do("SP_FILTER_BOOK_NOVEL_KEY", "")) && TextUtils.isEmpty(str)) {
                tt.f4763do.putBoolean("SP_FILTER_COMIC_EMPTY_KEY", true);
            }
            if (!ze.m3179private("SP_FILTER_COMIC_EMPTY_KEY", false) && !TextUtils.isEmpty(str)) {
                String[] split3 = str.split(",");
                int length5 = split3.length;
                int i8 = 0;
                while (true) {
                    if (i8 >= length5) {
                        break;
                    }
                    String str8 = split3[i8];
                    if (!TextUtils.isEmpty(str8)) {
                        String m989case2 = Cgoto.m989case("SP_FILTER_COMIC_TIME_KEY", str8);
                        if (!ze.D(m989case2)) {
                            tt.f4763do.putLong(m989case2, System.currentTimeMillis());
                        } else {
                            long a3 = ze.a(m989case2, 0L);
                            if (a3 != 0 && Math.abs(kg.m1494do(a3, System.currentTimeMillis())) >= ze.m3174instanceof("SP_FILTER_AUTO_RESTORE_DAYS_KEY", 7)) {
                                tt.f4763do.putBoolean("SP_FILTER_NOVEL_EMPTY_KEY", true);
                                tt.f4763do.putBoolean("SP_FILTER_COMIC_EMPTY_KEY", true);
                                break;
                            }
                        }
                    }
                    i8++;
                }
            }
        }
        if (!TextUtils.isEmpty(str)) {
            tt.f4763do.putString("SP_FILTER_BOOK_COMIC_KEY", str);
        } else {
            ze.W("SP_FILTER_BOOK_COMIC_KEY");
        }
        if (jSONObject.has("how_set_qx")) {
            tt.f4763do.putString("SP_REQUEST_SD_PERMISSIONS_H5_KEY", jSONObject.optString("how_set_qx"));
        }
        if (jSONObject.has("retrycounts")) {
            ze.m3174instanceof("SP_VIDEO_AD_RETRY_COUNT_KEY", jSONObject.optInt("retrycounts"));
        }
        m385try(jSONObject);
        String optString8 = jSONObject.optString("yyonline");
        JSONArray optJSONArray4 = jSONObject.optJSONArray("yyconf");
        if (!TextUtils.isEmpty(optString8) || (optJSONArray4 != null && optJSONArray4.length() > 0)) {
            BaiduTtsConfigBean baiduTtsConfigBean = new BaiduTtsConfigBean();
            this.f713final = baiduTtsConfigBean;
            baiduTtsConfigBean.setYyonline(optString8);
            try {
                list = (List) Convert.fromJson(optJSONArray4.toString(), new pf().getType());
            } catch (Exception unused) {
                list = null;
            }
            if (list != null && list.size() > 0) {
                this.f713final.setYyconf(list);
                this.f713final.setIndex(dg.f857do.nextInt(list.size()));
            }
        }
        if (jSONObject.has("openfull")) {
            tt.f4763do.putBoolean("SP_SPLASH_AD_FULL_KEY", jSONObject.optBoolean("openfull"));
        }
        JSONObject optJSONObject17 = jSONObject.optJSONObject("needlogin");
        if (optJSONObject17 != null) {
            if (optJSONObject17.has("xz")) {
                tt.f4763do.putBoolean("SP_LOGIN_CHECK_XZ_KEY", optJSONObject17.optBoolean("xz"));
            }
            if (optJSONObject17.has("listen")) {
                tt.f4763do.putBoolean("SP_LOGIN_CHECK_LISTEN_KEY", optJSONObject17.optBoolean("listen"));
            }
            if (optJSONObject17.has("bs_size")) {
                tt.f4763do.putInt("SP_LOGIN_CHECK_BS_SIZE_KEY", optJSONObject17.optInt("bs_size"));
            }
        }
        if (jSONObject.has("sourcePackageName") && ze.m3179private("SYNC_SHELF_BOOKS_TAG", true)) {
            p0.m2011super("SYNC_SHELF_BOOKS_TAG", jSONObject.optString("sourcePackageName"));
        }
        JSONObject optJSONObject18 = jSONObject.optJSONObject("webconf");
        if (optJSONObject18 != null) {
            this.f710const = (WebConfBean) ze.n0(WebConfBean.class, optJSONObject18);
        }
        JSONObject optJSONObject19 = jSONObject.optJSONObject("srh_conf");
        if (optJSONObject19 != null) {
            this.f709class = (SrhConfBean) ze.n0(SrhConfBean.class, optJSONObject19);
        }
        if (!ze.B() && (optJSONObject11 = jSONObject.optJSONObject("sj_first_bids")) != null) {
            List<String> m378do = m378do(optJSONObject11);
            int i9 = 0;
            while (true) {
                ArrayList arrayList = (ArrayList) m378do;
                if (i9 >= arrayList.size()) {
                    break;
                }
                String str9 = (String) arrayList.get(i9);
                if (!TextUtils.isEmpty(str9)) {
                    if (i9 == 0) {
                        tt.f4763do.putString("SP_AOTU_ADD_SHELD_IDS_MAN_KEY", str9);
                    } else if (i9 == 1) {
                        tt.f4763do.putString("SP_AOTU_ADD_SHELD_IDS_LADY_KEY", str9);
                    }
                }
                i9++;
            }
        }
        JSONObject optJSONObject20 = jSONObject.optJSONObject("sj_task_bids");
        if (optJSONObject20 != null && (optInt3 = optJSONObject20.optInt("ver")) != ze.m3174instanceof("SP_AOTU_ADD_SHELD_IDS_VERSION_KEY", 0)) {
            tt.f4763do.putBoolean("SP_AOTU_ADD_CLEAR_NO_READ_KEY", optJSONObject20.optBoolean("isClearNoRead", false));
            tt.f4763do.putInt("SP_AOTU_ADD_SHELD_IDS_VERSION_KEY", optInt3);
            List<String> m378do2 = m378do(optJSONObject20);
            int i10 = 0;
            while (true) {
                ArrayList arrayList2 = (ArrayList) m378do2;
                if (i10 >= arrayList2.size()) {
                    break;
                }
                String str10 = (String) arrayList2.get(i10);
                if (!TextUtils.isEmpty(str10)) {
                    if (i10 == 0) {
                        tt.f4763do.putString("SP_AOTU_ADD_SHELD_IDS_VERSION_VALUE_MAN_KEY", str10);
                    } else if (i10 == 1) {
                        tt.f4763do.putString("SP_AOTU_ADD_SHELD_IDS_VERSION_VALUE_LADY_KEY", str10);
                    }
                }
                i10++;
            }
        }
        if (!ze.B() && (optJSONObject10 = jSONObject.optJSONObject("sjmh_first_bids")) != null) {
            List<String> m378do3 = m378do(optJSONObject10);
            int i11 = 0;
            while (true) {
                ArrayList arrayList3 = (ArrayList) m378do3;
                if (i11 >= arrayList3.size()) {
                    break;
                }
                String str11 = (String) arrayList3.get(i11);
                if (!TextUtils.isEmpty(str11)) {
                    if (i11 == 0) {
                        tt.f4763do.putString("SP_AOTU_ADD_CRATTON_SHELD_IDS_MAN_KEY", str11);
                    } else if (i11 == 1) {
                        tt.f4763do.putString("SP_AOTU_ADD_CRATTON_SHELD_IDS_LADY_KEY", str11);
                    }
                }
                i11++;
            }
        }
        JSONObject optJSONObject21 = jSONObject.optJSONObject("sjmh_task_bids");
        if (optJSONObject21 != null && (optInt2 = optJSONObject21.optInt("ver")) != ze.m3174instanceof("SP_AOTU_ADD_CRATTON_SHELD_IDS_VERSION_KEY", 0)) {
            tt.f4763do.putBoolean("SP_AOTU_ADD_CRATTON_CLEAR_NO_READ_KEY", optJSONObject21.optBoolean("isClearNoRead", false));
            tt.f4763do.putInt("SP_AOTU_ADD_CRATTON_SHELD_IDS_VERSION_KEY", optInt2);
            List<String> m378do4 = m378do(optJSONObject21);
            int i12 = 0;
            while (true) {
                ArrayList arrayList4 = (ArrayList) m378do4;
                if (i12 >= arrayList4.size()) {
                    break;
                }
                String str12 = (String) arrayList4.get(i12);
                if (!TextUtils.isEmpty(str12)) {
                    if (i12 == 0) {
                        tt.f4763do.putString("SP_AOTU_ADD_CRATTON_SHELD_IDS_VERSION_VALUE_MAN_KEY", str12);
                    } else if (i12 == 1) {
                        tt.f4763do.putString("SP_AOTU_ADD_CRATTON_SHELD_IDS_VERSION_VALUE_LADY_KEY", str12);
                    }
                }
                i12++;
            }
        }
        JSONArray optJSONArray5 = jSONObject.optJSONArray("channels");
        if (optJSONArray5 != null) {
            this.f708catch = ze.m0(optJSONArray5);
        }
        JSONObject optJSONObject22 = jSONObject.optJSONObject("mhtg2");
        String str13 = str3;
        if (optJSONObject22 != null && optJSONObject22.optBoolean(str13)) {
            MhtgTwoBean mhtgTwoBean = (MhtgTwoBean) ze.n0(MhtgTwoBean.class, optJSONObject22);
            this.f725this = mhtgTwoBean;
            if (mhtgTwoBean != null) {
                String pgname = mhtgTwoBean.getPgname();
                long a4 = ze.a("SP_MHTG2_INSTALL_TIME_KEY", 0L);
                if (a4 == 0) {
                    if (ze.G(pgname)) {
                        tt.f4763do.putLong("SP_MHTG2_INSTALL_TIME_KEY", System.currentTimeMillis());
                    }
                } else if (ze.m3179private("SP_MHTG2_SHOW_MANDATOR_KEY", false) && ze.G(pgname) && Math.abs(kg.m1494do(System.currentTimeMillis(), a4)) > 2) {
                    this.f729while = hfVar2;
                }
            }
        }
        JSONObject optJSONObject23 = jSONObject.optJSONObject("xstg2");
        if (optJSONObject23 != null && optJSONObject23.optBoolean(str13)) {
            MhtgTwoBean mhtgTwoBean2 = (MhtgTwoBean) ze.n0(MhtgTwoBean.class, optJSONObject23);
            this.f706break = mhtgTwoBean2;
            if (mhtgTwoBean2 != null) {
                String pgname2 = mhtgTwoBean2.getPgname();
                long a5 = ze.a("SP_XSTG2_INSTALL_TIME_KEY", 0L);
                if (a5 == 0) {
                    if (ze.G(pgname2)) {
                        tt.f4763do.putLong("SP_XSTG2_INSTALL_TIME_KEY", System.currentTimeMillis());
                    }
                } else if (ze.m3179private("SP_XSTG2_SHOW_MANDATOR_KEY", false) && ze.G(pgname2) && Math.abs(kg.m1494do(System.currentTimeMillis(), a5)) > 2) {
                    this.f729while = hfVar;
                }
            }
        }
        if (jSONObject.has("big_data") && (optJSONObject9 = jSONObject.optJSONObject("big_data")) != null) {
            boolean optBoolean = optJSONObject9.optBoolean(str13);
            if (optBoolean) {
                String optString9 = optJSONObject9.optString("elk_rt_ver", "");
                if ("".equals(optString9) || "all".equals(optString9)) {
                    optBoolean = true;
                } else {
                    optBoolean = optString9.contains(ze.m() + ",");
                }
            }
            if (v.m2734do() == null) {
                throw null;
            }
            if (optBoolean) {
                v m2734do = v.m2734do();
                BigDataAgentBean bigDataAgentBean = (BigDataAgentBean) ze.m3194while(BigDataAgentBean.class, optJSONObject9);
                if (m2734do == null) {
                    throw null;
                }
            }
        }
        JSONObject optJSONObject24 = jSONObject.optJSONObject("dm_conf_v9");
        if (optJSONObject24 != null) {
            this.f715goto = (BarrageConfigBean) ze.n0(BarrageConfigBean.class, optJSONObject24);
        }
        if (jSONObject.has("nr_source_bak")) {
            tt.f4763do.putString("SP_READ_SOURCE_TIPS_KEY", jSONObject.optString("nr_source_bak"));
        }
        JSONArray optJSONArray6 = jSONObject.optJSONArray("moudle_chls");
        if (optJSONArray6 != null && optJSONArray6.length() > 0) {
            this.f707case = ze.m0(optJSONArray6);
        }
        JSONObject optJSONObject25 = jSONObject.optJSONObject("find_same");
        if (optJSONObject25 != null) {
            this.f712else = (SameCommendBean) ze.n0(SameCommendBean.class, optJSONObject25);
        }
        if (jSONObject.has("idea_entry")) {
            tt.f4763do.putBoolean("SP_NOVEL_IDEA_ENTRY_KEY", jSONObject.optBoolean("idea_entry"));
        }
        JSONArray optJSONArray7 = jSONObject.optJSONArray("topmsg");
        this.f721return = optJSONArray7;
        if (optJSONArray7 != null) {
            this.f722static = jSONObject.optBoolean("topmsg_close");
            this.f724switch = jSONObject.optBoolean("topmsg_red", true);
            if (jSONObject.has("topmsg_ver") && (optInt = jSONObject.optInt("topmsg_ver")) != ze.m3174instanceof("SP_HOME_TOPMSG_RED_TAG_VER_KEY", -1)) {
                tt.f4763do.putInt("SP_HOME_TOPMSG_RED_TAG_VER_KEY", optInt);
                w0.m2898volatile(true);
            }
        }
        tt.f4763do.putString("SP_YU_POOLS_KEY", jSONObject.optString("yu_pools"));
        if (!ze.E()) {
            JSONObject optJSONObject26 = jSONObject.optJSONObject("share_del_ad");
            if (optJSONObject26 != null && optJSONObject26.optBoolean(str4)) {
                NewShareDisBean newShareDisBean = (NewShareDisBean) ze.m3194while(NewShareDisBean.class, optJSONObject26);
                this.f719new = newShareDisBean;
                if (newShareDisBean.getFir_spgg() > 0 && (optJSONObject8 = jSONObject.optJSONObject(this.f719new.getAd_pos_name())) != null) {
                    Cfinally m797else = Cfinally.m797else();
                    if (m797else != null) {
                        m797else.r = Cfinally.d(optJSONObject8.optJSONArray("params"), optJSONObject8.optString(ActivityChooserModel.ATTRIBUTE_WEIGHT));
                    } else {
                        throw null;
                    }
                }
            }
            if (this.f719new == null && jSONObject.optBoolean("clotab_advalid", true)) {
                NewShareDisBean newShareDisBean2 = new NewShareDisBean();
                this.f719new = newShareDisBean2;
                newShareDisBean2.setOnlyCheckTime(true);
            }
        }
        JSONObject optJSONObject27 = jSONObject.optJSONObject("yyconf_new");
        if (optJSONObject27 != null) {
            this.f714for = (NewYyConfBean) ze.m3194while(NewYyConfBean.class, optJSONObject27);
        }
        if (jSONObject.has("auto_login")) {
            tt.f4763do.putInt("SP_AUTO_REGISTER_LOGIN_INSTALL_DAY_KEY", jSONObject.optInt("auto_login"));
        }
        if (jSONObject.has("to_guanwang")) {
            tt.f4763do.putString("SP_TO_GUANWANG_REPLACE_KEY", jSONObject.optString("to_guanwang"));
        }
        if (jSONObject.has("new_rep_flag")) {
            this.f716if = jSONObject.optBoolean("new_rep_flag");
        }
        if (jSONObject.has("new_rep_host")) {
            tt.f4763do.putString("SP_ANALYTICS_REPORT_HOST_KEY", jSONObject.optString("new_rep_host"));
        }
        if (jSONObject.has("new_rep_bytime")) {
            tt.f4763do.putInt("SP_ANALYTICS_REPORT_REQ_INTERVAL_KEY", jSONObject.optInt("new_rep_bytime"));
        }
        if (jSONObject.has("new_rep_retrymax")) {
            tt.f4763do.putInt("SP_ANALYTICS_REPORT_REQ_MAX_KEY", jSONObject.optInt("new_rep_retrymax"));
        }
        if (jSONObject.has("nonettrypass")) {
            tt.f4763do.putBoolean("SP_NONET_ALLOW_SKIP_KEY", jSONObject.optBoolean("nonettrypass"));
        }
        String m2620do = tt.m2620do("SP_CHANGE_APP_MODULE_KEY", "");
        if (!m2620do.equals(this.f729while.toString())) {
            tt.f4763do.putString("SP_CHANGE_APP_MODULE_KEY", this.f729while.toString());
            if (!TextUtils.isEmpty(m2620do)) {
                w0.m2891strictfp(0);
                tt.f4763do.putInt("SP_BOOK_CITY_CURRENT_POSITION_KEY", 0);
            }
        }
        if (jSONObject.has("openAdClose")) {
            z2 = true;
            TrAdSdk.openAdClose(jSONObject.optBoolean("openAdClose", true));
        } else {
            z2 = true;
        }
        if (jSONObject.has("openAdCacheShow")) {
            TrAdSdk.openVideoCache_show(jSONObject.optBoolean("openAdCacheShow", z2));
        }
        if (jSONObject.has("openAdCloseModel")) {
            tt.f4763do.putBoolean("SP_AD_CLOSE_MODEL_LONG_KEY", "b".equals(jSONObject.optString("openAdCloseModel")));
        }
        if (jSONObject.has("restartAppTips")) {
            tt.f4763do.putString("SP_RESTART_APP_TIPS_KEY", jSONObject.optString("restartAppTips"));
        }
        if (jSONObject.has("restartFlag")) {
            tt.f4763do.putBoolean("SP_RESTART_APP_FLAG_KEY", jSONObject.optBoolean("restartFlag"));
        }
        if (jSONObject.has("rewardvalid")) {
            tt.f4763do.putBoolean("SP_VIDEO_AD_REWARD_VALID_KEY", jSONObject.optBoolean("rewardvalid"));
        }
        if (jSONObject.has("bdld_wifi_offline")) {
            tt.f4763do.putBoolean("BAIDU_TTS_WIFI_OFFLINE_ON", jSONObject.optBoolean("bdld_wifi_offline"));
        }
        if (jSONObject.has("feedback_host")) {
            tt.f4763do.putString("FEEDBACK_CLOND_HOST_KEY", jSONObject.optString("feedback_host"));
        }
        if (jSONObject.has("gw_page")) {
            tt.f4763do.putString("FEEDBACK_CLOND_GW_URL_KEY", jSONObject.optString("gw_page"));
        }
        if (jSONObject.has("feedback_clo")) {
            tt.f4763do.putBoolean("FEEDBACK_NATIVE_FEEDBACK_KEY", jSONObject.optBoolean("feedback_clo"));
        }
        if (jSONObject.has("last_read_tips") && jSONObject.optInt("last_read_tips") == 0) {
            tt.f4763do.putBoolean("SP_HOME_CONTINUE_READ_KG_KEY", false);
        }
        if (jSONObject.has("srh_out_sites") && (optJSONArray = jSONObject.optJSONArray("srh_out_sites")) != null && optJSONArray.length() > 0) {
            tt.f4763do.putString("SP_EXTERNAL_SITES_KEY", optJSONArray.toString());
        }
        if (jSONObject.has("srh_out") && (optJSONObject7 = jSONObject.optJSONObject("srh_out")) != null) {
            tt.f4763do.putBoolean("SP_WEB_SEARCH_FAST_OPEN_KEY", optJSONObject7.optString("is_close").equals("yes"));
        }
        if (jSONObject.has("wj_need") && (optJSONObject5 = jSONObject.optJSONObject("wj_need")) != null) {
            if (optJSONObject5.optBoolean("flag") && (optJSONObject6 = jSONObject.optJSONObject(optJSONObject5.optString("jl_pos"))) != null) {
                s0.m2367if().m2375try(optJSONObject6);
            }
            tt.f4763do.putString("CACHE_NOVEL_WJ_BATCH_CONFIG_KEY", optJSONObject5.toString());
            if (optJSONObject5.has("tips")) {
                w0.m2865abstract(optJSONObject5.optString("tips"));
            }
        }
        if (jSONObject.has("new_xzxs_type") && "zip".equals(jSONObject.optString("new_xzxs_type"))) {
            ze.W("CACHE_NOVEL_WJ_BATCH_CONFIG_KEY");
        }
        if (jSONObject.has("lz_need") && (optJSONObject3 = jSONObject.optJSONObject("lz_need")) != null) {
            if (optJSONObject3.optBoolean("flag") && (optJSONObject4 = jSONObject.optJSONObject(optJSONObject3.optString("jl_pos"))) != null) {
                s0.m2367if().m2375try(optJSONObject4);
            }
            tt.f4763do.putString("CACHE_NOVEL_LZ_BATCH_CONFIG_KEY", optJSONObject3.toString());
            if (optJSONObject3.has("tips")) {
                w0.m2865abstract(optJSONObject3.optString("tips"));
            }
        }
        if (!jSONObject.has("fzyd_need") || (optJSONObject = jSONObject.optJSONObject("fzyd_need")) == null) {
            return;
        }
        if (optJSONObject.optBoolean("flag") && (optJSONObject2 = jSONObject.optJSONObject(optJSONObject.optString("jl_pos"))) != null) {
            s0.m2367if().m2375try(optJSONObject2);
        }
        tt.f4763do.putString("CACHE_NOVEL_FZYD_BATCH_CONFIG_KEY", optJSONObject.toString());
        if (optJSONObject.has("tips")) {
            w0.m2865abstract(optJSONObject.optString("tips"));
        }
    }

    /* renamed from: new  reason: not valid java name */
    public WebConfBean m384new() {
        if (this.f710const == null) {
            this.f710const = new WebConfBean();
        }
        return this.f710const;
    }

    /* renamed from: try  reason: not valid java name */
    public final void m385try(JSONObject jSONObject) {
        JSONObject optJSONObject = jSONObject.optJSONObject("privacy_info");
        if (optJSONObject != null) {
            UserPrivacyBean userPrivacyBean = new UserPrivacyBean();
            this.f723super = userPrivacyBean;
            userPrivacyBean.setCompany(optJSONObject.optString("company"));
            this.f723super.setAddress(optJSONObject.optString("address"));
            this.f723super.setPhone(optJSONObject.optString("phone"));
            this.f723super.setEmail(optJSONObject.optString(NotificationCompat.CATEGORY_EMAIL));
        }
        JSONArray optJSONArray = jSONObject.optJSONArray("privacy_info2");
        if (optJSONArray != null) {
            for (int i = 0; i < optJSONArray.length(); i++) {
                JSONObject optJSONObject2 = optJSONArray.optJSONObject(i);
                String optString = optJSONObject2.optString("channel");
                if (!TextUtils.isEmpty(optString) && optString.contains(ze.m3156abstract())) {
                    UserPrivacyBean userPrivacyBean2 = new UserPrivacyBean();
                    this.f723super = userPrivacyBean2;
                    userPrivacyBean2.setCompany(optJSONObject2.optString("company"));
                    this.f723super.setAddress(optJSONObject2.optString("address"));
                    this.f723super.setPhone(optJSONObject2.optString("phone"));
                    this.f723super.setEmail(optJSONObject2.optString(NotificationCompat.CATEGORY_EMAIL));
                    return;
                }
            }
        }
    }
}
