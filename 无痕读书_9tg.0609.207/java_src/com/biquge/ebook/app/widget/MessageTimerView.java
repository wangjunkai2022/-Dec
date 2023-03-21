package com.biquge.ebook.app.widget;

import android.app.Activity;
import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import butterknife.BindView;
import butterknife.ButterKnife;
import com.apk.Cgoto;
import com.apk.g5;
import com.apk.l5;
import com.apk.p0;
import com.apk.sr0;
import com.apk.x4;
import com.apk.x5;
import com.apk.ze;
import com.hjq.toast.ToastUtils;
import com.umeng.analytics.pro.ak;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import kimi.wuhends.ebooks.R;
/* loaded from: classes8.dex */
public class MessageTimerView extends sr0 {

    /* renamed from: case  reason: not valid java name */
    public int f8079case;

    /* renamed from: for  reason: not valid java name */
    public boolean f8080for;

    /* renamed from: if  reason: not valid java name */
    public Cif f8081if;
    @BindView(R.id.loading_view)
    public ProgressBar mLoadingView;
    @BindView(R.id.timer_tv)
    public TextView mTimerView;

    /* renamed from: new  reason: not valid java name */
    public g5 f8082new;

    /* renamed from: try  reason: not valid java name */
    public final x5 f8083try;

    /* renamed from: com.biquge.ebook.app.widget.MessageTimerView$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cdo extends x5 {
        public Cdo() {
        }

        @Override // com.apk.x5
        /* renamed from: case */
        public void mo2978case(boolean z, String str) {
            MessageTimerView.this.mLoadingView.setVisibility(8);
            ToastUtils.show((CharSequence) str);
            if (z) {
                MessageTimerView messageTimerView = MessageTimerView.this;
                messageTimerView.f8079case = 60;
                messageTimerView.setEnabled(false);
                messageTimerView.f8081if.sendEmptyMessage(1024);
            }
        }
    }

    /* renamed from: com.biquge.ebook.app.widget.MessageTimerView$if  reason: invalid class name */
    /* loaded from: classes8.dex */
    public static class Cif extends Handler {

        /* renamed from: do  reason: not valid java name */
        public WeakReference<MessageTimerView> f8085do;

        public Cif(MessageTimerView messageTimerView, Cdo cdo) {
            super(Looper.getMainLooper());
            this.f8085do = new WeakReference<>(messageTimerView);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            MessageTimerView messageTimerView;
            super.handleMessage(message);
            WeakReference<MessageTimerView> weakReference = this.f8085do;
            if (weakReference == null || message.what != 1024 || (messageTimerView = weakReference.get()) == null) {
                return;
            }
            if (messageTimerView.getCountTime() == 0) {
                messageTimerView.mTimerView.setText(ze.q(R.string.get_vcode_txt));
                messageTimerView.setEnabled(true);
                return;
            }
            messageTimerView.f8079case--;
            messageTimerView.mTimerView.setText(messageTimerView.f8079case + ak.aB);
            sendEmptyMessageDelayed(1024, 1000L);
        }
    }

    public MessageTimerView(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f8083try = new Cdo();
        LayoutInflater.from(getContext()).inflate(R.layout.view_message_timer_layout, this);
        ButterKnife.bind(this);
        this.f8081if = new Cif(this, null);
        this.mTimerView.setText(getResources().getString(R.string.get_vcode_txt));
        this.f8082new = new g5((Activity) getContext(), this.f8083try);
    }

    public int getCountTime() {
        return this.f8079case;
    }

    /* renamed from: if  reason: not valid java name */
    public void m3478if(String str) {
        if (this.mLoadingView.getVisibility() == 0 || this.f8082new == null) {
            return;
        }
        this.mLoadingView.setVisibility(0);
        g5 g5Var = this.f8082new;
        boolean z = this.f8080for;
        if (g5Var != null) {
            HashMap m1012public = Cgoto.m1012public("action", "securitycode", "phone", str);
            if (z) {
                m1012public.put("type", "1");
            }
            x4.m2951default(p0.m2000const() + "/BookAction.aspx", m1012public, new l5(g5Var));
            return;
        }
        throw null;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        Cif cif = this.f8081if;
        if (cif != null) {
            cif.removeCallbacksAndMessages(null);
        }
    }

    public void setCheckPhone(boolean z) {
        this.f8080for = z;
    }
}
