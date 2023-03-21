package com.biquge.ebook.app.ui.fragment;

import android.graphics.Bitmap;
import android.os.SystemClock;
import android.text.Html;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewStub;
import android.widget.ImageView;
import android.widget.ScrollView;
import android.widget.TextView;
import androidx.recyclerview.widget.ItemTouchHelper;
import butterknife.BindView;
import butterknife.OnClick;
import com.apk.Ccontinue;
import com.apk.b1;
import com.apk.c1;
import com.apk.eg;
import com.apk.g6;
import com.apk.jg;
import com.apk.m0;
import com.apk.mf;
import com.apk.ss;
import com.apk.ts;
import com.apk.w;
import com.apk.w0;
import com.apk.wb;
import com.apk.xb;
import com.apk.yb;
import com.apk.ze;
import com.biquge.ebook.app.bean.NewShareDisBean;
import com.biquge.ebook.app.ui.activity.FragmentManagerActivity;
import com.biquge.ebook.app.widget.AppProgressBar;
import com.chanven.lib.cptr.PtrClassicFrameLayout;
import kimi.wuhends.ebooks.R;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
/* loaded from: classes8.dex */
public class LocalWebShareFragment extends g6 {

    /* renamed from: new  reason: not valid java name */
    public static final long[] f7515new = new long[2];
    @BindView(R.id.ad_number)
    public TextView ad_number;
    @BindView(R.id.dialog_qrcode_imageview)
    public ImageView dialog_qrcode_imageview;
    @BindView(R.id.dialog_qrcode_progress_view)
    public AppProgressBar dialog_qrcode_progress_view;

    /* renamed from: do  reason: not valid java name */
    public View f7516do;

    /* renamed from: for  reason: not valid java name */
    public boolean f7517for;

    /* renamed from: if  reason: not valid java name */
    public Bitmap f7518if;
    @BindView(R.id.activity_share_refresh_layout)
    public PtrClassicFrameLayout mPtrClassicFrameLayout;
    @BindView(R.id.activity_share_scrollview)
    public ScrollView mScrollView;
    @BindView(R.id.share_code)
    public TextView share_code;
    @BindView(R.id.tips_title1)
    public TextView tips_title1;
    @BindView(R.id.tp_number)
    public TextView tp_number;
    @BindView(R.id.yaoqing_number)
    public TextView yaoqing_number;

    /* renamed from: com.biquge.ebook.app.ui.fragment.LocalWebShareFragment$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cdo implements ts {

        /* renamed from: com.biquge.ebook.app.ui.fragment.LocalWebShareFragment$do$do  reason: invalid class name and collision with other inner class name */
        /* loaded from: classes8.dex */
        public class RunnableC0093do implements Runnable {
            public RunnableC0093do() {
            }

            @Override // java.lang.Runnable
            public void run() {
                LocalWebShareFragment localWebShareFragment = LocalWebShareFragment.this;
                PtrClassicFrameLayout ptrClassicFrameLayout = localWebShareFragment.mPtrClassicFrameLayout;
                if (ptrClassicFrameLayout != null) {
                    ptrClassicFrameLayout.post(new xb(localWebShareFragment, false));
                }
            }
        }

        public Cdo() {
        }

        @Override // com.apk.ts
        /* renamed from: do */
        public void mo41do(ss ssVar) {
            LocalWebShareFragment localWebShareFragment = LocalWebShareFragment.this;
            if (localWebShareFragment.mPtrClassicFrameLayout != null) {
                localWebShareFragment.h();
                LocalWebShareFragment.this.mPtrClassicFrameLayout.postDelayed(new RunnableC0093do(), ItemTouchHelper.Callback.DRAG_SCROLL_ACCELERATION_LIMIT_TIME_MS);
            }
        }

