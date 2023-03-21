package com.manhua.ui.widget.barrage;

import android.content.Context;
import android.text.TextUtils;
import com.apk.Ccontinue;
import com.apk.Cgoto;
import com.apk.b1;
import com.apk.c1;
import com.apk.da;
import com.apk.dg;
import com.apk.eg;
import com.apk.gg;
import com.apk.kf;
import com.apk.q80;
import com.apk.sf;
import com.apk.ze;
import com.biquge.ebook.app.bean.BarrageConfigBean;
import com.biquge.ebook.app.bean.ChapterBean;
import com.biquge.ebook.app.helper.req.convert.Convert;
import com.jni.crypt.project.CryptDesManager;
import com.manhua.data.bean.ComicChapterBean;
import com.swl.gg.ggs.SwlAdHelper;
import com.tr.comment.sdk.TrCommentSdk;
import com.tr.danmu.sdk.TrDanMuSdk;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import kimi.wuhends.ebooks.R;
import org.json.JSONArray;
import org.json.JSONObject;
/* loaded from: classes8.dex */
public class BarrageDataUtils {
    public static final String BARRAGE_OPTION_KEY_COMIC = "Cartoon";
    public static final String BARRAGE_OPTION_KEY_NOVEL = "Novel";
    public static final int BARRAGE_STATUS_TYPE_CLEAR = 2;
    public static final int BARRAGE_STATUS_TYPE_PAUSE = 4;
    public static final int BARRAGE_STATUS_TYPE_RELOAD = 3;
    public static final int BARRAGE_STATUS_TYPE_RESUME = 5;
    public static final int BARRAGE_STATUS_TYPE_SHOW = 1;
    public static BarrageDataUtils mInstance;
    public List<BarrageBean> adBarrageBeanLists;
    public int adBarrageIndex;
    public int adBarrageInterval;
    public final ExecutorService barrageExecutor = Executors.newSingleThreadExecutor();
    public boolean isScrollIdle = true;
    public gg<String, List<BarrageBean>> mBarrageDataMaps;
    public gg<String, String> mLoadRecordMaps;
    public OnBarrageListener mOnBarrageListener;

    /* loaded from: classes8.dex */
    public interface OnBarrageListener {
        void onAddBarrage(BarrageBean barrageBean, boolean z, String str);

        void onResultBarrage();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean chapterBarrage(String str, String str2, String str3) {
        gg<String, String> ggVar = this.mLoadRecordMaps;
        if (ggVar == null) {
            return false;
        }
        ggVar.m957do();
        if (ggVar.f1563if.containsKey(str3)) {
            return false;
        }
        this.mLoadRecordMaps.put(str3, "");
        loadChapterBarrage(str, str2, str3);
        return true;
    }

    public static boolean checkChapterIdIsOk(String str) {
        return (TextUtils.isEmpty(str) || "-2".equals(str) || "-1".equals(str)) ? false : true;
    }

    public static void clickAdDanMu(Context context, BarrageBean barrageBean) {
        if (barrageBean != null) {
            String clickto = barrageBean.getClickto();
            String c_extra = barrageBean.getC_extra();
            if ("apk".equals(clickto)) {
                if (ze.G(c_extra)) {
                    ze.g0(context, c_extra);
                } else {
                    kf.m1482for(context, c_extra, null);
                }
            } else if ("sys_web".equals(clickto)) {
                SwlAdHelper.openBrowser(context, c_extra, false);
            } else if ("inner_web".equals(clickto)) {
                SwlAdHelper.openBrowser(context, c_extra, true);
            }
        }
    }

    public static BarrageDataUtils getInstance() {
        if (mInstance == null) {
            synchronized (BarrageDataUtils.class) {
                if (mInstance == null) {
                    mInstance = new BarrageDataUtils();
                }
            }
        }
        return mInstance;
    }

    private void loadChapterBarrage(String str, String str2, String str3) {
        JSONArray optJSONArray;
        List<BarrageBean> list;
        JSONObject requestBarragesSync = TrDanMuSdk.getRequestBarragesSync(str, str2, str3);
        if (requestBarragesSync == null || (optJSONArray = requestBarragesSync.optJSONArray("Data")) == null) {
            return;
        }
        try {
            list = (List) Convert.fromJson(optJSONArray.toString(), new sf().getType());
        } catch (Exception unused) {
            list = null;
        }
        if (this.mBarrageDataMaps == null || list == null) {
            return;
        }
        CryptDesManager.decodeClass(list);
        Collections.reverse(list);
        this.mBarrageDataMaps.put(str3, list);
    }

