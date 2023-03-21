package com.apk;

import android.app.Activity;
import android.text.TextUtils;
import com.manhua.data.bean.ComicCollectBean;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import kimi.wuhends.ebooks.R;
/* compiled from: ComicShelfPresenter.java */
/* loaded from: classes8.dex */
public class p3 extends p1 {

    /* renamed from: for  reason: not valid java name */
    public final s5 f3567for;

    public p3(Activity activity, s5 s5Var) {
        this.f3559do = activity;
        this.f3567for = s5Var;
    }

    /* renamed from: for  reason: not valid java name */
    public static List<ComicCollectBean> m2018for() {
        return m2019new(false);
    }

    /* renamed from: new  reason: not valid java name */
    public static List<ComicCollectBean> m2019new(boolean z) {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        ArrayList arrayList = new ArrayList();
        for (ComicCollectBean comicCollectBean : mu.m1770implements()) {
            String groupId = comicCollectBean.getGroupId();
            if (!TextUtils.isEmpty(groupId)) {
                comicCollectBean.setIsGroup(1);
                if (linkedHashMap.containsKey(groupId)) {
                    List list = (List) linkedHashMap.get(groupId);
                    list.add(comicCollectBean);
                    linkedHashMap.put(groupId, list);
                } else {
                    ArrayList arrayList2 = new ArrayList();
                    arrayList2.add(comicCollectBean);
                    linkedHashMap.put(groupId, arrayList2);
                    comicCollectBean.setItemType(3);
                    arrayList.add(comicCollectBean);
                }
            } else if (!z) {
                comicCollectBean.setIsGroup(0);
                comicCollectBean.setItemType(2);
                arrayList.add(comicCollectBean);
            }
        }
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            ComicCollectBean comicCollectBean2 = (ComicCollectBean) it.next();
            if (comicCollectBean2.isGroup()) {
                List<ComicCollectBean> list2 = (List) linkedHashMap.get(comicCollectBean2.getGroupId());
                if (list2 != null && list2.size() > 0) {
                    comicCollectBean2.setGroupBooks(list2);
                    comicCollectBean2.setGroupBookCount(ze.r(R.string.element_book_count_txt, String.valueOf(list2.size())));
                    int size = list2.size() <= 4 ? list2.size() : 4;
                    ArrayList arrayList3 = new ArrayList();
                    for (int i = 0; i < size; i++) {
                        ComicCollectBean comicCollectBean3 = list2.get(i);
                        if (comicCollectBean3.isLocalBook(comicCollectBean3.getFileType())) {
                            arrayList3.add("localtion://");
                        } else {
                            arrayList3.add(comicCollectBean3.getIcon());
                        }
                    }
                    comicCollectBean2.setGroupIcons(arrayList3);
                } else {
                    comicCollectBean2.setIsGroup(0);
                    n2.E(comicCollectBean2.getCollectId(), "", "", true);
                }
                String str = null;
                boolean z2 = false;
                for (ComicCollectBean comicCollectBean4 : list2) {
                    if (comicCollectBean4.isNew()) {
                        z2 = true;
                    }
                    if (!TextUtils.isEmpty(comicCollectBean4.getStickTime())) {
                        str = comicCollectBean4.getStickTime();
                    }
                }
                comicCollectBean2.setNew(z2);
                comicCollectBean2.setStickTime(str);
            }
        }
        return arrayList;
    }
}
