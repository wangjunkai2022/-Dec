package com.apk;

import android.content.ContentValues;
import android.text.TextUtils;
import com.manhua.data.bean.ComicBean;
import com.manhua.data.bean.ComicCollectBean;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;
import org.litepal.LitePal;

/* compiled from: ComicShelfPresenter.java */
/* loaded from: classes8.dex */
public class l3 extends c1<List<ComicCollectBean>> {

    /* renamed from: do  reason: not valid java name */
    public final /* synthetic */ boolean f2738do;

    /* renamed from: if  reason: not valid java name */
    public final /* synthetic */ p3 f2739if;

    public l3(p3 p3Var, boolean z) {
        this.f2739if = p3Var;
        this.f2738do = z;
    }

    @Override // com.apk.c1
    public List<ComicCollectBean> doInBackground() {
        List<ComicCollectBean> find;
        JSONObject m2953extends;
        JSONArray optJSONArray;
        List<ComicBean> k0;
        Iterator<ComicBean> it;
        boolean z = this.f2738do;
        int i = 2;
        if (v0.m2736try().m2741const()) {
            HashMap hashMap = new HashMap();
            boolean m3179private = ze.m3179private("SP_SYNC_CLOUD_SHELF_KEY", false);
            p0.m2008native(false);
            if (m3179private) {
                hashMap.put("cache", "no");
            }
            try {
                m2953extends = x4.m2953extends(p0.m2014try() + "/Bookshelf.aspx", hashMap);
            } catch (Exception e) {
                e.printStackTrace();
            }
            if (m2953extends != null && (optJSONArray = m2953extends.optJSONArray("data")) != null && (k0 = ze.k0(optJSONArray)) != null && k0.size() > 0) {
                if (!ze.C()) {
                    ze.Z(true);
                }
                if (z) {
                    try {
                        ArrayList arrayList = new ArrayList();
                        Iterator<ComicBean> it2 = k0.iterator();
                        while (it2.hasNext()) {
                            ComicBean next = it2.next();
                            String[] strArr = new String[i];
                            strArr[0] = "collectId = ?";
                            strArr[1] = next.getId();
                            if (((ComicCollectBean) LitePal.where(strArr).findFirst(ComicCollectBean.class)) != null) {
                                ContentValues contentValues = new ContentValues();
                                contentValues.put("loginName", v0.m2736try().m2738case());
                                it = it2;
                                LitePal.updateAll(ComicCollectBean.class, contentValues, "collectId = ?", next.getId());
                            } else {
                                it = it2;
                                arrayList.add(ze.m3171if(next, 1, v0.m2736try().m2738case(), next.getFirstChapterId(), ""));
                            }
                            it2 = it;
                            i = 2;
                        }
                        LitePal.saveAll(arrayList);
                    } catch (Exception e2) {
                        e2.printStackTrace();
                    }
                } else {
                    try {
                        for (ComicBean comicBean : k0) {
                            if (!v0.m2736try().m2741const()) {
                                break;
                            }
                            ComicCollectBean comicCollectBean = (ComicCollectBean) LitePal.where("collectId = ?", comicBean.getId()).findFirst(ComicCollectBean.class);
                            if (comicCollectBean != null) {
                                ContentValues contentValues2 = new ContentValues();
                                contentValues2.put("name", comicBean.getName());
                                contentValues2.put("icon", comicBean.getImg());
                                contentValues2.put("loginName", v0.m2736try().m2738case());
                                contentValues2.put("lastUpdateTime", comicBean.getUpdateTime());
                                if (comicCollectBean.getAddTime() == 0) {
                                    contentValues2.put("addTime", Long.valueOf(System.currentTimeMillis()));
                                }
                                try {
                                    if (!comicCollectBean.getLastCapterId().equals(comicBean.getLastChapterId())) {
                                        contentValues2.put("lastCapterId", comicBean.getLastChapterId());
                                        contentValues2.put("lastCapterName", comicBean.getLastChapter());
                                        contentValues2.put("isNew", Boolean.TRUE);
                                    }
                                    LitePal.updateAll(ComicCollectBean.class, contentValues2, "collectId = ?", comicBean.getId());
                                } catch (Exception e3) {
                                    e3.printStackTrace();
                                }
                            } else {
                                mu.v(comicBean, "", v0.m2736try().m2738case(), "", 0, false, false);
                            }
                        }
                    } catch (Exception e4) {
                        e4.printStackTrace();
                    }
                }
                e.printStackTrace();
            }
        }
        if (!z && (find = LitePal.order(mu.m1773interface()).where("loginName = ?", "").find(ComicCollectBean.class)) != null && find.size() != 0) {
            for (ComicCollectBean comicCollectBean2 : find) {
                if (!comicCollectBean2.isLocalBook(comicCollectBean2.getFileType())) {
                    try {
                        ComicBean m3134super = z2.m3134super(comicCollectBean2.getCollectId(), false);
                        if (m3134super != null) {
                            ContentValues contentValues3 = new ContentValues();
                            if (!TextUtils.isEmpty(m3134super.getName())) {
                                contentValues3.put("name", m3134super.getName());
                            }
                            if (!TextUtils.isEmpty(m3134super.getImg())) {
                                contentValues3.put("icon", m3134super.getImg());
                            }
                            contentValues3.put("loginName", v0.m2736try().m2738case());
                            try {
                                String lastCapterId = comicCollectBean2.getLastCapterId();
                                String lastChapterId = m3134super.getLastChapterId();
                                if (!TextUtils.isEmpty(lastChapterId) && !lastChapterId.equals(lastCapterId)) {
                                    contentValues3.put("lastCapterId", m3134super.getLastChapterId());
                                    contentValues3.put("lastCapterName", m3134super.getLastChapter());
                                    contentValues3.put("isNew", Boolean.TRUE);
                                    String lastTime = m3134super.getLastTime();
                                    if (TextUtils.isEmpty(lastTime)) {
                                        lastTime = m3134super.getUpdateTime();
                                    }
                                    contentValues3.put("lastUpdateTime", lastTime);
                                }
                                try {
                                    String[] strArr2 = new String[2];
                                    strArr2[0] = "collectId = ?";
                                    try {
                                        strArr2[1] = m3134super.getId();
                                        LitePal.updateAll(ComicCollectBean.class, contentValues3, strArr2);
                                    } catch (Exception e5) {
                                        e = e5;
                                        try {
                                            e.printStackTrace();
                                        } catch (Exception e6) {
                                            e = e6;
                                            e.printStackTrace();
                                            mu.m1769if(comicCollectBean2.getCollectId());
                                        }
                                        mu.m1769if(comicCollectBean2.getCollectId());
                                    }
                                } catch (Exception e7) {
                                    e = e7;
                                    e.printStackTrace();
                                    mu.m1769if(comicCollectBean2.getCollectId());
                                }
                            } catch (Exception e8) {
                                e = e8;
                            }
                        }
                    } catch (Exception e9) {
                        e = e9;
                    }
                    mu.m1769if(comicCollectBean2.getCollectId());
                }
            }
        }
        p0.m2008native(false);
        return p3.m2018for();
    }

    @Override // com.apk.c1
    public void onPostExecute(List<ComicCollectBean> list) {
        List<ComicCollectBean> list2 = list;
        super.onPostExecute(list2);
        s5 s5Var = this.f2739if.f3567for;
        if (s5Var != null) {
            s5Var.mo2380if(list2);
        }
    }
}
