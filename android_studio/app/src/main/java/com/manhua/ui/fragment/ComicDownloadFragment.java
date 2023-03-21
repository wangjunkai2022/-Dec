package com.manhua.ui.fragment;

import android.text.TextUtils;
import android.view.View;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.BindView;
import com.apk.b1;
import com.apk.c1;
import com.apk.ft;
import com.apk.g6;
import com.apk.gg;
import com.apk.mf;
import com.apk.mu;
import com.apk.o0;
import com.apk.ze;
import com.biquge.ebook.app.app.AppContext;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.hjq.toast.ToastUtils;
import com.manhua.adapter.ComicDownloadAdapter;
import com.manhua.data.bean.ComicCollectBean;
import com.manhua.ui.activity.ComicDetailActivity;
import com.manhua.ui.activity.ComicReadActivity;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import kimi.wuhends.ebooks.R;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
import org.litepal.LitePal;

/* loaded from: classes8.dex */
public class ComicDownloadFragment extends g6 implements BaseQuickAdapter.OnItemClickListener, BaseQuickAdapter.OnItemLongClickListener {
    public boolean itemClickTag;
    public ComicDownloadAdapter mAdapter;
    public final Map<String, String> mDeleteTaskMaps = new HashMap();
    @BindView(R.id.book_download_recyclerview)
    public RecyclerView mRecyclerView;

    /* renamed from: com.manhua.ui.fragment.ComicDownloadFragment$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cdo implements BaseQuickAdapter.OnItemChildClickListener {
        public Cdo() {
        }

        @Override // com.chad.library.adapter.base.BaseQuickAdapter.OnItemChildClickListener
        public void onItemChildClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
            ComicDownloadFragment.this.resumeOrPause(i);
        }
    }

    /* renamed from: com.manhua.ui.fragment.ComicDownloadFragment$for  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cfor extends c1<List<ComicCollectBean>> {
        public Cfor() {
        }

        @Override // com.apk.c1
        public List<ComicCollectBean> doInBackground() {
            o0 m1925else = o0.m1925else();
            if (m1925else != null) {
                ArrayList arrayList = new ArrayList();
                List<ComicCollectBean> m1770implements = mu.m1770implements();
                if (m1925else.f3336new == null) {
                    m1925else.f3336new = new gg<>();
                }
                try {
                    for (ComicCollectBean comicCollectBean : m1770implements) {
                        if (m1925else.f3336new != null && m1925else.f3336new.containsKey(comicCollectBean.getCollectId())) {
                            comicCollectBean = m1925else.f3336new.get(comicCollectBean.getCollectId());
                        } else if (comicCollectBean.getState() != 2) {
                            comicCollectBean.setState(1);
                        }
                        arrayList.add(comicCollectBean);
                    }
                } catch (Exception e) {
                    e.printStackTrace();
                }
                return arrayList;
            }
            throw null;
        }

        @Override // com.apk.c1
        public void onPostExecute(List<ComicCollectBean> list) {
            List<ComicCollectBean> list2 = list;
            super.onPostExecute(list2);
            try {
                if (ComicDownloadFragment.this.mAdapter != null) {
                    ComicDownloadFragment.this.mAdapter.setNewData(list2);
                }
            } catch (Exception unused) {
            }
        }
    }

    /* renamed from: com.manhua.ui.fragment.ComicDownloadFragment$if  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cif implements o0.Celse {

        /* renamed from: do  reason: not valid java name */
        public final /* synthetic */ String f9921do;

        /* renamed from: for  reason: not valid java name */
        public final /* synthetic */ int f9922for;

        /* renamed from: if  reason: not valid java name */
        public final /* synthetic */ ComicCollectBean f9923if;

        public Cif(String str, ComicCollectBean comicCollectBean, int i) {
            this.f9921do = str;
            this.f9923if = comicCollectBean;
            this.f9922for = i;
        }