        @Override // com.apk.ts
        /* renamed from: if */
        public boolean mo42if(ss ssVar, View view, View view2) {
            return eg.m586case(LocalWebShareFragment.this.mScrollView);
        }
    }

    /* renamed from: com.biquge.ebook.app.ui.fragment.LocalWebShareFragment$for  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cfor extends c1<Void> {
        public Cfor() {
        }

        @Override // com.apk.c1
        public Void doInBackground() {
            m0.m1680for();
            return (Void) super.doInBackground();
        }

        @Override // com.apk.c1
        public void onPostExecute(Void r1) {
            super.onPostExecute(r1);
            LocalWebShareFragment.this.j();
        }

        @Override // com.apk.c1
        public void onPreExecute() {
            super.onPreExecute();
            LocalWebShareFragment.this.j();
        }
    }

    /* renamed from: com.biquge.ebook.app.ui.fragment.LocalWebShareFragment$if  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cif implements View.OnClickListener {
        public Cif() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            LocalWebShareFragment.m3380synchronized(LocalWebShareFragment.this);
        }
    }

    /* renamed from: com.biquge.ebook.app.ui.fragment.LocalWebShareFragment$new  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cnew extends c1<Object> {

        /* renamed from: do  reason: not valid java name */
        public final /* synthetic */ String f7523do;

        public Cnew(String str) {
            this.f7523do = str;
        }

        @Override // com.apk.c1
        public Object doInBackground() {
            try {
                String m2840class = w.m2840class(this.f7523do);
                LocalWebShareFragment.this.f7518if = jg.m1311do(m2840class);
            } catch (Exception e) {
                e.printStackTrace();
            }
            return super.doInBackground();
        }

        @Override // com.apk.c1
        public void onPostExecute(Object obj) {
            super.onPostExecute(obj);
            LocalWebShareFragment localWebShareFragment = LocalWebShareFragment.this;
            String str = this.f7523do;
            if (localWebShareFragment.share_code != null) {
                if (TextUtils.isEmpty(str)) {
                    localWebShareFragment.share_code.setText(ze.q(R.string.new_share_createcode_failed));
                } else {
                    localWebShareFragment.share_code.setText(ze.r(R.string.new_share_my_couponid, w0.m2869class()));
                }
            }
            try {
                LocalWebShareFragment.this.dialog_qrcode_progress_view.setVisibility(8);
                if (LocalWebShareFragment.this.f7518if != null) {
                    LocalWebShareFragment.this.dialog_qrcode_imageview.setImageBitmap(LocalWebShareFragment.this.f7518if);
                }
            } catch (Exception unused) {
            }
        }

        @Override // com.apk.c1
        public void onPreExecute() {
            super.onPreExecute();
            LocalWebShareFragment.this.dialog_qrcode_progress_view.setVisibility(0);
        }
    }

    /* renamed from: synchronized  reason: not valid java name */
    public static void m3380synchronized(LocalWebShareFragment localWebShareFragment) {
        if (localWebShareFragment != null) {
            long[] jArr = f7515new;
            System.arraycopy(jArr, 1, jArr, 0, jArr.length - 1);
            long[] jArr2 = f7515new;
            jArr2[jArr2.length - 1] = SystemClock.uptimeMillis();
            if (SystemClock.uptimeMillis() - f7515new[0] > 1000 || localWebShareFragment.f7517for) {
                return;
            }
            localWebShareFragment.f7517for = true;
            FragmentManagerActivity.i(localWebShareFragment.getSupportActivity(), "分享检测", "101");
            localWebShareFragment.getSupportActivity().postDelayed(new wb(localWebShareFragment), ItemTouchHelper.Callback.DRAG_SCROLL_ACCELERATION_LIMIT_TIME_MS);
            return;
        }
        throw null;
    }

    @Override // com.apk.g6
    public int getLayoutId() {
        return R.layout.share_local_fragment;
    }

    public final void h() {
        String m2869class = w0.m2869class();
        if (!TextUtils.isEmpty(m2869class)) {
            i(m2869class);
        } else {
            new b1().m141do(new yb(this));
        }
    }

    public final void i(String str) {
        if (!TextUtils.isEmpty(str)) {
            new b1().m141do(new Cfor());
        }
        new b1().m141do(new Cnew(str));
    }

    @Override // com.apk.g6
    public void initData() {
        h();
        j();
    }

    @Override // com.apk.g6
    public void initView() {
        String[] split;
        registerEventBus(this);
        try {
            NewShareDisBean m382for = Ccontinue.m379if().m382for();
            if (m382for != null) {
                this.tips_title1.setText(Html.fromHtml(m382for.getTg_tips()));
                String base_by = m382for.getBase_by();
                if (!TextUtils.isEmpty(base_by) && (split = base_by.split("=")) != null && split.length > 0) {
                    this.tp_number.setText(split[0]);
                    this.ad_number.setText(split[1]);
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        PtrClassicFrameLayout ptrClassicFrameLayout = this.mPtrClassicFrameLayout;
        ptrClassicFrameLayout.f4565throw = true;
        ptrClassicFrameLayout.setPtrHandler(new Cdo());
        this.dialog_qrcode_imageview.setOnClickListener(new Cif());
    }

    public final void j() {
        TextView textView = this.yaoqing_number;
        if (textView != null) {
            textView.setText(ze.r(R.string.new_share_link_users, Integer.valueOf(w0.m2868catch())));
        }
    }

    @OnClick({R.id.share_code, R.id.share_task, R.id.yaoqing_number})
    public void menuClk(View view) {
        if (view.getId() == R.id.yaoqing_number) {
            FragmentManagerActivity.i(getSupportActivity(), ze.q(R.string.new_share_lb_record_title), "10");
        } else if (view.getId() == R.id.share_task) {
            if (this.f7516do == null) {
                View inflate = ((ViewStub) findViewById(R.id.new_share_detail_layout)).inflate();
                this.f7516do = inflate;
                inflate.setVisibility(4);
            }
            w0.m2882interface(getSupportActivity(), this.f7516do, null, null);
        } else if (view.getId() == R.id.share_code && TextUtils.isEmpty(w0.m2869class())) {
            new b1().m141do(new yb(this));
        }
    }

    @Override // com.apk.g6, com.apk.k6, androidx.fragment.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        unRegisterEventBus(this);
        Bitmap bitmap = this.f7518if;
        if (bitmap != null) {
            bitmap.recycle();
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMainThread(mf mfVar) {
        if ("REFRESH_NEW_SHARE_LINK_USEAR".equals(mfVar.f3028do)) {
            j();
        }
    }
}
