package com.biquge.ebook.app.ui.view;

import android.content.Context;
import android.text.Html;
import android.text.TextUtils;
import android.view.View;
import android.widget.TextView;
import androidx.annotation.NonNull;
import com.apk.bg;
import com.apk.kg;
import com.apk.tt;
import com.apk.ze;
import com.biquge.ebook.app.bean.ConfigMessage;
import com.lxj.xpopup.core.CenterPopupView;
import com.swl.gg.ggs.SwlAdHelper;
import kimi.wuhends.ebooks.R;
/* loaded from: classes8.dex */
public class ConfigMessagePopupView extends CenterPopupView {

    /* renamed from: case  reason: not valid java name */
    public TextView f7665case;

    /* renamed from: do  reason: not valid java name */
    public final ConfigMessage f7666do;

    /* renamed from: else  reason: not valid java name */
    public TextView f7667else;

    /* renamed from: for  reason: not valid java name */
    public final String f7668for;

    /* renamed from: goto  reason: not valid java name */
    public final bg f7669goto;

    /* renamed from: if  reason: not valid java name */
    public final String f7670if;

    /* renamed from: new  reason: not valid java name */
    public TextView f7671new;

    /* renamed from: try  reason: not valid java name */
    public TextView f7672try;

    /* renamed from: com.biquge.ebook.app.ui.view.ConfigMessagePopupView$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cdo extends bg {
        public Cdo() {
        }

        @Override // com.apk.bg
        public void onNoDoubleClick(View view) {
            if (view.getId() == R.id.k7) {
                ConfigMessagePopupView.this.dismiss();
            } else if (view.getId() == R.id.dialog_ok) {
                String landingtype = ConfigMessagePopupView.this.f7666do.getLandingtype();
                String navtitle = ConfigMessagePopupView.this.f7666do.getNavtitle();
                SwlAdHelper.setAdClick(ConfigMessagePopupView.this.getContext(), landingtype, ConfigMessagePopupView.this.f7666do.getClicktarget(), navtitle);
                ConfigMessagePopupView.this.dismiss();
            }
        }
    }

    public ConfigMessagePopupView(@NonNull Context context, ConfigMessage configMessage, String str, String str2) {
        super(context);
        this.f7669goto = new Cdo();
        this.f7666do = configMessage;
        this.f7670if = str;
        this.f7668for = str2;
    }

    public static String getMessageMaxCountTag() {
        return kg.m1498if() + "SP_MAIN_PUBLIC_TEXT_MAXCOUNT_IID_KEY";
    }

    @Override // com.lxj.xpopup.core.CenterPopupView, com.lxj.xpopup.core.BasePopupView
    public int getImplLayoutId() {
        return R.layout.popwindow_config_message;
    }

    @Override // com.lxj.xpopup.core.BasePopupView
    public void onCreate() {
        super.onCreate();
        this.f7671new = (TextView) findViewById(R.id.dialog_config_msg_title);
        this.f7672try = (TextView) findViewById(R.id.dialog_message);
        this.f7665case = (TextView) findViewById(R.id.k7);
        this.f7667else = (TextView) findViewById(R.id.dialog_ok);
        this.f7665case.setOnClickListener(this.f7669goto);
        this.f7667else.setOnClickListener(this.f7669goto);
        try {
            if (this.f7666do != null) {
                this.f7671new.setText(Html.fromHtml(this.f7666do.getNavtitle()));
                this.f7672try.setText(Html.fromHtml(this.f7666do.getMsgintro()));
                this.f7665case.setText(this.f7668for);
                this.f7665case.setVisibility(0);
                if (!TextUtils.isEmpty(this.f7670if)) {
                    this.f7667else.setText(this.f7670if);
                    this.f7667else.setVisibility(0);
                }
                String id = this.f7666do.getId();
                tt.f4763do.putString("CONFIG_MESSAGE_" + id, "");
                String messageMaxCountTag = getMessageMaxCountTag();
                tt.f4763do.putInt(messageMaxCountTag, ze.m3174instanceof(messageMaxCountTag, 0) + 1);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
