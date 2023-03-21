package com.biquge.ebook.app.ui.fragment;

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
import com.apk.n2;
import com.apk.o0;
import com.apk.ze;
import com.biquge.ebook.app.adapter.BookDownloadAdapter;
import com.biquge.ebook.app.app.AppContext;
import com.biquge.ebook.app.app.AppService;
import com.biquge.ebook.app.bean.CollectBook;
import com.biquge.ebook.app.ui.activity.BookDetailActivity;
import com.biquge.ebook.app.ui.book.NewBookReadActivity;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.hjq.toast.ToastUtils;
import java.util.ArrayList;
import java.util.List;
import kimi.wuhends.ebooks.R;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
/* loaded from: classes8.dex */
public class BookDownloadFragment extends g6 implements BaseQuickAdapter.OnItemClickListener, BaseQuickAdapter.OnItemLongClickListener {
    public boolean itemClickTag;
    public BookDownloadAdapter mAdapter;
    public gg<String, String> mDeleteTaskMaps;
    @BindView(R.id.book_download_recyclerview)
    public RecyclerView mRecyclerView;

    /* renamed from: com.biquge.ebook.app.ui.fragment.BookDownloadFragment$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cdo implements BaseQuickAdapter.OnItemChildClickListener {
        public Cdo() {
        }

        @Override // com.chad.library.adapter.base.BaseQuickAdapter.OnItemChildClickListener
        public void onItemChildClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
            if (o0.m1925else() != null) {
                gg<String, AppService.Cif> ggVar = AppService.f6400do;
                if (!((ggVar != null ? ggVar.size() : 0) > 0)) {
                    BookDownloadFragment.this.resumeOrPause(i);
                    return;
                } else {
                    ToastUtils.show((int) R.string.download_please_waite_txt);
                    return;
                }
            }
            throw null;
        }
    }

    /* renamed from: com.biquge.ebook.app.ui.fragment.BookDownloadFragment$for  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cfor extends c1<List<CollectBook>> {
        public Cfor() {
        }

        @Override // com.apk.c1
        public List<CollectBook> doInBackground() {
            o0 m1925else = o0.m1925else();
            if (m1925else != null) {
                ArrayList arrayList = new ArrayList();
                List<CollectBook> m1824implements = n2.m1824implements();
                if (m1925else.f3335if == null) {
                    m1925else.f3335if = new gg<>();
                }
                try {
                    for (CollectBook collectBook : m1824implements) {
                        if (!collectBook.isLocalBook() && (!collectBook.isWebSite() || TextUtils.isEmpty(collectBook.getExternalUrl()))) {
                            if (m1925else.f3335if.containsKey(collectBook.getCollectId())) {
                                collectBook = m1925else.f3335if.get(collectBook.getCollectId());
                            } else if (collectBook.getState() != 2) {
                                collectBook.setState(1);
                            }
                            arrayList.add(collectBook);
                        }
                    }
                } catch (Exception e) {
                    e.printStackTrace();
                }
                return arrayList;
            }
            throw null;
        }

        @Override // com.apk.c1
        public void onPostExecute(List<CollectBook> list) {
            List<CollectBook> list2 = list;
            super.onPostExecute(list2);
            try {
                BookDownloadFragment.this.mAdapter.setNewData(list2);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    /* renamed from: com.biquge.ebook.app.ui.fragment.BookDownloadFragment$if  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cif implements o0.Celse {

        /* renamed from: do  reason: not valid java name */
        public final /* synthetic */ String f7218do;

        /* renamed from: for  reason: not valid java name */
        public final /* synthetic */ int f7219for;

        /* renamed from: if  reason: not valid java name */
        public final /* synthetic */ CollectBook f7220if;

        public Cif(String str, CollectBook collectBook, int i) {
            this.f7218do = str;
            this.f7220if = collectBook;
            this.f7219for = i;
        }

