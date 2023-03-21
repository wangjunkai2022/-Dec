package com.ss.android.downloadlib.addownload.compliance;

import android.app.Activity;
import android.app.Dialog;
import android.content.DialogInterface;
import android.graphics.Bitmap;
import android.graphics.Color;
import android.os.Bundle;
import android.view.View;
import android.view.Window;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import com.apk.Cgoto;
import com.bytedance.sdk.openadsdk.R;
import com.ss.android.downloadlib.addownload.compliance.d;
import com.ss.android.downloadlib.addownload.j;
import com.ss.android.downloadlib.g.l;
import com.ss.android.downloadlib.guide.install.ClipImageView;
/* loaded from: classes7.dex */
public class a extends Dialog {

    /* renamed from: a  reason: collision with root package name */
    public TextView f11619a;
    public TextView b;
    public TextView c;
    public TextView d;
    public TextView e;
    public TextView f;
    public ClipImageView g;
    public LinearLayout h;
    public Activity i;
    public final long j;
    public long k;
    public final com.ss.android.downloadlib.addownload.b.b l;

    public a(@NonNull Activity activity, long j) {
        super(activity);
        this.i = activity;
        this.j = j;
        this.l = c.a().get(Long.valueOf(j));
    }

    @Override // android.app.Dialog, android.content.DialogInterface
    public void dismiss() {
        super.dismiss();
        com.ss.android.socialbase.appdownloader.c.a(this.i);
    }

    @Override // android.app.Dialog
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (this.l == null) {
            dismiss();
            return;
        }
        requestWindowFeature(1);
        setContentView(R.layout.ttdownloader_dialog_appinfo);
        Window window = getWindow();
        if (window != null) {
            window.setBackgroundDrawableResource(R.drawable.ttdownloader_bg_transparent);
        }
        setCancelable(true);
        setCanceledOnTouchOutside(true);
        this.k = this.l.b;
        a();
        e.b("lp_app_dialog_show", this.k);
        setOnCancelListener(new DialogInterface.OnCancelListener() { // from class: com.ss.android.downloadlib.addownload.compliance.a.1
            @Override // android.content.DialogInterface.OnCancelListener
            public void onCancel(DialogInterface dialogInterface) {
                e.a("lp_app_dialog_cancel", a.this.k);
            }
        });
    }

    private void a() {
        this.f11619a = (TextView) findViewById(R.id.tv_app_name);
        this.b = (TextView) findViewById(R.id.tv_app_version);
        this.c = (TextView) findViewById(R.id.tv_app_developer);
        this.d = (TextView) findViewById(R.id.tv_app_detail);
        this.e = (TextView) findViewById(R.id.tv_app_privacy);
        this.f = (TextView) findViewById(R.id.tv_give_up);
        this.g = (ClipImageView) findViewById(R.id.iv_app_icon);
        this.h = (LinearLayout) findViewById(R.id.ll_download);
        this.f11619a.setText(l.a(this.l.e, "--"));
        TextView textView = this.b;
        StringBuilder m1016super = Cgoto.m1016super("版本号：");
        m1016super.append(l.a(this.l.f, "--"));
        textView.setText(m1016super.toString());
        TextView textView2 = this.c;
        StringBuilder m1016super2 = Cgoto.m1016super("开发者：");
        m1016super2.append(l.a(this.l.g, "应用信息正在完善中"));
        textView2.setText(m1016super2.toString());
        this.g.setRoundRadius(l.a(j.getContext(), 8.0f));
        this.g.setBackgroundColor(Color.parseColor("#EBEBEB"));
        d.a().a(this.j, new d.a() { // from class: com.ss.android.downloadlib.addownload.compliance.a.2
            @Override // com.ss.android.downloadlib.addownload.compliance.d.a
            public void a(Bitmap bitmap) {
                if (bitmap != null) {
                    a.this.g.setImageBitmap(bitmap);
                } else {
                    e.a(8, a.this.k);
                }
            }
        });
        this.d.setOnClickListener(new View.OnClickListener() { // from class: com.ss.android.downloadlib.addownload.compliance.a.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                b.a().a(a.this.i);
                AppDetailInfoActivity.a(a.this.i, a.this.j);
                e.a("lp_app_dialog_click_detail", a.this.k);
            }
        });
        this.e.setOnClickListener(new View.OnClickListener() { // from class: com.ss.android.downloadlib.addownload.compliance.a.4
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                b.a().a(a.this.i);
                AppPrivacyPolicyActivity.a(a.this.i, a.this.j);
                e.a("lp_app_dialog_click_privacy", a.this.k);
            }
        });
        this.f.setOnClickListener(new View.OnClickListener() { // from class: com.ss.android.downloadlib.addownload.compliance.a.5
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                a.this.dismiss();
                e.a("lp_app_dialog_click_giveup", a.this.k);
            }
        });
        this.h.setOnClickListener(new View.OnClickListener() { // from class: com.ss.android.downloadlib.addownload.compliance.a.6
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                e.a("lp_app_dialog_click_download", a.this.k);
                b.a().b(a.this.k);
                a.this.dismiss();
            }
        });
    }
}
