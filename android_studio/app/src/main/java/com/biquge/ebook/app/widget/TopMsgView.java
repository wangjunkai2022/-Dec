package com.biquge.ebook.app.widget;

import android.content.Context;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import androidx.annotation.Nullable;
import com.apk.kf;
import com.apk.mf;
import com.apk.w0;
import com.apk.xp0;
import com.apk.ze;
import com.biquge.ebook.app.bean.DownloadFileModel;
import com.biquge.ebook.app.widget.marqueeview.ShelfMarqueeView;
import com.swl.gg.ggs.SwlAdHelper;
import kimi.wuhends.ebooks.R;

/* loaded from: classes8.dex */
public class TopMsgView extends FrameLayout implements View.OnClickListener {

    /* renamed from: do  reason: not valid java name */
    public ShelfMarqueeView f8274do;

    /* renamed from: for  reason: not valid java name */
    public ImageView f8275for;

    /* renamed from: if  reason: not valid java name */
    public View f8276if;

    /* renamed from: new  reason: not valid java name */
    public xp0 f8277new;

    public TopMsgView(Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet, 0);
    }

    /* renamed from: do  reason: not valid java name */
    public static /* synthetic */ void m3526do(TopMsgView topMsgView, boolean z) {
        topMsgView.m3528if(z);
    }

    /* renamed from: for  reason: not valid java name */
    public static void m3527for(Context context, String str, String str2, String str3) {
        if ("1".equals(str3)) {
            SwlAdHelper.openBrowser(context, str, true);
        } else if ("2".equals(str3)) {
            SwlAdHelper.openBrowser(context, str, false);
        } else if ("3".equals(str3)) {
            if (ze.G(str2)) {
                ze.g0(context, str2);
                return;
            }
            DownloadFileModel downloadFileModel = new DownloadFileModel();
            downloadFileModel.info = "推荐";
            downloadFileModel.isShowToast = true;
            downloadFileModel.isShowNotice = true;
            downloadFileModel.isInstall = true;
            downloadFileModel.url = str;
            kf.m1484if(context, downloadFileModel, null);
        }
    }

    /* renamed from: if  reason: not valid java name */
    public final void m3528if(boolean z) {
        try {
            if (z) {
                if (this.f8277new == null) {
                    if (this.f8276if != null) {
                        this.f8276if.setVisibility(0);
                    }
                    xp0 xp0Var = new xp0(getContext());
                    this.f8277new = xp0Var;
                    xp0Var.m3031do(this.f8276if);
                    int p = ze.p(R.color.color_F7B11B);
                    xp0 xp0Var2 = xp0Var;
                    xp0Var2.f5728do = p;
                    if (p == 0) {
                        xp0Var2.f5740private.setXfermode(null);
                    } else {
                        xp0Var2.f5740private.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.SRC_IN));
                    }
                    xp0Var2.invalidate();
                    xp0Var2.m3037this(1.0f, 10.0f, true);
                    xp0Var2.m3034goto(-1);
                    mf.m1712do("REFRESH_CLEAR_SHELF_TASK_RED_KEY", null);
                }
            } else if (this.f8277new != null) {
                if (this.f8276if != null) {
                    this.f8276if.setVisibility(8);
                }
                this.f8277new.m3034goto(0);
                this.f8277new = null;
                w0.m2898volatile(false);
                mf.m1712do("REFRESH_CLEAR_SHELF_TASK_RED_KEY", null);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (view.getId() == R.id.home_public_tips_close) {
            setVisibility(8);
        }
    }
}
