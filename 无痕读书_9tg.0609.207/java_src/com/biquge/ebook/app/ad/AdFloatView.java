package com.biquge.ebook.app.ad;

import android.app.Activity;
import android.content.Context;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.widget.AppCompatImageView;
import com.apk.Cfinally;
import com.apk.Cswitch;
import com.apk.bg;
import com.apk.dg;
import com.apk.j1;
import com.apk.tf;
import com.apk.u;
import com.biquge.ebook.app.bean.FloatAdBean;
import com.biquge.ebook.app.helper.req.convert.Convert;
import com.biquge.ebook.app.ui.activity.ToforegroundActivity;
import com.swl.gg.ggs.SwlAdHelper;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;
import org.litepal.parser.LitePalParser;
/* loaded from: classes8.dex */
public class AdFloatView extends AppCompatImageView {

    /* renamed from: break  reason: not valid java name */
    public FloatAdBean f6277break;

    /* renamed from: case  reason: not valid java name */
    public long f6278case;

    /* renamed from: catch  reason: not valid java name */
    public int f6279catch;

    /* renamed from: class  reason: not valid java name */
    public final j1 f6280class;

    /* renamed from: const  reason: not valid java name */
    public final bg f6281const;

    /* renamed from: do  reason: not valid java name */
    public JSONObject f6282do;

    /* renamed from: else  reason: not valid java name */
    public long f6283else;

    /* renamed from: for  reason: not valid java name */
    public Cfor f6284for;

    /* renamed from: goto  reason: not valid java name */
    public List<FloatAdBean> f6285goto;

    /* renamed from: if  reason: not valid java name */
    public boolean f6286if;

    /* renamed from: new  reason: not valid java name */
    public boolean f6287new;

    /* renamed from: this  reason: not valid java name */
    public int f6288this;

    /* renamed from: try  reason: not valid java name */
    public boolean f6289try;

    /* renamed from: com.biquge.ebook.app.ad.AdFloatView$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cdo implements j1 {
        public Cdo() {
        }

        @Override // com.apk.j1
        /* renamed from: do */
        public void mo445do() {
            Cfor cfor = AdFloatView.this.f6284for;
            if (cfor != null) {
                cfor.onShow();
            }
            AdFloatView adFloatView = AdFloatView.this;
            adFloatView.setOnClickListener(adFloatView.f6281const);
        }

        @Override // com.apk.j1
        /* renamed from: if */
        public void mo446if() {
        }
    }

    /* renamed from: com.biquge.ebook.app.ad.AdFloatView$for  reason: invalid class name */
    /* loaded from: classes8.dex */
    public interface Cfor {
        /* renamed from: do */
        void mo2256do();

        void onShow();
    }

    /* renamed from: com.biquge.ebook.app.ad.AdFloatView$if  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cif extends bg {
        public Cif() {
        }

        @Override // com.apk.bg
        public void onNoDoubleClick(View view) {
            FloatAdBean floatAdBean = AdFloatView.this.f6277break;
            if (floatAdBean == null) {
                return;
            }
            String action = floatAdBean.getAction();
            String value = AdFloatView.this.f6277break.getValue();
            if ("URL_inner".equals(action)) {
                SwlAdHelper.openBrowser(AdFloatView.this.getContext(), value, true);
            } else if ("URL_system".equals(action)) {
                SwlAdHelper.openBrowser(AdFloatView.this.getContext(), value, false);
            } else if ("gdt_cp".equals(action)) {
                Cswitch.m2557for().m2561try((Activity) AdFloatView.this.getContext());
            } else if ("gdt_kp".equals(action)) {
                ToforegroundActivity.j((Activity) AdFloatView.this.getContext(), "gdt", value);
            } else if ("swl_cp".equals(action)) {
                Cswitch.m2557for().m2561try((Activity) AdFloatView.this.getContext());
            } else if ("swl_kp".equals(action)) {
                ToforegroundActivity.j((Activity) AdFloatView.this.getContext(), "swl", value);
            }
            AdFloatView adFloatView = AdFloatView.this;
            if (adFloatView.f6289try) {
                Cfor cfor = adFloatView.f6284for;
                if (cfor != null) {
                    cfor.mo2256do();
                }
                int i = AdFloatView.this.f6279catch;
                if (i == 2) {
                    Cfinally.m797else().f = null;
                } else if (i == 1) {
                    Cfinally.m797else().g = null;
                }
            }
        }
    }

    public AdFloatView(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f6280class = new Cdo();
        this.f6281const = new Cif();
    }

    /* renamed from: if  reason: not valid java name */
    public void m3265if(JSONObject jSONObject, boolean z, Cfor cfor) {
        int size;
        JSONArray optJSONArray;
        List<FloatAdBean> list;
        this.f6282do = jSONObject;
        this.f6286if = z;
        this.f6284for = cfor;
        if (jSONObject != null && (optJSONArray = jSONObject.optJSONArray(LitePalParser.NODE_LIST)) != null) {
            try {
                list = (List) Convert.fromJson(optJSONArray.toString(), new tf().getType());
            } catch (Exception unused) {
                list = null;
            }
            this.f6285goto = list;
            if (list != null && list.size() > 0) {
                this.f6287new = true;
                this.f6283else = Cfinally.m799goto(this.f6282do);
                this.f6289try = Cfinally.m795const(this.f6282do);
            }
        }
        boolean z2 = this.f6287new;
        if (z2) {
            if (z2 && (this.f6278case == 0 || System.currentTimeMillis() - this.f6278case > this.f6283else)) {
                this.f6278case = System.currentTimeMillis();
                if (this.f6286if) {
                    size = dg.f857do.nextInt(this.f6285goto.size());
                } else {
                    size = this.f6288this % this.f6285goto.size();
                }
                FloatAdBean floatAdBean = this.f6285goto.get(size);
                if (floatAdBean == null || TextUtils.isEmpty(floatAdBean.getValue())) {
                    return;
                }
                String floaticon = floatAdBean.getFloaticon();
                this.f6277break = floatAdBean;
                Cfor cfor2 = this.f6284for;
                if (cfor2 != null) {
                    cfor2.mo2256do();
                }
                u.m2656super(floaticon, this, 0, this.f6280class);
                this.f6288this++;
                return;
            }
            Cfor cfor3 = this.f6284for;
            if (cfor3 != null) {
                cfor3.onShow();
            }
        }
    }

    public void setSourceTag(int i) {
        this.f6279catch = i;
    }
}
