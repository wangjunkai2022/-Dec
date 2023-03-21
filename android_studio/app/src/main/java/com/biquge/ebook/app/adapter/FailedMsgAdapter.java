package com.biquge.ebook.app.adapter;

import android.content.Context;
import android.content.Intent;
import android.text.Html;
import android.text.TextUtils;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.apk.da;
import com.apk.hf;
import com.apk.kf;
import com.apk.u;
import com.apk.w0;
import com.apk.ze;
import com.biquge.ebook.app.bean.ErrorConfBean;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.BaseViewHolder;
import com.swl.gg.ggs.SwlAdHelper;
import com.umeng.analytics.pro.ak;
import java.util.List;
import kimi.wuhends.ebooks.R;

/* loaded from: classes8.dex */
public class FailedMsgAdapter extends BaseQuickAdapter<ErrorConfBean.RowsTipBean, BaseViewHolder> {

    /* renamed from: do  reason: not valid java name */
    public final String f6353do;

    /* renamed from: if  reason: not valid java name */
    public int f6354if;

    public FailedMsgAdapter(@Nullable List<ErrorConfBean.RowsTipBean> list, boolean z) {
        super(R.layout.item_failed_msg_layout, list);
        this.f6353do = w0.m2899while();
        if (z) {
            if (da.m427native()) {
                this.f6354if = ze.p(R.color.color_999999);
            } else {
                this.f6354if = ze.p(R.color.color_333333);
            }
        }
    }

    /* renamed from: do  reason: not valid java name */
    public static void m3282do(Context context, ErrorConfBean.RowsTipBean rowsTipBean) {
        if (rowsTipBean != null) {
            try {
                String click = rowsTipBean.getClick();
                if ("netset".equals(click)) {
                    context.startActivity(new Intent("android.settings.WIRELESS_SETTINGS"));
                } else if ("report".equals(click)) {
                    w0.m2867case(context, hf.BOOK, ze.q(R.string.main_send_message_app_txt));
                } else if (click.startsWith("apk")) {
                    kf.m1482for(context, click.split("#")[1], "推荐");
                } else if (click.startsWith(ak.au)) {
                    String m2899while = w0.m2899while();
                    if (!TextUtils.isEmpty(m2899while)) {
                        SwlAdHelper.openBrowser(context, m2899while, true);
                    } else {
                        SwlAdHelper.openBrowser(context, click.split("#")[1], true);
                    }
                } else if (click.startsWith("sysweb")) {
                    String m2899while2 = w0.m2899while();
                    if (!TextUtils.isEmpty(m2899while2)) {
                        SwlAdHelper.openBrowser(context, m2899while2, false);
                    } else {
                        SwlAdHelper.openBrowser(context, click.split("#")[1], false);
                    }
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    @Override // com.chad.library.adapter.base.BaseQuickAdapter
    public void convert(@NonNull BaseViewHolder baseViewHolder, ErrorConfBean.RowsTipBean rowsTipBean) {
        ErrorConfBean.RowsTipBean rowsTipBean2 = rowsTipBean;
        ImageView imageView = (ImageView) baseViewHolder.getView(R.id.item_failed_msg_layout_icon);
        u.m2646final(rowsTipBean2.getIcon(), imageView);
        imageView.setVisibility(!TextUtils.isEmpty(rowsTipBean2.getIcon()) ? 0 : 8);
        String item = rowsTipBean2.getItem();
        String click = rowsTipBean2.getClick();
        if (!TextUtils.isEmpty(this.f6353do) && !TextUtils.isEmpty(click) && (click.contains(ak.au) || click.contains("sysweb"))) {
            item = item.replace(click.replace("inner#", "").replace("sysweb#", ""), this.f6353do);
        }
        TextView textView = (TextView) baseViewHolder.getView(R.id.item_failed_msg_layout_content);
        textView.setText(Html.fromHtml(item));
        int i = this.f6354if;
        if (i != 0) {
            textView.setTextColor(i);
        }
        if (TextUtils.isEmpty(click)) {
            return;
        }
        baseViewHolder.addOnClickListener(R.id.item_failed_msg_layout_content);
    }
}
