package com.apk;

import android.content.Intent;
import android.view.View;
import com.biquge.ebook.app.ui.activity.MainActivity;
import com.manhua.ui.fragment.ComicShelfFragment;
/* compiled from: ComicShelfFragment.java */
/* loaded from: classes8.dex */
public class a20 extends bg {

    /* renamed from: do  reason: not valid java name */
    public final /* synthetic */ ComicShelfFragment f16do;

    public a20(ComicShelfFragment comicShelfFragment) {
        this.f16do = comicShelfFragment;
    }

    @Override // com.apk.bg
    public void onNoDoubleClick(View view) {
        Intent intent = new Intent(this.f16do.getSupportActivity(), MainActivity.class);
        intent.putExtra("type", 1002);
        this.f16do.startActivity(intent);
    }
}