        @Override // com.apk.o0.Celse
        /* renamed from: do */
        public void mo1179do(boolean z) {
            if (z) {
                try {
                    if (BookDownloadFragment.this.mDeleteTaskMaps != null) {
                        BookDownloadFragment.this.mDeleteTaskMaps.remove(this.f7218do);
                    }
                    this.f7220if.setState(3);
                    BookDownloadFragment.this.mAdapter.notifyItemChanged(this.f7219for);
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
            BookDownloadFragment.this.itemClickTag = false;
        }
    }

    /* renamed from: com.biquge.ebook.app.ui.fragment.BookDownloadFragment$new  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cnew implements ft {

        /* renamed from: do  reason: not valid java name */
        public final /* synthetic */ String f7222do;

        /* renamed from: for  reason: not valid java name */
        public final /* synthetic */ int f7223for;

        /* renamed from: if  reason: not valid java name */
        public final /* synthetic */ CollectBook f7224if;

        /* renamed from: new  reason: not valid java name */
        public final /* synthetic */ String f7225new;

        public Cnew(String str, CollectBook collectBook, int i, String str2) {
            this.f7222do = str;
            this.f7224if = collectBook;
            this.f7223for = i;
            this.f7225new = str2;
        }

        @Override // com.apk.ft
        public void onClick() {
            try {
                if (BookDownloadFragment.this.mDeleteTaskMaps == null) {
                    BookDownloadFragment.this.mDeleteTaskMaps = new gg();
                }
                BookDownloadFragment.this.mDeleteTaskMaps.put(this.f7222do, this.f7222do);
                this.f7224if.setMax(0);
                this.f7224if.setProgress(0);
                this.f7224if.setPercentage(0);
                this.f7224if.setState(1);
                BookDownloadFragment.this.mAdapter.notifyItemChanged(this.f7223for);
                o0 m1925else = o0.m1925else();
                BookDownloadFragment.this.getActivity();
                m1925else.m1937new(this.f7222do, this.f7225new);
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
            CollectBook item = this.mAdapter.getItem(i);
            if (item != null) {
                String collectId = item.getCollectId();
                int state = item.getState();
                try {
                    CollectBook m1927case = o0.m1925else().m1927case(collectId);
                    if (m1927case != null) {
                        state = m1927case.getState();
                        item.setMax(m1927case.getMax());
                        item.setProgress(m1927case.getProgress());
                        item.setPercentage(m1927case.getPercentage());
                    }
                } catch (Exception e) {
                    e.printStackTrace();
                }
                if (state != 0 && state != 3) {
                    o0.m1925else().m1931do(getActivity(), collectId, item.getName(), item.isWebSite(), false, new Cif(collectId, item, i));
                    this.itemClickTag = false;
                    return;
                }
                o0.m1925else().m1926break(collectId);
                item.setState(1);
                this.mAdapter.notifyItemChanged(i);
                this.itemClickTag = false;
            }
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
        BookDownloadAdapter bookDownloadAdapter = new BookDownloadAdapter(this.mRecyclerView);
        this.mAdapter = bookDownloadAdapter;
        this.mRecyclerView.setAdapter(bookDownloadAdapter);
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
                CollectBook m1927case = o0.m1925else().m1927case((String) mfVar.f3030if);
                if (m1927case != null) {
                    if (this.mDeleteTaskMaps != null && this.mDeleteTaskMaps.containsKey(m1927case.getCollectId())) {
                        m1927case.setProgress(0);
                        m1927case.setPercentage(0);
                    }
                    this.mAdapter.refreshTxt(m1927case);
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    @Override // com.chad.library.adapter.base.BaseQuickAdapter.OnItemClickListener
    public void onItemClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
        try {
            CollectBook item = this.mAdapter.getItem(i);
            if (item != null) {
                if (item.isWebSite()) {
                    NewBookReadActivity.a0(getSupportActivity(), item, null);
                    return;
                }
                String firstChapterId = item.getFirstChapterId();
                if (TextUtils.isEmpty(firstChapterId)) {
                    firstChapterId = n2.m1819final(item.getCollectId());
                }
                if (TextUtils.isEmpty(firstChapterId)) {
                    BookDetailActivity.s(getSupportActivity(), item);
                    return;
                }
                item.setFirstChapterId(firstChapterId);
                NewBookReadActivity.a0(getSupportActivity(), item, null);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override // com.chad.library.adapter.base.BaseQuickAdapter.OnItemLongClickListener
    public boolean onItemLongClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
        CollectBook item = this.mAdapter.getItem(i);
        if (item != null) {
            showTipDialog(getActivity(), AppContext.f6392case.getString(R.string.download_is_delete_txt, new Object[]{item.getName()}), new Cnew(item.getCollectId(), item, i, item.getName()), null, false);
        }
        return true;
    }
}
