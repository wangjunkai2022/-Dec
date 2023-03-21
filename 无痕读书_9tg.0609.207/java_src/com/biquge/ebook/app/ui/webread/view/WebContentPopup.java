package com.biquge.ebook.app.ui.webread.view;

import android.content.Context;
import androidx.annotation.NonNull;
import com.apk.ie;
import com.apk.lv;
import com.apk.ov;
import com.apk.zu;
import com.lxj.xpopup.core.AttachPopupView;
import com.lxj.xpopup.core.BottomPopupView;
import com.lxj.xpopup.core.CenterPopupView;
import com.lxj.xpopup.core.ImageViewerPopupView;
import com.lxj.xpopup.core.PositionPopupView;
import com.lxj.xpopup.impl.FullScreenPopupView;
import kimi.wuhends.ebooks.R;
/* loaded from: classes8.dex */
public class WebContentPopup extends FullScreenPopupView {

    /* renamed from: break  reason: not valid java name */
    public final boolean f7902break;

    /* renamed from: catch  reason: not valid java name */
    public final boolean f7903catch;

    /* renamed from: else  reason: not valid java name */
    public WebContentView f7904else;

    /* renamed from: goto  reason: not valid java name */
    public final String f7905goto;

    /* renamed from: this  reason: not valid java name */
    public final boolean f7906this;

    public WebContentPopup(@NonNull Context context, String str, boolean z, boolean z2, boolean z3) {
        super(context);
        this.f7905goto = str;
        this.f7906this = z;
        this.f7902break = z2;
        this.f7903catch = z3;
    }

    /* renamed from: this  reason: not valid java name */
    public static void m3437this(Context context, String str, boolean z, boolean z2, boolean z3) {
        lv lvVar = new lv();
        lvVar.f2913case = Boolean.FALSE;
        lvVar.f2921extends = false;
        lvVar.f2940this = ov.NoAnimation;
        WebContentPopup webContentPopup = new WebContentPopup(context, str, z, z2, z3);
        if (webContentPopup instanceof CenterPopupView) {
            lvVar.f2917continue = zu.f6266try;
        } else if (webContentPopup instanceof BottomPopupView) {
            lvVar.f2917continue = zu.f6266try;
        } else if (webContentPopup instanceof AttachPopupView) {
            lvVar.f2917continue = zu.f6266try;
        } else if (webContentPopup instanceof ImageViewerPopupView) {
            lvVar.f2917continue = zu.f6266try;
        } else if (webContentPopup instanceof PositionPopupView) {
            lvVar.f2917continue = zu.f6266try;
        }
        webContentPopup.popupInfo = lvVar;
        webContentPopup.show();
    }

    @Override // com.lxj.xpopup.core.BasePopupView
    public int getImplLayoutId() {
        return R.layout.popup_web_content_layout;
    }

    @Override // com.lxj.xpopup.core.BasePopupView
    public void onCreate() {
        super.onCreate();
        WebContentView webContentView = (WebContentView) findViewById(R.id.popup_content_webview);
        this.f7904else = webContentView;
        webContentView.setWebCodeCallback(new ie(this));
        this.f7904else.m3445catch(this.f7905goto, this.f7906this, this.f7902break, this.f7903catch);
    }
}
