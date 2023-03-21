package com.biquge.ebook.app.ui.activity;

import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import android.widget.EditText;
import android.widget.TextView;
import androidx.core.app.NotificationCompat;
import butterknife.BindView;
import butterknife.OnClick;
import com.apk.Cgoto;
import com.apk.eg;
import com.apk.f6;
import com.apk.ft;
import com.apk.g4;
import com.apk.h4;
import com.apk.mf;
import com.apk.p0;
import com.apk.tt;
import com.apk.u5;
import com.apk.v0;
import com.apk.v3;
import com.apk.w;
import com.apk.x4;
import com.apk.xh;
import com.apk.xw;
import com.apk.ze;
import com.biquge.ebook.app.widget.marqueeview.MarqueeView;
import com.hjq.toast.ToastUtils;
import com.shizhefei.view.indicator.ScrollIndicatorView;
import java.util.ArrayList;
import java.util.HashMap;
import kimi.wuhends.ebooks.R;
import org.json.JSONArray;
import org.json.JSONObject;
/* loaded from: classes8.dex */
public class WantReadBookActivity extends f6 {

    /* renamed from: do  reason: not valid java name */
    public String[] f6861do;

    /* renamed from: for  reason: not valid java name */
    public final u5 f6862for = new Cdo();

    /* renamed from: if  reason: not valid java name */
    public v3 f6863if;
    @BindView(R.id.upload_file_indicator)
    public ScrollIndicatorView indicatorView;
    @BindView(R.id.last_week_number)
    public TextView lastWeekNumberTv;
    @BindView(R.id.last_week_people)
    public TextView lastWeekPeopleTv;
    @BindView(R.id.want_book_writer_txt)
    public EditText mAuthorEt;
    @BindView(R.id.want_book_marqueeview)
    public MarqueeView mMarqueeView;
    @BindView(R.id.want_book_name_txt)
    public EditText mNameEt;
    @BindView(R.id.total_help_people)
    public TextView totalPeopleTv;

    /* renamed from: com.biquge.ebook.app.ui.activity.WantReadBookActivity$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cdo extends u5 {

        /* renamed from: com.biquge.ebook.app.ui.activity.WantReadBookActivity$do$do  reason: invalid class name and collision with other inner class name */
        /* loaded from: classes8.dex */
        public class C0091do implements ft {
            public C0091do() {
            }

            @Override // com.apk.ft
            public void onClick() {
                WantReadBookActivity.this.finish();
            }
        }

        public Cdo() {
        }

        @Override // com.apk.u5
        /* renamed from: native */
        public void mo2681native() {
            if (ze.m3179private("SP_WANT_BOOK_FIRST_SHOW_MSG_KEY", true)) {
                tt.f4763do.putBoolean("SP_WANT_BOOK_FIRST_SHOW_MSG_KEY", false);
            }
            eg.j(WantReadBookActivity.this, ze.q(R.string.want_novel_first_show_msg), new C0091do(), false, false);
            mf.m1712do("REFRESH_WANTBOOK_KEY", null);
        }

