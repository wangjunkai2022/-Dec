package com.ss.android.socialbase.appdownloader.view;

import android.app.Activity;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.Window;
import android.view.WindowManager;
import androidx.annotation.Nullable;
import com.ss.android.socialbase.appdownloader.b;
import com.ss.android.socialbase.appdownloader.c;
import com.ss.android.socialbase.appdownloader.c.k;
import com.ss.android.socialbase.appdownloader.c.l;
import com.ss.android.socialbase.appdownloader.d;
import com.ss.android.socialbase.appdownloader.h;
import com.ss.android.socialbase.appdownloader.i;
import org.json.JSONObject;
/* loaded from: classes7.dex */
public class JumpUnknownSourceActivity extends Activity {

    /* renamed from: a  reason: collision with root package name */
    public k f11794a;
    public Intent b;
    @Nullable
    public Intent c;
    public int d;
    public JSONObject e;

    @Override // android.app.Activity
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        a();
        h.a().a(this);
    }

    @Override // android.app.Activity
    public void onNewIntent(Intent intent) {
        super.onNewIntent(intent);
        setIntent(intent);
        h.a().a(this);
    }

    @Override // android.app.Activity
    public void onResume() {
        super.onResume();
        Intent intent = getIntent();
        this.b = intent;
        if (intent != null) {
            this.c = (Intent) intent.getParcelableExtra("intent");
            this.d = intent.getIntExtra("id", -1);
            try {
                this.e = new JSONObject(intent.getStringExtra("config"));
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        if (this.e == null) {
            c.a((Activity) this);
            return;
        }
        b();
        k kVar = this.f11794a;
        if (kVar != null && !kVar.b()) {
            this.f11794a.a();
        } else if (this.f11794a == null) {
            finish();
        }
    }

    private void a() {
        Window window = getWindow();
        WindowManager.LayoutParams attributes = window.getAttributes();
        attributes.alpha = 0.0f;
        window.setAttributes(attributes);
    }

    private void b() {
        if (this.f11794a != null || this.b == null) {
            return;
        }
        try {
            com.ss.android.socialbase.appdownloader.c.c a2 = d.j().a();
            l a3 = a2 != null ? a2.a(this) : null;
            if (a3 == null) {
                a3 = new com.ss.android.socialbase.appdownloader.d.a(this);
            }
            int a4 = i.a(this, "tt_appdownloader_tip");
            int a5 = i.a(this, "tt_appdownloader_label_ok");
            int a6 = i.a(this, "tt_appdownloader_label_cancel");
            String optString = this.e.optString("jump_unknown_source_tips");
            if (TextUtils.isEmpty(optString)) {
                optString = getString(i.a(this, "tt_appdownloader_jump_unknown_source_tips"));
            }
            a3.a(a4).a(optString).a(a5, new DialogInterface.OnClickListener() { // from class: com.ss.android.socialbase.appdownloader.view.JumpUnknownSourceActivity.3
                @Override // android.content.DialogInterface.OnClickListener
                public void onClick(DialogInterface dialogInterface, int i) {
                    JumpUnknownSourceActivity jumpUnknownSourceActivity = JumpUnknownSourceActivity.this;
                    if (b.a(jumpUnknownSourceActivity, jumpUnknownSourceActivity.c, JumpUnknownSourceActivity.this.d, JumpUnknownSourceActivity.this.e)) {
                        b.c(JumpUnknownSourceActivity.this.d, JumpUnknownSourceActivity.this.e);
                    } else {
                        JumpUnknownSourceActivity jumpUnknownSourceActivity2 = JumpUnknownSourceActivity.this;
                        b.a((Context) jumpUnknownSourceActivity2, jumpUnknownSourceActivity2.c, true);
                    }
                    b.a(JumpUnknownSourceActivity.this.d, JumpUnknownSourceActivity.this.e);
                    JumpUnknownSourceActivity.this.finish();
                }
            }).b(a6, new DialogInterface.OnClickListener() { // from class: com.ss.android.socialbase.appdownloader.view.JumpUnknownSourceActivity.2
                @Override // android.content.DialogInterface.OnClickListener
                public void onClick(DialogInterface dialogInterface, int i) {
                    if (JumpUnknownSourceActivity.this.c != null) {
                        JumpUnknownSourceActivity jumpUnknownSourceActivity = JumpUnknownSourceActivity.this;
                        b.a((Context) jumpUnknownSourceActivity, jumpUnknownSourceActivity.c, true);
                    }
                    b.b(JumpUnknownSourceActivity.this.d, JumpUnknownSourceActivity.this.e);
                    JumpUnknownSourceActivity.this.finish();
                }
            }).a(new DialogInterface.OnCancelListener() { // from class: com.ss.android.socialbase.appdownloader.view.JumpUnknownSourceActivity.1
                @Override // android.content.DialogInterface.OnCancelListener
                public void onCancel(DialogInterface dialogInterface) {
                    if (JumpUnknownSourceActivity.this.c != null) {
                        JumpUnknownSourceActivity jumpUnknownSourceActivity = JumpUnknownSourceActivity.this;
                        b.a((Context) jumpUnknownSourceActivity, jumpUnknownSourceActivity.c, true);
                    }
                    b.b(JumpUnknownSourceActivity.this.d, JumpUnknownSourceActivity.this.e);
                    JumpUnknownSourceActivity.this.finish();
                }
            }).a(false);
            this.f11794a = a3.a();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
