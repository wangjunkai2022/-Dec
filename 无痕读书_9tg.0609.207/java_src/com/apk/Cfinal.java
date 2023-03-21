package com.apk;

import android.app.Activity;
import android.graphics.Color;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewStub;
import android.widget.ImageView;
import android.widget.TextView;
import com.swl.gg.bean.SwlAdView;
import com.swl.gg.ggs.SwlAdHelper;
import java.util.List;
import kimi.wuhends.ebooks.R;
import org.json.JSONObject;
/* compiled from: AdBlockNativeHelper.java */
/* renamed from: com.apk.final  reason: invalid class name */
/* loaded from: classes8.dex */
public class Cfinal implements View.OnClickListener {

    /* renamed from: abstract  reason: not valid java name */
    public TextView f1306abstract;

    /* renamed from: break  reason: not valid java name */
    public ViewStub f1307break;

    /* renamed from: case  reason: not valid java name */
    public List<SwlAdView> f1308case;

    /* renamed from: catch  reason: not valid java name */
    public ViewStub f1309catch;

    /* renamed from: class  reason: not valid java name */
    public boolean f1310class;

    /* renamed from: continue  reason: not valid java name */
    public TextView f1312continue;

    /* renamed from: default  reason: not valid java name */
    public TextView f1313default;

    /* renamed from: else  reason: not valid java name */
    public Activity f1315else;

    /* renamed from: extends  reason: not valid java name */
    public View f1316extends;

    /* renamed from: final  reason: not valid java name */
    public View f1317final;

    /* renamed from: finally  reason: not valid java name */
    public ImageView f1318finally;

    /* renamed from: for  reason: not valid java name */
    public int f1319for;

    /* renamed from: goto  reason: not valid java name */
    public View f1320goto;

    /* renamed from: if  reason: not valid java name */
    public boolean f1321if;

    /* renamed from: import  reason: not valid java name */
    public TextView f1322import;

    /* renamed from: native  reason: not valid java name */
    public TextView f1323native;

    /* renamed from: new  reason: not valid java name */
    public long f1324new;

    /* renamed from: package  reason: not valid java name */
    public TextView f1325package;

    /* renamed from: private  reason: not valid java name */
    public TextView f1326private;

    /* renamed from: public  reason: not valid java name */
    public View f1327public;

    /* renamed from: return  reason: not valid java name */
    public ImageView f1328return;

    /* renamed from: static  reason: not valid java name */
    public TextView f1329static;

    /* renamed from: super  reason: not valid java name */
    public ImageView f1330super;

    /* renamed from: switch  reason: not valid java name */
    public TextView f1331switch;

    /* renamed from: this  reason: not valid java name */
    public ViewStub f1332this;

    /* renamed from: throw  reason: not valid java name */
    public TextView f1333throw;

    /* renamed from: throws  reason: not valid java name */
    public TextView f1334throws;

    /* renamed from: try  reason: not valid java name */
    public List<g> f1335try;

    /* renamed from: while  reason: not valid java name */
    public TextView f1336while;

    /* renamed from: do  reason: not valid java name */
    public Handler f1314do = new Handler(Looper.getMainLooper());

    /* renamed from: const  reason: not valid java name */
    public final Runnable f1311const = new Cdo();

    /* compiled from: AdBlockNativeHelper.java */
    /* renamed from: com.apk.final$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cdo implements Runnable {
        public Cdo() {
        }

        @Override // java.lang.Runnable
        public void run() {
            List<SwlAdView> list;
            Handler handler;
            Cfinal cfinal = Cfinal.this;
            long j = cfinal.f1324new;
            if (j != 0 && (handler = cfinal.f1314do) != null) {
                handler.postDelayed(cfinal.f1311const, j);
            }
            if (cfinal.f1321if || (list = cfinal.f1308case) == null || list.size() <= 0) {
                return;
            }
            cfinal.m791try(ze.m3167final(cfinal.f1308case, cfinal.f1319for));
        }
    }

    /* renamed from: do  reason: not valid java name */
    public static void m787do(Cfinal cfinal, String str) {
        if (cfinal != null) {
            List<SwlAdView> swlAdViews = SwlAdHelper.getSwlAdViews(str);
            cfinal.f1308case = swlAdViews;
            if (swlAdViews == null || swlAdViews.size() <= 0) {
                return;
            }
            if (cfinal.f1308case.size() >= 3) {
                cfinal.f1319for = 3;
                return;
            } else {
                cfinal.f1319for = cfinal.f1308case.size();
                return;
            }
        }
        throw null;
    }

