package com.apk;

import android.content.Context;
import android.text.TextUtils;
import android.widget.TextView;
import androidx.appcompat.widget.ActivityChooserModel;
import com.biquge.ebook.app.ui.activity.RewardVideoActivity;
import com.biquge.ebook.app.widget.VideoRewardDialog;
import com.lxj.xpopup.core.BasePopupView;
import com.swl.gg.sdk.TrAdSdk;
import java.util.List;
import java.util.Timer;
import kimi.wuhends.ebooks.R;
import org.json.JSONObject;
/* compiled from: ReadTimerHelper.java */
/* loaded from: classes8.dex */
public class s0 {

    /* renamed from: extends  reason: not valid java name */
    public static s0 f4222extends;

    /* renamed from: break  reason: not valid java name */
    public int f4223break;

    /* renamed from: case  reason: not valid java name */
    public String f4224case;

    /* renamed from: catch  reason: not valid java name */
    public String f4225catch;

    /* renamed from: class  reason: not valid java name */
    public boolean f4226class;

    /* renamed from: const  reason: not valid java name */
    public boolean f4227const;

    /* renamed from: default  reason: not valid java name */
    public List<g> f4228default;

    /* renamed from: do  reason: not valid java name */
    public int f4229do;

    /* renamed from: else  reason: not valid java name */
    public boolean f4230else;

    /* renamed from: final  reason: not valid java name */
    public Timer f4231final;

    /* renamed from: for  reason: not valid java name */
    public boolean f4232for;

    /* renamed from: goto  reason: not valid java name */
    public int f4233goto;

    /* renamed from: if  reason: not valid java name */
    public List<g> f4234if;

    /* renamed from: import  reason: not valid java name */
    public int f4235import;

    /* renamed from: native  reason: not valid java name */
    public String f4236native;

    /* renamed from: new  reason: not valid java name */
    public boolean f4237new;

    /* renamed from: public  reason: not valid java name */
    public int f4238public;

    /* renamed from: return  reason: not valid java name */
    public String f4239return;

    /* renamed from: static  reason: not valid java name */
    public boolean f4240static;

    /* renamed from: super  reason: not valid java name */
    public String f4241super;

    /* renamed from: switch  reason: not valid java name */
    public boolean f4242switch;

    /* renamed from: this  reason: not valid java name */
    public int f4243this;

    /* renamed from: throw  reason: not valid java name */
    public String f4244throw;

    /* renamed from: throws  reason: not valid java name */
    public int f4245throws;

    /* renamed from: try  reason: not valid java name */
    public String f4246try;

    /* renamed from: while  reason: not valid java name */
    public int f4247while;

    /* compiled from: ReadTimerHelper.java */
    /* renamed from: com.apk.s0$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cdo implements VideoRewardDialog.Cif {

        /* renamed from: do  reason: not valid java name */
        public final /* synthetic */ Context f4248do;

        public Cdo(s0 s0Var, Context context) {
            this.f4248do = context;
        }

