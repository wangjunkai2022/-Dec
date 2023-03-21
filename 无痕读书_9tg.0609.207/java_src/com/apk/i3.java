package com.apk;

import android.text.TextUtils;
import com.manhua.data.bean.ComicElement;
import com.manhua.data.bean.CreateComicList;
import java.util.LinkedList;
import java.util.List;
import org.litepal.LitePal;
/* compiled from: ComicPresenter.java */
/* loaded from: classes8.dex */
public class i3 extends c1<List<ComicElement>> {

    /* renamed from: do  reason: not valid java name */
    public final /* synthetic */ z2 f2038do;

    public i3(z2 z2Var) {
        this.f2038do = z2Var;
    }

    @Override // com.apk.c1
    public List<ComicElement> doInBackground() {
        LinkedList linkedList = new LinkedList();
        try {
            List<CreateComicList> find = LitePal.order("saveTime desc").find(CreateComicList.class);
            if (find != null) {
                for (CreateComicList createComicList : find) {
                    try {
                        ComicElement comicElement = new ComicElement();
                        comicElement.setListId(String.valueOf(createComicList.getBookListId()));
                        comicElement.setTitle(createComicList.getTitle());
                        comicElement.setDescription(createComicList.getIntro());
                        comicElement.setUpdateTime(createComicList.getSaveTime());
                        if (!TextUtils.isEmpty(createComicList.getBooks())) {
                            comicElement.setCover(createComicList.getCover());
                            comicElement.setBookCount(createComicList.getBookCount());
                        }
                        linkedList.add(comicElement);
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                }
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        return linkedList;
    }

    @Override // com.apk.c1
    public void onPostExecute(List<ComicElement> list) {
        List<ComicElement> list2 = list;
        super.onPostExecute(list2);
        r5 r5Var = this.f2038do.f6096for;
        if (r5Var != null) {
            r5Var.mo2231class(list2, "my_draftBox");
        }
    }
}