    /* renamed from: for  reason: not valid java name */
    public final void m788for(View view, String str) {
        Activity activity = this.f1315else;
        if (activity == null || activity.isFinishing()) {
            return;
        }
        try {
            this.f1320goto = view;
            this.f1332this = (ViewStub) view.findViewById(R.id.item_blocknative_book_one_layout);
            this.f1307break = (ViewStub) view.findViewById(R.id.item_blocknative_book_two_layout);
            this.f1309catch = (ViewStub) view.findViewById(R.id.item_blocknative_book_three_layout);
            view.setVisibility(0);
            if ("null".equals(str)) {
                view.findViewById(R.id.include_blocknative_topview).setVisibility(8);
                view.findViewById(R.id.include_blocknative_titleview).setVisibility(8);
            } else {
                view.findViewById(R.id.native_adlist_refresh_bt).setOnClickListener(this);
                if (!TextUtils.isEmpty(str)) {
                    ((TextView) view.findViewById(R.id.native_adlist_title_txt)).setText(str);
                }
            }
            this.f1310class = this.f1310class;
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: if  reason: not valid java name */
    public void m789if(Activity activity, ViewStub viewStub) {
        if (viewStub == null || !Cfinally.m797else().m830while()) {
            return;
        }
        this.f1315else = activity;
        JSONObject jSONObject = Cfinally.m797else().f1366strictfp;
        String optString = jSONObject.optString("navtitle");
        View inflate = viewStub.inflate();
        if (inflate != null) {
            m788for(inflate, optString);
        }
        o.m1921for().m1922do(new Cconst(this, jSONObject, null));
    }

    /* renamed from: new  reason: not valid java name */
    public void m790new() {
        this.f1321if = true;
        if (this.f1320goto != null) {
            this.f1320goto = null;
        }
        Handler handler = this.f1314do;
        if (handler != null) {
            handler.removeCallbacksAndMessages(null);
            this.f1314do = null;
        }
        if (this.f1332this != null) {
            this.f1332this = null;
        }
        if (this.f1307break != null) {
            this.f1307break = null;
        }
        if (this.f1309catch != null) {
            this.f1309catch = null;
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        List<SwlAdView> list = this.f1308case;
        if (list == null || list.size() <= 0) {
            return;
        }
        m791try(ze.m3167final(this.f1308case, this.f1319for));
    }

    /* renamed from: try  reason: not valid java name */
    public final void m791try(List<SwlAdView> list) {
        if (list == null || list.size() <= 0) {
            return;
        }
        int size = list.size();
        for (int i = 0; i < size; i++) {
            if (i == 0) {
                ViewStub viewStub = this.f1332this;
                SwlAdView swlAdView = list.get(i);
                if (swlAdView != null) {
                    if (this.f1317final == null && viewStub != null) {
                        View inflate = viewStub.inflate();
                        this.f1317final = inflate;
                        inflate.setVisibility(0);
                        this.f1330super = (ImageView) this.f1317final.findViewById(R.id.item_simple_book_image);
                        this.f1333throw = (TextView) this.f1317final.findViewById(R.id.item_simple_book_name_txt);
                        this.f1336while = (TextView) this.f1317final.findViewById(R.id.item_simple_book_type_txt);
                        this.f1322import = (TextView) this.f1317final.findViewById(R.id.item_simple_book_simple_info_txt);
                        this.f1323native = (TextView) this.f1317final.findViewById(R.id.item_simple_book_score_txt);
                        if (this.f1310class) {
                            this.f1333throw.setTextColor(Color.parseColor("#999999"));
                        }
                    }
                    if (this.f1330super != null) {
                        u.m2646final(swlAdView.getImgurl(), this.f1330super);
                    }
                    TextView textView = this.f1333throw;
                    if (textView != null) {
                        textView.setText(swlAdView.getAdtitle());
                    }
                    TextView textView2 = this.f1336while;
                    if (textView2 != null) {
                        textView2.setText(swlAdView.getSubtitle());
                    }
                    TextView textView3 = this.f1322import;
                    if (textView3 != null) {
                        textView3.setText(swlAdView.getAddesc());
                    }
                    TextView textView4 = this.f1323native;
                    if (textView4 != null) {
                        textView4.setText(ze.r(R.string.xml_value_score_txt, swlAdView.getScore()));
                    }
                    View view = this.f1317final;
                    if (view != null) {
                        view.setOnClickListener(new Csuper(this, swlAdView));
                    }
                }
            } else if (i == 1) {
                ViewStub viewStub2 = this.f1307break;
                SwlAdView swlAdView2 = list.get(i);
                if (swlAdView2 != null) {
                    if (this.f1327public == null && viewStub2 != null) {
                        View inflate2 = viewStub2.inflate();
                        this.f1327public = inflate2;
                        inflate2.setVisibility(0);
                        this.f1328return = (ImageView) this.f1327public.findViewById(R.id.item_simple_book_image);
                        this.f1329static = (TextView) this.f1327public.findViewById(R.id.item_simple_book_name_txt);
                        this.f1331switch = (TextView) this.f1327public.findViewById(R.id.item_simple_book_type_txt);
                        this.f1334throws = (TextView) this.f1327public.findViewById(R.id.item_simple_book_simple_info_txt);
                        this.f1313default = (TextView) this.f1327public.findViewById(R.id.item_simple_book_score_txt);
                        if (this.f1310class) {
                            this.f1329static.setTextColor(Color.parseColor("#999999"));
                        }
                    }
                    if (this.f1328return != null) {
                        u.m2646final(swlAdView2.getImgurl(), this.f1328return);
                    }
                    TextView textView5 = this.f1329static;
                    if (textView5 != null) {
                        textView5.setText(swlAdView2.getAdtitle());
                    }
                    TextView textView6 = this.f1331switch;
                    if (textView6 != null) {
                        textView6.setText(swlAdView2.getSubtitle());
                    }
                    TextView textView7 = this.f1334throws;
                    if (textView7 != null) {
                        textView7.setText(swlAdView2.getAddesc());
                    }
                    TextView textView8 = this.f1313default;
                    if (textView8 != null) {
                        textView8.setText(ze.r(R.string.xml_value_score_txt, swlAdView2.getScore()));
                    }
                    View view2 = this.f1327public;
                    if (view2 != null) {
                        view2.setOnClickListener(new Cthrow(this, swlAdView2));
                    }
                }
            } else if (i == 2) {
                ViewStub viewStub3 = this.f1309catch;
                SwlAdView swlAdView3 = list.get(i);
                if (swlAdView3 != null) {
                    if (this.f1316extends == null && viewStub3 != null) {
                        View inflate3 = viewStub3.inflate();
                        this.f1316extends = inflate3;
                        inflate3.setVisibility(0);
                        this.f1318finally = (ImageView) this.f1316extends.findViewById(R.id.item_simple_book_image);
                        this.f1325package = (TextView) this.f1316extends.findViewById(R.id.item_simple_book_name_txt);
                        this.f1326private = (TextView) this.f1316extends.findViewById(R.id.item_simple_book_type_txt);
                        this.f1306abstract = (TextView) this.f1316extends.findViewById(R.id.item_simple_book_simple_info_txt);
                        this.f1312continue = (TextView) this.f1316extends.findViewById(R.id.item_simple_book_score_txt);
                        if (this.f1310class) {
                            this.f1325package.setTextColor(Color.parseColor("#999999"));
                        }
                    }
                    if (this.f1318finally != null) {
                        u.m2646final(swlAdView3.getImgurl(), this.f1318finally);
                    }
                    TextView textView9 = this.f1325package;
                    if (textView9 != null) {
                        textView9.setText(swlAdView3.getAdtitle());
                    }
                    TextView textView10 = this.f1326private;
                    if (textView10 != null) {
                        textView10.setText(swlAdView3.getSubtitle());
                    }
                    TextView textView11 = this.f1306abstract;
                    if (textView11 != null) {
                        textView11.setText(swlAdView3.getAddesc());
                    }
                    TextView textView12 = this.f1312continue;
                    if (textView12 != null) {
                        textView12.setText(ze.r(R.string.xml_value_score_txt, swlAdView3.getScore()));
                    }
                    View view3 = this.f1316extends;
                    if (view3 != null) {
                        view3.setOnClickListener(new Cwhile(this, swlAdView3));
                    }
                }
            }
        }
    }
}
