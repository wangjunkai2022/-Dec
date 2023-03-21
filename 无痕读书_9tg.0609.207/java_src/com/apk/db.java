package com.apk;

import android.content.Intent;
import android.view.View;
import com.biquge.ebook.app.ui.activity.MainActivity;
import com.biquge.ebook.app.ui.fragment.BookShelfFragment;
/* compiled from: BookShelfFragment.java */
/* loaded from: classes8.dex */
public class db extends bg {

    /* renamed from: do  reason: not valid java name */
    public final /* synthetic */ BookShelfFragment f843do;

    public db(BookShelfFragment bookShelfFragment) {
        this.f843do = bookShelfFragment;
    }

    @Override // com.apk.bg
    public void onNoDoubleClick(View view) {
        Intent intent = new Intent(this.f843do.getSupportActivity(), MainActivity.class);
        intent.putExtra("type", 1002);
        this.f843do.startActivity(intent);
    }
}