        @Override // com.apk.u5
        /* renamed from: static */
        public void mo2685static(JSONObject jSONObject) {
            JSONObject optJSONObject = jSONObject.optJSONObject("data");
            if (optJSONObject != null) {
                JSONArray optJSONArray = optJSONObject.optJSONArray("MarqueeList");
                if (optJSONArray != null) {
                    ArrayList arrayList = new ArrayList();
                    for (int i = 0; i < optJSONArray.length(); i++) {
                        JSONObject optJSONObject2 = optJSONArray.optJSONObject(i);
                        if (optJSONObject2 != null) {
                            String optString = optJSONObject2.optString("BookName");
                            optJSONObject2.optString("Author");
                            arrayList.add(ze.r(R.string.want_book_found, optJSONObject2.optString("UserName"), optString));
                        }
                    }
                    MarqueeView marqueeView = WantReadBookActivity.this.mMarqueeView;
                    int i2 = marqueeView.f8389goto;
                    int i3 = marqueeView.f8392this;
                    if (!(arrayList.size() == 0)) {
                        marqueeView.setNotices(arrayList);
                        marqueeView.post(new xh(marqueeView, i2, i3));
                    }
                }
                WantReadBookActivity.this.lastWeekNumberTv.setText(optJSONObject.optString("LastWeekBookCount"));
                WantReadBookActivity.this.lastWeekPeopleTv.setText(optJSONObject.optString("LastWeekCount"));
                WantReadBookActivity.this.totalPeopleTv.setText(optJSONObject.optString("SeekOutNumber"));
            }
        }
    }

    public static void i(Context context, String str, boolean z) {
        Intent intent = new Intent(context, WantReadBookActivity.class);
        if (!TextUtils.isEmpty(str)) {
            intent.putExtra("INTENT_NAME_KEY", str);
        }
        intent.putExtra("INTENT_SOURCE_TYPE_KEY", z);
        context.startActivity(intent);
    }

    @Override // com.apk.f6
    public int getLayoutId() {
        return R.layout.activity_want_book;
    }

    @Override // com.apk.f6
    public void initData() {
        v3 v3Var = new v3(this, this.f6862for);
        this.f6863if = v3Var;
        if (v3Var != null) {
            x4.m2957import(p0.m1999class() + "/ver9/base/summary.html", 604800000L, xw.ALWAYS_FIRST_CACHE_THEN_REQUEST, new g4(v3Var, "SP_HOST_SHUC_XS_KEY"));
            return;
        }
        throw null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:22:0x0099, code lost:
        if (r0 == false) goto L27;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x00b2, code lost:
        if (r0 != false) goto L27;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x00b4, code lost:
        r0 = r4;
     */
    /* JADX WARN: Removed duplicated region for block: B:13:0x004c  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0061  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x00d3  */
    /* JADX WARN: Removed duplicated region for block: B:33:? A[RETURN, SYNTHETIC] */
    @Override // com.apk.f6
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void initView() {
        /*
            r11 = this;
            r0 = 2131297767(0x7f0905e7, float:1.8213488E38)
            r1 = 2131756003(0x7f1003e3, float:1.9142901E38)
            r11.initTopBarOnlyTitle(r0, r1)
            android.content.Intent r0 = r11.getIntent()
            r1 = 0
            r2 = 1
            if (r0 == 0) goto L39
            java.lang.String r3 = "INTENT_NAME_KEY"
            java.lang.String r3 = r0.getStringExtra(r3)
            boolean r4 = android.text.TextUtils.isEmpty(r3)
            if (r4 != 0) goto L2b
            android.widget.EditText r4 = r11.mNameEt
            r4.setText(r3)
            android.widget.EditText r4 = r11.mNameEt
            int r3 = r3.length()
            r4.setSelection(r3)
        L2b:
            java.lang.String r3 = "INTENT_SOURCE_TYPE_KEY"
            boolean r4 = r0.hasExtra(r3)
            if (r4 == 0) goto L39
            boolean r0 = r0.getBooleanExtra(r3, r2)
            r3 = 1
            goto L3b
        L39:
            r0 = 1
            r3 = 0
        L3b:
            com.apk.continue r4 = com.apk.Ccontinue.m379if()
            com.apk.hf r4 = r4.f729while
            com.apk.hf r5 = com.apk.hf.BOOK
            r6 = 8
            r7 = 2131755996(0x7f1003dc, float:1.9142887E38)
            java.lang.String r8 = "novel"
            if (r4 != r5) goto L61
            java.lang.String[] r0 = new java.lang.String[]{r8}
            r11.f6861do = r0
            java.lang.String[] r0 = new java.lang.String[r2]
            java.lang.String r2 = com.apk.ze.q(r7)
            r0[r1] = r2
            com.shizhefei.view.indicator.ScrollIndicatorView r2 = r11.indicatorView
            r2.setVisibility(r6)
        L5f:
            r2 = 0
            goto Lb8
        L61:
            com.apk.hf r5 = com.apk.hf.COMIC
            r9 = 2131756001(0x7f1003e1, float:1.9142897E38)
            java.lang.String r10 = "cartoon"
            if (r4 != r5) goto L7e
            java.lang.String[] r0 = new java.lang.String[]{r10}
            r11.f6861do = r0
            java.lang.String[] r0 = new java.lang.String[r2]
            java.lang.String r2 = com.apk.ze.q(r9)
            r0[r1] = r2
            com.shizhefei.view.indicator.ScrollIndicatorView r2 = r11.indicatorView
            r2.setVisibility(r6)
            goto L5f
        L7e:
            com.apk.hf r5 = com.apk.hf.BOOK_COMIC
            r6 = 2
            if (r4 != r5) goto L9c
            java.lang.String[] r4 = new java.lang.String[]{r8, r10}
            r11.f6861do = r4
            java.lang.String[] r4 = new java.lang.String[r6]
            java.lang.String r5 = com.apk.ze.q(r7)
            r4[r1] = r5
            java.lang.String r5 = com.apk.ze.q(r9)
            r4[r2] = r5
            if (r3 == 0) goto Lb6
            if (r0 != 0) goto Lb6
            goto Lb4
        L9c:
            java.lang.String[] r4 = new java.lang.String[]{r10, r8}
            r11.f6861do = r4
            java.lang.String[] r4 = new java.lang.String[r6]
            java.lang.String r5 = com.apk.ze.q(r9)
            r4[r1] = r5
            java.lang.String r5 = com.apk.ze.q(r7)
            r4[r2] = r5
            if (r3 == 0) goto Lb6
            if (r0 == 0) goto Lb6
        Lb4:
            r0 = r4
            goto Lb8
        Lb6:
            r0 = r4
            goto L5f
        Lb8:
            com.shizhefei.view.indicator.ScrollIndicatorView r3 = r11.indicatorView
            com.apk.nz r4 = new com.apk.nz
            r5 = 1120403456(0x42c80000, float:100.0)
            int r5 = com.apk.eg.m587catch(r5)
            r4.<init>(r11, r0, r5)
            r3.setAdapter(r4)
            com.shizhefei.view.indicator.ScrollIndicatorView r0 = r11.indicatorView
            r3 = 30
            r4 = 14
            com.apk.ze.u(r11, r0, r3, r4)
            if (r2 == 0) goto Ld8
            com.shizhefei.view.indicator.ScrollIndicatorView r0 = r11.indicatorView
            r0.mo145if(r2, r1)
        Ld8:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.biquge.ebook.app.ui.activity.WantReadBookActivity.initView():void");
    }

    @Override // com.apk.f6
    public boolean isTouchHideKeybord() {
        return true;
    }

    @OnClick({R.id.want_book_file_bt})
    public void menuClick() {
        if (!v0.m2736try().m2741const()) {
            ze.M(this);
            return;
        }
        String m1006interface = Cgoto.m1006interface(this.mNameEt);
        String m1006interface2 = Cgoto.m1006interface(this.mAuthorEt);
        if (TextUtils.isEmpty(m1006interface)) {
            ToastUtils.show((int) R.string.upload_book_name_txt_notnull_txt);
        } else if (TextUtils.isEmpty(m1006interface2)) {
            ToastUtils.show((int) R.string.upload_book_writer_txt_url_error_txt);
        } else if (this.f6863if != null) {
            String[] strArr = this.f6861do;
            String str = strArr != null ? strArr[this.indicatorView.getCurrentItem()] : "novel";
            v3 v3Var = this.f6863if;
            if (v3Var != null) {
                HashMap m1007native = Cgoto.m1007native("action", "begbook");
                m1007native.put("deviceno", eg.m613super());
                m1007native.put("type", str);
                m1007native.put("name", m1006interface);
                m1007native.put(NotificationCompat.CarExtender.KEY_AUTHOR, m1006interface2);
                x4.m2951default("novel".equals(str) ? w.m2842default() : Cgoto.m990catch(new StringBuilder(), "/UploadBook.aspx"), m1007native, new h4(v3Var));
                return;
            }
            throw null;
        }
    }
}
