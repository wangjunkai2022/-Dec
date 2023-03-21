package com.biquge.ebook.app.ui.view;

import android.content.Context;
import android.widget.ImageView;
import androidx.annotation.NonNull;
import com.apk.Cgoto;
import com.apk.k40;
import com.apk.kg;
import com.apk.o40;
import com.apk.r40;
import com.apk.rc;
import com.apk.sc;
import com.apk.tt;
import com.apk.y;
import com.apk.ze;
import com.biquge.ebook.app.bean.ConfigMessage;
import com.biquge.ebook.app.widget.AppProgressBar;
import com.lxj.xpopup.core.CenterPopupView;
import com.swl.gg.widget.SwlAdImageView;
import kimi.wuhends.ebooks.R;
/* loaded from: classes8.dex */
public class ConfigImagePopupView extends CenterPopupView implements o40 {

    /* renamed from: do  reason: not valid java name */
    public final ConfigMessage f7660do;

    /* renamed from: for  reason: not valid java name */
    public ImageView f7661for;

    /* renamed from: if  reason: not valid java name */
    public final boolean f7662if;

    /* renamed from: new  reason: not valid java name */
    public SwlAdImageView f7663new;

    /* renamed from: try  reason: not valid java name */
    public AppProgressBar f7664try;

    public ConfigImagePopupView(@NonNull Context context, ConfigMessage configMessage, boolean z) {
        super(context);
        this.f7660do = configMessage;
        this.f7662if = z;
    }

    public static String getMessageMaxCountTag() {
        return kg.m1498if() + "SP_MAIN_PUBLIC_IMAGE_MAXCOUNT_IID_KEY";
    }

    @Override // com.apk.o40
    public void error() {
        dismiss();
    }

    @Override // com.lxj.xpopup.core.CenterPopupView, com.lxj.xpopup.core.BasePopupView
    public int getImplLayoutId() {
        return R.layout.popwindow_config_image;
    }

    @Override // com.lxj.xpopup.core.BasePopupView
    public void onCreate() {
        super.onCreate();
        this.f7663new = (SwlAdImageView) findViewById(R.id.popwindow_config_msg_view);
        if (this.f7662if) {
            ImageView imageView = (ImageView) findViewById(R.id.popwindow_config_msg_closeview);
            this.f7661for = imageView;
            imageView.setOnClickListener(new rc(this));
        }
        this.f7664try = (AppProgressBar) findViewById(R.id.popwindow_config_progress_view);
        if (this.f7660do == null) {
            return;
        }
        r40 r40Var = k40.f2467do;
        if (r40Var != null) {
            ((y) r40Var).m3052do(getContext(), this.f7660do.getPdcover(), this.f7663new, this);
        }
        this.f7663new.setOnClickListener(new sc(this));
        tt.f4763do.putString(Cgoto.m989case("CONFIG_MESSAGE_", this.f7660do.getId()), "");
        String messageMaxCountTag = getMessageMaxCountTag();
        tt.f4763do.putInt(messageMaxCountTag, ze.m3174instanceof(messageMaxCountTag, 0) + 1);
    }

    @Override // com.apk.o40
    public void success() {
        ImageView imageView = this.f7661for;
        if (imageView != null && imageView.getVisibility() != 0) {
            this.f7661for.setVisibility(0);
        }
        AppProgressBar appProgressBar = this.f7664try;
        if (appProgressBar != null) {
            appProgressBar.setVisibility(8);
        }
    }
}