    public void addBarrageData(String str, String str2, final String str3, final String str4, String str5) {
        if (TextUtils.isEmpty(str5)) {
            str5 = "#FFFFFF";
        }
        final String str6 = str5;
        TrDanMuSdk.submitComment(str, str2, str3, "", str6, str4, new q80() { // from class: com.manhua.ui.widget.barrage.BarrageDataUtils.2
            @Override // com.apk.q80
            public void failed(int i, String str7) {
                if (TextUtils.isEmpty(str7)) {
                    str7 = ze.q(R.string.barrage_send_failed);
                }
                if (BarrageDataUtils.this.mOnBarrageListener != null) {
                    BarrageDataUtils.this.mOnBarrageListener.onAddBarrage(null, false, str7);
                }
            }

            @Override // com.apk.q80
            public void success(JSONObject jSONObject) {
                if (BarrageDataUtils.this.mBarrageDataMaps != null) {
                    List list = (List) BarrageDataUtils.this.mBarrageDataMaps.get(str3);
                    if (list == null) {
                        list = new ArrayList();
                    }
                    BarrageBean barrageBean = new BarrageBean(str4, str6);
                    barrageBean.setMe(true);
                    list.add(barrageBean);
                    BarrageDataUtils.this.mBarrageDataMaps.put(str3, list);
                    if (BarrageDataUtils.this.mOnBarrageListener != null) {
                        BarrageDataUtils.this.mOnBarrageListener.onAddBarrage(barrageBean, true, jSONObject != null ? jSONObject.optString("info") : "");
                        BarrageDataUtils.this.mOnBarrageListener.onResultBarrage();
                    }
                }
            }
        });
    }

    public void clearChapterIdeaCount() {
        TrCommentSdk.clearIdeaCountDatas();
    }

    public int getBarrageCount(String str) {
        List<BarrageBean> list;
        gg<String, List<BarrageBean>> ggVar = this.mBarrageDataMaps;
        if (ggVar != null) {
            ggVar.m957do();
            if (!ggVar.f1563if.containsKey(str) || (list = this.mBarrageDataMaps.get(str)) == null) {
                return 0;
            }
            return list.size();
        }
        return 0;
    }

    public List<BarrageBean> getBarrageDataItem(String str) {
        gg<String, List<BarrageBean>> ggVar = this.mBarrageDataMaps;
        if (ggVar != null) {
            ggVar.m957do();
            if (ggVar.f1563if.containsKey(str)) {
                List<BarrageBean> list = this.mBarrageDataMaps.get(str);
                if (list != null && list.size() > 8) {
                    ArrayList arrayList = new ArrayList();
                    arrayList.addAll(list);
                    for (int i = 0; i < 8; i++) {
                        arrayList.add(arrayList.remove(0));
                    }
                    this.mBarrageDataMaps.put(str, arrayList);
                } else {
                    Collections.shuffle(list);
                }
                return list;
            }
            return null;
        }
        return null;
    }

    public int getChapterIdeaCount(String str, String str2, int i) {
        return TrCommentSdk.getIdeaCountParagraph(str, str2, i);
    }

    public List<BarrageBean> getTempBarrageDatas() {
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < 10; i++) {
            arrayList.add(new BarrageBean(Cgoto.m1003implements("疯狂动物城", i), ""));
        }
        return arrayList;
    }

    public List<BarrageBean> getUseAdBarrages() {
        List<BarrageBean> list = this.adBarrageBeanLists;
        if (list == null || list.size() <= 0) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        try {
            BarrageConfigBean barrageConfigBean = Ccontinue.m379if().f715goto;
            if (barrageConfigBean != null) {
                if (this.adBarrageInterval % barrageConfigBean.getPer_page() == 0) {
                    String get_type = barrageConfigBean.getGet_type();
                    int get_count = barrageConfigBean.getGet_count();
                    if ("order".equals(get_type)) {
                        if (this.adBarrageBeanLists.size() <= get_count) {
                            arrayList.addAll(0, this.adBarrageBeanLists);
                        } else {
                            for (int i = 0; i < get_count; i++) {
                                if (this.adBarrageIndex >= this.adBarrageBeanLists.size()) {
                                    this.adBarrageIndex = 0;
                                }
                                arrayList.add(0, this.adBarrageBeanLists.get(this.adBarrageIndex));
                                this.adBarrageIndex++;
                            }
                        }
                    } else if (this.adBarrageBeanLists.size() <= get_count) {
                        arrayList.addAll(0, ze.m3167final(this.adBarrageBeanLists, this.adBarrageBeanLists.size()));
                    } else {
                        for (int i2 = 0; i2 < get_count; i2++) {
                            int nextInt = dg.f857do.nextInt(this.adBarrageBeanLists.size());
                            this.adBarrageIndex = nextInt;
                            arrayList.add(0, this.adBarrageBeanLists.get(nextInt));
                            this.adBarrageIndex++;
                        }
                    }
                }
                this.adBarrageInterval++;
                return arrayList;
            }
            return arrayList;
        } catch (Exception e) {
            e.printStackTrace();
            return arrayList;
        }
    }

