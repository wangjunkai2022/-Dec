package com.apk;

import android.view.View;
import com.biquge.ebook.app.adapter.BookGroupAdapter;
import com.biquge.ebook.app.bean.CollectBook;
import com.biquge.ebook.app.ui.activity.CreateBookGroupActivity;
import com.biquge.ebook.app.ui.fragment.BookShelfFragment;
import java.util.ArrayList;
import java.util.List;
import kimi.wuhends.ebooks.R;

/* compiled from: BookShelfFragment.java */
/* loaded from: classes8.dex */
public class eb extends bg {

    /* renamed from: do  reason: not valid java name */
    public final /* synthetic */ BookShelfFragment f1028do;

    public eb(BookShelfFragment bookShelfFragment) {
        this.f1028do = bookShelfFragment;
    }

    @Override // com.apk.bg
    public void onNoDoubleClick(View view) {
        BookGroupAdapter bookGroupAdapter;
        if (view.getId() == R.id.edit_select_all_bt) {
            BookGroupAdapter bookGroupAdapter2 = this.f1028do.f7368this;
            if (bookGroupAdapter2 != null) {
                int m3278if = bookGroupAdapter2.m3278if(false);
                yg ygVar = this.f1028do.f7371while;
                if (ygVar != null) {
                    ygVar.m3066do(m3278if, m3278if);
                }
            }
        } else if (view.getId() == R.id.edit_delete_bt) {
            BookShelfFragment bookShelfFragment = this.f1028do;
            BookGroupAdapter bookGroupAdapter3 = bookShelfFragment.f7368this;
            if (bookGroupAdapter3 != null) {
                bookShelfFragment.r(bookGroupAdapter3.m3276do());
            }
        } else if (view.getId() != R.id.edit_group_bt || (bookGroupAdapter = this.f1028do.f7368this) == null) {
        } else {
            List<CollectBook> m3276do = bookGroupAdapter.m3276do();
            if (((ArrayList) m3276do).size() > 0) {
                BookShelfFragment bookShelfFragment2 = this.f1028do;
                CreateBookGroupActivity.m(bookShelfFragment2.getSupportActivity(), m3276do, "", bookShelfFragment2.f7358for, bookShelfFragment2.f7363new);
            }
        }
    }
}