        @Override // com.apk.o0.Celse
        /* renamed from: do */
        public void mo1179do(boolean z) {
            if (z) {
                try {
                    ComicDownloadFragment.this.mDeleteTaskMaps.remove(this.f9921do);
                    this.f9923if.setState(3);
                    ComicDownloadFragment.this.mAdapter.notifyItemChanged(this.f9922for);
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
            ComicDownloadFragment.this.itemClickTag = false;
        }
    }

    /* renamed from: com.manhua.ui.fragment.ComicDownloadFragment$new  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cnew implements ft {

        /* renamed from: do  reason: not valid java name */
        public final /* synthetic */ String f9925do;

        /* renamed from: for  reason: not valid java name */
        public final /* synthetic */ int f9926for;

        /* renamed from: if  reason: not valid java name */
        public final /* synthetic */ ComicCollectBean f9927if;

        /* renamed from: new  reason: not valid java name */
        public final /* synthetic */ String f9928new;

        public Cnew(String str, ComicCollectBean comicCollectBean, int i, String str2) {
            this.f9925do = str;
            this.f9927if = comicCollectBean;
            this.f9926for = i;
            this.f9928new = str2;
        }

        @Override // com.apk.ft
        public void onClick() {
            try {
                ComicDownloadFragment.this.mDeleteTaskMaps.put(this.f9925do, this.f9925do);
                this.f9927if.setProgress(0);
                this.f9927if.setState(1);
                ComicDownloadFragment.this.mAdapter.notifyItemChanged(this.f9926for);
                o0 m1925else = o0.m1925else();
                ComicDownloadFragment.this.getActivity();
                m1925else.m1941try(this.f9925do, this.f9928new);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    private void getData() {
        new b1().m141do(new Cfor());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void resumeOrPause(int i) {
        if (this.itemClickTag) {
            return;
        }
        this.itemClickTag = true;
        try {
            ComicCollectBean item = this.mAdapter.getItem(i);
            if (item != null) {
                String collectId = item.getCollectId();
                int state = item.getState();
                ComicCollectBean comicCollectBean = o0.m1925else().f3336new.get(collectId);
                if (comicCollectBean != null) {
                    try {
                        state = comicCollectBean.getState();
                        item.setMax(comicCollectBean.getMax());
                        item.setProgress(comicCollectBean.getProgress());
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                }
                if (state != 0 && state != 3) {
                    o0.m1925else().m1933for(getActivity(), collectId, item.getName(), false, new Cif(collectId, item, i));
                    this.itemClickTag = false;
                    return;
                }
                o0.m1925else().m1928catch(collectId);
                item.setState(1);
                this.mAdapter.notifyItemChanged(i);
                this.itemClickTag = false;
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    private void stopDownloadAll() {
        try {
            int itemCount = this.mAdapter.getItemCount();
            for (int i = 0; i < itemCount; i++) {
                try {
                    ComicCollectBean item = this.mAdapter.getItem(i);
                    if (item != null) {
                        String collectId = item.getCollectId();
                        if (o0.m1925else().f3336new.containsKey(collectId)) {
                            item = o0.m1925else().f3336new.get(collectId);
                        }
                        if (item != null && (item.getState() == 1 || item.getState() == 2)) {
                            break;
                        }
                        o0.m1925else().m1926break(collectId);
                        item.setMax(item.getMax());
                        item.setProgress(item.getProgress());
                        item.setState(1);
                    } else {
                        continue;
                    }
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
            this.mAdapter.notifyDataSetChanged();
            ToastUtils.show((int) R.string.cache_download_stop_task_txt);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    @Override // com.apk.g6
    public int getLayoutId() {
        return R.layout.fragment_book_download;
    }

    @Override // com.apk.g6
    public void initData() {
        registerEventBus(this);
        ComicDownloadAdapter comicDownloadAdapter = new ComicDownloadAdapter(this.mRecyclerView);
        this.mAdapter = comicDownloadAdapter;
        this.mRecyclerView.setAdapter(comicDownloadAdapter);
        getData();
        this.mAdapter.setOnItemChildClickListener(new Cdo());
        this.mAdapter.setOnItemClickListener(this);
        this.mAdapter.setOnItemLongClickListener(this);
    }

    @Override // com.apk.g6
    public void initView() {
        this.mRecyclerView.setLayoutManager(new LinearLayoutManager(getActivity()));
        this.mRecyclerView.setHasFixedSize(true);
        ze.m3165else(this.mRecyclerView);
    }

    @Override // com.apk.k6
    public boolean isUseVisible() {
        return false;
    }

    @Override // com.apk.g6, com.apk.k6, androidx.fragment.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        unRegisterEventBus(this);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMainThread(mf mfVar) {
        if ("CACHE_DOWNLOAD_START".equals(mfVar.f3028do)) {
            try {
                ComicCollectBean comicCollectBean = o0.m1925else().f3336new.get((String) mfVar.f3030if);
                if (comicCollectBean != null) {
                    if (this.mDeleteTaskMaps.containsKey(comicCollectBean.getCollectId())) {
                        comicCollectBean.setProgress(0);
                    }
                    this.mAdapter.m3608do(comicCollectBean);
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    @Override // com.chad.library.adapter.base.BaseQuickAdapter.OnItemClickListener
    public void onItemClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
        try {
            ComicCollectBean comicCollectBean = (ComicCollectBean) LitePal.where("collectId = ?", this.mAdapter.getItem(i).getCollectId()).findFirst(ComicCollectBean.class);
            if (comicCollectBean != null) {
                if (TextUtils.isEmpty(comicCollectBean.getFirstChapterId())) {
                    ComicDetailActivity.n(getActivity(), mu.m1759const(comicCollectBean));
                } else {
                    ComicReadActivity.I(getActivity(), comicCollectBean, null);
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override // com.chad.library.adapter.base.BaseQuickAdapter.OnItemLongClickListener
    public boolean onItemLongClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
        ComicCollectBean item = this.mAdapter.getItem(i);
        if (item != null) {
            showTipDialog(getActivity(), AppContext.f6392case.getString(R.string.download_is_delete_txt, new Object[]{item.getName()}), new Cnew(item.getCollectId(), item, i, item.getName()), null, false);
        }
        return true;
    }
}