    public boolean isScrollIdle() {
        return this.isScrollIdle;
    }

    public void loadBarrageData(final String str, final String str2, final String str3) {
        OnBarrageListener onBarrageListener = this.mOnBarrageListener;
        if (onBarrageListener != null) {
            onBarrageListener.onResultBarrage();
        }
        if (this.mLoadRecordMaps == null) {
            this.mLoadRecordMaps = new gg<>();
        }
        if (this.mBarrageDataMaps == null) {
            this.mBarrageDataMaps = new gg<>();
        }
        b1 b1Var = new b1();
        c1 c1Var = new c1<Boolean>() { // from class: com.manhua.ui.widget.barrage.BarrageDataUtils.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.apk.c1
            public Boolean doInBackground() {
                if (eg.m600implements()) {
                    boolean chapterBarrage = BarrageDataUtils.this.chapterBarrage(str, str2, str3);
                    if (BarrageDataUtils.BARRAGE_OPTION_KEY_NOVEL.equals(str)) {
                        ChapterBean m442new = da.m419else().m442new(str2, str3);
                        if (m442new != null) {
                            String nid = m442new.getNid();
                            if (!TextUtils.isEmpty(nid) && BarrageDataUtils.checkChapterIdIsOk(nid)) {
                                BarrageDataUtils.this.chapterBarrage(str, str2, nid);
                            }
                        }
                    } else {
                        ComicChapterBean m439case = da.m419else().m439case(str2, str3);
                        if (m439case != null) {
                            String nid2 = m439case.getNid();
                            if (!TextUtils.isEmpty(nid2) && BarrageDataUtils.checkChapterIdIsOk(nid2)) {
                                BarrageDataUtils.this.chapterBarrage(str, str2, nid2);
                            }
                        }
                    }
                    return Boolean.valueOf(chapterBarrage);
                }
                return Boolean.FALSE;
            }

            @Override // com.apk.c1
            public void onPostExecute(Boolean bool) {
                super.onPostExecute((AnonymousClass1) bool);
                if (!bool.booleanValue() || BarrageDataUtils.this.mBarrageDataMaps == null || !BarrageDataUtils.this.mBarrageDataMaps.containsKey(str3) || BarrageDataUtils.this.mOnBarrageListener == null) {
                    return;
                }
                BarrageDataUtils.this.mOnBarrageListener.onResultBarrage();
            }
        };
        ExecutorService executorService = this.barrageExecutor;
        b1Var.f232do = c1Var;
        b1Var.executeOnExecutor(executorService, new Void[0]);
    }

    public void loadChapterIdea(String str, String str2) {
        if (eg.m600implements()) {
            TrCommentSdk.loadIdeaCount(str, str2, null);
        }
    }

    public void onDestroy() {
        gg<String, String> ggVar = this.mLoadRecordMaps;
        if (ggVar != null) {
            ggVar.clear();
        }
        gg<String, List<BarrageBean>> ggVar2 = this.mBarrageDataMaps;
        if (ggVar2 != null) {
            ggVar2.clear();
        }
        this.adBarrageIndex = 0;
        this.adBarrageInterval = 0;
        clearChapterIdeaCount();
        if (Ccontinue.m379if().f715goto == null) {
            mInstance = null;
        }
    }

    public void setAdBarrageBeanLists(List<BarrageBean> list) {
        this.adBarrageBeanLists = list;
    }

    public void setOnBarrageListener(OnBarrageListener onBarrageListener) {
        this.mOnBarrageListener = onBarrageListener;
    }

    public void setScrollState(boolean z) {
        this.isScrollIdle = z;
    }
}