        @Override // com.biquge.ebook.app.widget.VideoRewardDialog.Cif
        /* renamed from: do  reason: not valid java name */
        public void mo2376do() {
            RewardVideoActivity.p(this.f4248do, 1);
        }
    }

    /* compiled from: ReadTimerHelper.java */
    /* renamed from: com.apk.s0$for  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cfor implements VideoRewardDialog.Cif {

        /* renamed from: do  reason: not valid java name */
        public final /* synthetic */ Context f4249do;

        /* renamed from: if  reason: not valid java name */
        public final /* synthetic */ int f4250if;

        public Cfor(s0 s0Var, Context context, int i) {
            this.f4249do = context;
            this.f4250if = i;
        }

        @Override // com.biquge.ebook.app.widget.VideoRewardDialog.Cif
        /* renamed from: do */
        public void mo2376do() {
            RewardVideoActivity.p(this.f4249do, this.f4250if);
        }
    }

    /* compiled from: ReadTimerHelper.java */
    /* renamed from: com.apk.s0$if  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cif extends yv {
        public Cif() {
        }

        @Override // com.apk.yv
        /* renamed from: if */
        public void mo308if(BasePopupView basePopupView) {
            TextView textView = (TextView) basePopupView.findViewById(R.id.share_task);
            if (textView != null && !TextUtils.isEmpty(s0.this.f4224case)) {
                textView.setText(s0.this.f4224case);
            }
            g m2371for = s0.this.m2371for();
            if (m2371for != null) {
                if (TrAdSdk.isRewardAdType(m2371for.m899if())) {
                    e.m520while().m522native(m2371for.m899if(), m2371for.m898do(), "ts");
                } else if (TrAdSdk.isFullAdType(m2371for.m899if())) {
                    c.m286while().m292native(m2371for.m899if(), m2371for.m898do(), "ts");
                }
            }
        }
    }

    /* compiled from: ReadTimerHelper.java */
    /* renamed from: com.apk.s0$new  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cnew extends yv {

        /* renamed from: do  reason: not valid java name */
        public final /* synthetic */ hf f4252do;

        public Cnew(hf hfVar) {
            this.f4252do = hfVar;
        }

        @Override // com.apk.yv
        /* renamed from: if */
        public void mo308if(BasePopupView basePopupView) {
            TextView textView = (TextView) basePopupView.findViewById(R.id.share_task);
            if (textView != null) {
                hf hfVar = hf.BOOK;
                hf hfVar2 = this.f4252do;
                if (hfVar == hfVar2) {
                    if (!TextUtils.isEmpty(s0.this.f4244throw)) {
                        textView.setText(s0.this.f4244throw);
                    }
                } else if (hf.COMIC == hfVar2 && !TextUtils.isEmpty(s0.this.f4239return)) {
                    textView.setText(s0.this.f4239return);
                }
            }
            g m2371for = s0.this.m2371for();
            if (m2371for != null) {
                if (TrAdSdk.isRewardAdType(m2371for.m899if())) {
                    e.m520while().m522native(m2371for.m899if(), m2371for.m898do(), "xz");
                } else if (TrAdSdk.isFullAdType(m2371for.m899if())) {
                    c.m286while().m292native(m2371for.m899if(), m2371for.m898do(), "xz");
                }
            }
        }
    }

    /* renamed from: if  reason: not valid java name */
    public static s0 m2367if() {
        if (f4222extends == null) {
            synchronized (s0.class) {
                if (f4222extends == null) {
                    f4222extends = new s0();
                }
            }
        }
        return f4222extends;
    }

    /* renamed from: case  reason: not valid java name */
    public void m2368case(JSONObject jSONObject, JSONObject jSONObject2) {
        this.f4241super = jSONObject.optString("tips");
        this.f4244throw = jSONObject.optString("btn");
        this.f4247while = jSONObject.optInt("book_size");
        this.f4235import = jSONObject.optInt("fee_size", 1);
        this.f4236native = jSONObject.optString("tips_mh");
        this.f4239return = jSONObject.optString("btn_mh");
        this.f4238public = jSONObject.optInt("mh_c_size", 5);
        int optInt = jSONObject.optInt("fee_c_mh");
        if (!ze.D("DB_VIDEO_CHAPTER_REWARD_XZ_COMIC_KEY")) {
            tt.f4763do.putInt("DB_VIDEO_CHAPTER_REWARD_XZ_COMIC_KEY", optInt);
        }
        this.f4240static = "toady".equals(jSONObject.optString("time_scope"));
        this.f4242switch = jSONObject.optBoolean("is_show_tgbtn", true);
        m2373new(jSONObject2);
    }

    /* renamed from: do  reason: not valid java name */
    public g m2369do() {
        List<g> list = this.f4234if;
        if (list == null || list.size() == 0) {
            return null;
        }
        g gVar = this.f4234if.get(this.f4229do % this.f4234if.size());
        this.f4229do++;
        return gVar;
    }

    /* renamed from: else  reason: not valid java name */
    public void m2370else(JSONObject jSONObject, JSONObject jSONObject2) {
        this.f4232for = true;
        this.f4246try = jSONObject.optString("tips");
        this.f4224case = jSONObject.optString("btn");
        int optInt = jSONObject.optInt("firstfee");
        this.f4243this = optInt;
        if (optInt == 0) {
            this.f4223break = jSONObject.optInt("feedays");
        }
        this.f4233goto = jSONObject.optInt("perminutes");
        String optString = jSONObject.optString("time_scope");
        this.f4226class = "public".equals(optString);
        this.f4227const = "today".equals(optString);
        this.f4225catch = jSONObject.optString("today_tips");
        this.f4230else = jSONObject.optBoolean("is_show_tgbtn", true);
        m2373new(jSONObject2);
    }

    /* renamed from: for  reason: not valid java name */
    public g m2371for() {
        List<g> list = this.f4234if;
        if (list == null || list.size() == 0) {
            return null;
        }
        List<g> list2 = this.f4234if;
        return list2.get(this.f4229do % list2.size());
    }

    /* renamed from: goto  reason: not valid java name */
    public final boolean m2372goto(Context context, hf hfVar, String str) {
        String str2;
        hf hfVar2 = hf.COMIC;
        hf hfVar3 = hf.BOOK;
        if (hfVar3 == hfVar) {
            if (this.f4247while == 0) {
                return false;
            }
            String str3 = "DB_VIDEO_REWARD_XZ_KEY_" + hfVar + "-" + str;
            if (Celse.m648for(str3) != null) {
                if (this.f4240static) {
                    String m1498if = kg.m1498if();
                    String m2620do = tt.m2620do("SP_NOVEL_XZ_TODAY_KEY", "");
                    if (TextUtils.isEmpty(m2620do) || m1498if.equals(m2620do)) {
                        tt.f4763do.putString("SP_NOVEL_XZ_TODAY_KEY", m1498if);
                    }
                }
                return false;
            }
            int m3174instanceof = ze.m3174instanceof("DB_VIDEO_REWARD_XZ_KEY_", this.f4235import);
            if (m3174instanceof > 0) {
                tt.f4763do.putInt("DB_VIDEO_REWARD_XZ_KEY_", m3174instanceof - 1);
                Celse.m645case(str3);
                return false;
            }
        } else if (hfVar2 == hfVar) {
            if (this.f4238public == 0) {
                return false;
            }
            if (ze.m3174instanceof("DB_VIDEO_CHAPTER_REWARD_XZ_COMIC_KEY", 0) > 0) {
                if (this.f4240static) {
                    String m1498if2 = kg.m1498if();
                    String m2620do2 = tt.m2620do("SP_COMIC_XZ_TODAY_KEY", "");
                    if (TextUtils.isEmpty(m2620do2) || m1498if2.equals(m2620do2)) {
                        tt.f4763do.putString("SP_COMIC_XZ_TODAY_KEY", m1498if2);
                    }
                }
                return false;
            }
        }
        int i = 2;
        if (hfVar3 == hfVar) {
            str2 = this.f4241super;
        } else if (hfVar2 == hfVar) {
            str2 = this.f4236native;
            i = 3;
        } else {
            str2 = this.f4241super;
        }
        lv lvVar = new lv();
        lvVar.f2924for = Boolean.FALSE;
        lvVar.f2941throw = new Cnew(hfVar);
        VideoRewardDialog videoRewardDialog = new VideoRewardDialog(context, str2, this.f4242switch, new Cfor(this, context, i));
        lvVar.f2917continue = zu.f6266try;
        videoRewardDialog.popupInfo = lvVar;
        videoRewardDialog.show();
        return true;
    }

    /* renamed from: new  reason: not valid java name */
    public final void m2373new(JSONObject jSONObject) {
        List<g> list = this.f4234if;
        if (list == null || list.size() == 0) {
            this.f4234if = Cfinally.d(jSONObject.optJSONArray("params"), jSONObject.optString(ActivityChooserModel.ATTRIBUTE_WEIGHT));
        }
    }

    /* renamed from: this  reason: not valid java name */
    public void m2374this(Context context) {
        lv lvVar = new lv();
        lvVar.f2924for = Boolean.FALSE;
        lvVar.f2941throw = new Cif();
        VideoRewardDialog videoRewardDialog = new VideoRewardDialog(context, this.f4246try, this.f4230else, new Cdo(this, context));
        lvVar.f2917continue = zu.f6266try;
        videoRewardDialog.popupInfo = lvVar;
        videoRewardDialog.show();
    }

    /* renamed from: try  reason: not valid java name */
    public void m2375try(JSONObject jSONObject) {
        this.f4228default = Cfinally.d(jSONObject.optJSONArray("params"), jSONObject.optString(ActivityChooserModel.ATTRIBUTE_WEIGHT));
    }
}
