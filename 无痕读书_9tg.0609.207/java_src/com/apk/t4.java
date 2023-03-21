package com.apk;

import android.app.Activity;
import android.text.TextUtils;
import com.biquge.ebook.app.bean.CollectBook;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import kimi.wuhends.ebooks.R;
/* compiled from: NovelShelfPresenter.java */
/* loaded from: classes8.dex */
public class t4 extends p1 {

    /* renamed from: for  reason: not valid java name */
    public final v5 f4635for;

    public t4(Activity activity, v5 v5Var) {
        this.f3559do = activity;
        this.f4635for = v5Var;
    }

    /* renamed from: for  reason: not valid java name */
    public static List<CollectBook> m2570for() {
        return m2571new(false);
    }

    /* renamed from: new  reason: not valid java name */
    public static List<CollectBook> m2571new(boolean z) {
        boolean z2;
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        ArrayList arrayList = new ArrayList();
        for (CollectBook collectBook : n2.m1824implements()) {
            String groupId = collectBook.getGroupId();
            if (!TextUtils.isEmpty(groupId)) {
                collectBook.setIsGroup(1);
                if (linkedHashMap.containsKey(groupId)) {
                    List list = (List) linkedHashMap.get(groupId);
                    list.add(collectBook);
                    linkedHashMap.put(groupId, list);
                } else {
                    ArrayList arrayList2 = new ArrayList();
                    arrayList2.add(collectBook);
                    linkedHashMap.put(groupId, arrayList2);
                    collectBook.setItemType(3);
                    arrayList.add(collectBook);
                }
            } else if (!z) {
                collectBook.setIsGroup(0);
                collectBook.setItemType(2);
                arrayList.add(collectBook);
            }
        }
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            CollectBook collectBook2 = (CollectBook) it.next();
            if (collectBook2.isGroup()) {
                List<CollectBook> list2 = (List) linkedHashMap.get(collectBook2.getGroupId());
                if (list2 != null && list2.size() > 0) {
                    collectBook2.setGroupBooks(list2);
                    collectBook2.setGroupBookCount(ze.r(R.string.element_book_count_txt, String.valueOf(list2.size())));
                    ArrayList arrayList3 = new ArrayList();
                    for (int i = 0; i < list2.size() && i != 4; i++) {
                        CollectBook collectBook3 = list2.get(i);
                        if (collectBook3.isLocalBook()) {
                            arrayList3.add("localtion://");
                        } else if (collectBook3.isWebSite()) {
                            arrayList3.add("websearch://");
                        } else {
                            arrayList3.add(collectBook3.getIcon());
                        }
                    }
                    collectBook2.setGroupIcons(arrayList3);
                } else {
                    collectBook2.setIsGroup(0);
                    n2.F(collectBook2.getCollectId(), "", "", true);
                }
                String str = null;
                if (list2 != null) {
                    z2 = false;
                    for (CollectBook collectBook4 : list2) {
                        if (collectBook4.isNew()) {
                            z2 = true;
                        }
                        if (!TextUtils.isEmpty(collectBook4.getStickTime())) {
                            str = collectBook4.getStickTime();
                        }
                    }
                } else {
                    z2 = false;
                }
                collectBook2.setNew(z2);
                collectBook2.setStickTime(str);
            }
        }
        return arrayList;
    }
}
