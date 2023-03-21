package com.expand.listen.fragment;

import android.view.View;
import android.widget.TextView;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import androidx.viewpager.widget.ViewPager;
import butterknife.Unbinder;
import butterknife.internal.DebouncingOnClickListener;
import butterknife.internal.Utils;
import com.apk.b40;
import com.apk.eg;
import com.apk.i6;
import com.apk.lq0;
import com.apk.nt;
import com.apk.ot;
import com.apk.q0;
import com.apk.tr0;
import com.biquge.ebook.app.app.AppContext;
import java.util.ArrayList;
import kimi.wuhends.ebooks.R;
/* loaded from: classes8.dex */
public class ListenRankFragment_ViewBinding implements Unbinder {

    /* renamed from: do  reason: not valid java name */
    public ListenRankFragment f9417do;

    /* renamed from: if  reason: not valid java name */
    public View f9418if;

    /* renamed from: com.expand.listen.fragment.ListenRankFragment_ViewBinding$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cdo extends DebouncingOnClickListener {

        /* renamed from: do  reason: not valid java name */
        public final /* synthetic */ ListenRankFragment f9419do;

        public Cdo(ListenRankFragment_ViewBinding listenRankFragment_ViewBinding, ListenRankFragment listenRankFragment) {
            this.f9419do = listenRankFragment;
        }

        @Override // butterknife.internal.DebouncingOnClickListener
        public void doClick(View view) {
            ListenRankFragment listenRankFragment = this.f9419do;
            i6 supportActivity = listenRankFragment.getSupportActivity();
            ArrayList arrayList = new ArrayList();
            int i = 0;
            while (true) {
                String[] strArr = q0.f3776goto;
                if (i >= strArr.length) {
                    nt ntVar = new nt(supportActivity, arrayList, listenRankFragment.f9415try, false, true);
                    ntVar.m1915if(eg.m587catch(100.0f));
                    ntVar.m1913do(8388613);
                    ntVar.f3309for = true;
                    ntVar.m1914for(listenRankFragment.time_choose);
                    return;
                }
                String str = strArr[i];
                ot otVar = new ot();
                otVar.f3498if = str;
                otVar.f3497for = lq0.m1660do(AppContext.f6392case, tr0.m2617do(R.color.color_333333));
                otVar.f3499new = str.equals(listenRankFragment.time_choose.getText().toString().trim());
                arrayList.add(otVar);
                i++;
            }
        }
    }

    @UiThread
    public ListenRankFragment_ViewBinding(ListenRankFragment listenRankFragment, View view) {
        this.f9417do = listenRankFragment;
        listenRankFragment.mViewPager = (ViewPager) Utils.findRequiredViewAsType(view, R.id.fragment_listen_rank_viewPager, "field 'mViewPager'", ViewPager.class);
        listenRankFragment.mIndicator = (b40) Utils.findRequiredViewAsType(view, R.id.fragment_listen_rank_indicator, "field 'mIndicator'", b40.class);
        View findRequiredView = Utils.findRequiredView(view, R.id.time_choose, "field 'time_choose' and method 'menuClick'");
        listenRankFragment.time_choose = (TextView) Utils.castView(findRequiredView, R.id.time_choose, "field 'time_choose'", TextView.class);
        this.f9418if = findRequiredView;
        findRequiredView.setOnClickListener(new Cdo(this, listenRankFragment));
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        ListenRankFragment listenRankFragment = this.f9417do;
        if (listenRankFragment != null) {
            this.f9417do = null;
            listenRankFragment.mViewPager = null;
            listenRankFragment.mIndicator = null;
            listenRankFragment.time_choose = null;
            this.f9418if.setOnClickListener(null);
            this.f9418if = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
