package com.biquge.ebook.app.ui.fragment;

import android.os.Bundle;
import android.view.View;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.BindView;
import com.apk.Cconst;
import com.apk.Cfinal;
import com.apk.Cfinally;
import com.apk.b1;
import com.apk.c1;
import com.apk.ft;
import com.apk.g1;
import com.apk.g6;
import com.apk.gg;
import com.apk.hy;
import com.apk.i6;
import com.apk.jb;
import com.apk.kf;
import com.apk.mf;
import com.apk.n2;
import com.apk.o;
import com.apk.xx;
import com.apk.ze;
import com.baidu.tts.client.SpeechSynthesizer;
import com.biquge.ebook.app.adapter.TxtDownloadListAdapter;
import com.biquge.ebook.app.bean.CollectBook;
import com.biquge.ebook.app.bean.TaskInfo;
import com.biquge.ebook.app.ui.book.NewBookReadActivity;
import com.chad.library.adapter.base.BaseQuickAdapter;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import kimi.wuhends.ebooks.R;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
import org.json.JSONObject;
import org.litepal.LitePal;
/* loaded from: classes8.dex */
public class DownloadTxtListFragment extends g6 implements BaseQuickAdapter.OnItemClickListener, BaseQuickAdapter.OnItemLongClickListener {

    /* renamed from: do  reason: not valid java name */
    public g1 f7435do;

    /* renamed from: for  reason: not valid java name */
    public TxtDownloadListAdapter f7436for;

    /* renamed from: if  reason: not valid java name */
    public String f7437if;
    @BindView(R.id.fragment_download_txt_recyclerview)
    public RecyclerView mRecyclerView;

    /* renamed from: new  reason: not valid java name */
    public Cfinal f7438new;

    /* renamed from: com.biquge.ebook.app.ui.fragment.DownloadTxtListFragment$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cdo extends c1<List<TaskInfo>> {
        public Cdo() {
        }

        @Override // com.apk.c1
        public List<TaskInfo> doInBackground() {
            hy m3051case;
            ArrayList arrayList = new ArrayList();
            try {
                if ("1".equals(DownloadTxtListFragment.this.f7437if)) {
                    arrayList.addAll(LitePal.findAll(TaskInfo.class, new long[0]));
                } else if ("2".equals(DownloadTxtListFragment.this.f7437if)) {
                    arrayList.addAll(LitePal.where("finish = ?", SpeechSynthesizer.REQUEST_DNS_OFF).find(TaskInfo.class));
                } else {
                    arrayList.addAll(LitePal.where("finish = ?", "1").find(TaskInfo.class));
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
            if (arrayList.size() > 0) {
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    TaskInfo taskInfo = (TaskInfo) it.next();
                    String url = taskInfo.getUrl();
                    gg<String, hy> ggVar = kf.f2525new;
                    if ((ggVar != null ? ggVar.get(url) : null) == null && (m3051case = xx.Cif.f5816do.m3051case(taskInfo.getUrl())) != null && m3051case.f2001break != 5) {
                        m3051case.f2001break = 3;
                        xx.Cif.f5816do.update(m3051case);
                    }
                }
            }
            return arrayList;
        }

        @Override // com.apk.c1
        public void onPostExecute(List<TaskInfo> list) {
            List<TaskInfo> list2 = list;
            super.onPostExecute(list2);
            TxtDownloadListAdapter txtDownloadListAdapter = DownloadTxtListFragment.this.f7436for;
            if (txtDownloadListAdapter != null) {
                txtDownloadListAdapter.setNewData(list2);
            }
            DownloadTxtListFragment.this.m3375synchronized();
        }
    }

    /* renamed from: com.biquge.ebook.app.ui.fragment.DownloadTxtListFragment$if  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cif implements ft {

        /* renamed from: do  reason: not valid java name */
        public final /* synthetic */ TaskInfo f7440do;

        public Cif(TaskInfo taskInfo) {
            this.f7440do = taskInfo;
        }

        @Override // com.apk.ft
        public void onClick() {
            g1 g1Var;
            if (!kf.m1483goto(this.f7440do) || (g1Var = DownloadTxtListFragment.this.f7435do) == null) {
                return;
            }
            g1Var.onData(null);
        }
    }

    public static DownloadTxtListFragment h(String str) {
        DownloadTxtListFragment downloadTxtListFragment = new DownloadTxtListFragment();
        Bundle bundle = new Bundle();
        bundle.putString("type", str);
        downloadTxtListFragment.setArguments(bundle);
        return downloadTxtListFragment;
    }

    public boolean a() {
        Map<String, TaskInfo> map = this.f7436for.f6381if;
        if (map == null || map.size() <= 0) {
            return false;
        }
        for (Map.Entry<String, TaskInfo> entry : map.entrySet()) {
            kf.m1483goto(entry.getValue());
        }
        g1 g1Var = this.f7435do;
        if (g1Var != null) {
            g1Var.onData(null);
            return true;
        }
        return true;
    }

    public void f(boolean z) {
        TxtDownloadListAdapter txtDownloadListAdapter = this.f7436for;
        txtDownloadListAdapter.f6380do = z;
        Map<String, TaskInfo> map = txtDownloadListAdapter.f6381if;
        if (map != null) {
            map.clear();
        }
        int size = txtDownloadListAdapter.getData().size();
        for (int i = 0; i < size; i++) {
            txtDownloadListAdapter.notifyItemChanged(i);
        }
    }

    @Override // com.apk.g6
    public int getLayoutId() {
        return R.layout.fragment_download_txt_list;
    }

    public int i() {
        Map<String, TaskInfo> map = this.f7436for.f6381if;
        if (map != null) {
            return map.size();
        }
        return 0;
    }

    @Override // com.apk.g6
    public void initData() {
        Bundle arguments = getArguments();
        if (arguments != null) {
            this.f7437if = arguments.getString("type");
        }
        TxtDownloadListAdapter txtDownloadListAdapter = new TxtDownloadListAdapter();
        this.f7436for = txtDownloadListAdapter;
        this.mRecyclerView.setAdapter(txtDownloadListAdapter);
        j();
        this.f7436for.setOnItemChildClickListener(new jb(this));
        this.f7436for.setOnItemClickListener(this);
        this.f7436for.setOnItemLongClickListener(this);
    }

    @Override // com.apk.g6
    public void initView() {
        registerEventBus(this);
        this.mRecyclerView.setHasFixedSize(true);
        this.mRecyclerView.setLayoutManager(new LinearLayoutManager(getSupportActivity()));
        ze.m3165else(this.mRecyclerView);
    }

    public void j() {
        new b1().m141do(new Cdo());
    }

    public void k() {
        TxtDownloadListAdapter txtDownloadListAdapter = this.f7436for;
        if (txtDownloadListAdapter.f6381if == null) {
            txtDownloadListAdapter.f6381if = new HashMap();
        }
        for (TaskInfo taskInfo : txtDownloadListAdapter.getData()) {
            txtDownloadListAdapter.f6381if.put(taskInfo.getUrl(), taskInfo);
        }
        txtDownloadListAdapter.notifyDataSetChanged();
        g1 g1Var = this.f7435do;
        if (g1Var != null) {
            g1Var.onData("onItemClick");
        }
    }

    public final void l(boolean z) {
        if (z) {
            Cfinal cfinal = this.f7438new;
            if (cfinal != null) {
                cfinal.f1321if = false;
                return;
            }
            return;
        }
        Cfinal cfinal2 = this.f7438new;
        if (cfinal2 != null) {
            cfinal2.f1321if = true;
        }
    }

    @Override // com.apk.g6, com.apk.k6, androidx.fragment.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        Cfinal cfinal = this.f7438new;
        if (cfinal != null) {
            cfinal.m790new();
            this.f7438new = null;
        }
        unRegisterEventBus(this);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMainThread(mf mfVar) {
        TxtDownloadListAdapter txtDownloadListAdapter;
        TxtDownloadListAdapter txtDownloadListAdapter2;
        String str = mfVar.f3028do;
        if ("REFRESH_DOWNLOAD_TXT_KEY".equals(str)) {
            TaskInfo taskInfo = (TaskInfo) mfVar.f3030if;
            if (taskInfo == null || (txtDownloadListAdapter2 = this.f7436for) == null) {
                return;
            }
            txtDownloadListAdapter2.addData((TxtDownloadListAdapter) taskInfo);
            m3375synchronized();
        } else if ("REFRESH_DOWNLOAD_TXT_PROGRESS_KEY".equals(str) && (txtDownloadListAdapter = this.f7436for) != null) {
            String str2 = (String) mfVar.f3030if;
            int itemCount = txtDownloadListAdapter.getItemCount();
            for (int i = 0; i < itemCount; i++) {
                TaskInfo item = this.f7436for.getItem(i);
                if (item != null && item.getUrl().equals(str2)) {
                    this.f7436for.notifyItemChanged(i);
                }
            }
        }
    }

    @Override // com.chad.library.adapter.base.BaseQuickAdapter.OnItemClickListener
    public void onItemClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
        TaskInfo taskInfo;
        CollectBook m1841throw;
        TxtDownloadListAdapter txtDownloadListAdapter = this.f7436for;
        if (txtDownloadListAdapter.f6380do) {
            TaskInfo item = txtDownloadListAdapter.getItem(i);
            if (item != null) {
                if (txtDownloadListAdapter.f6381if == null) {
                    txtDownloadListAdapter.f6381if = new HashMap();
                }
                String url = item.getUrl();
                if (txtDownloadListAdapter.f6381if.containsKey(url)) {
                    txtDownloadListAdapter.f6381if.remove(url);
                } else {
                    txtDownloadListAdapter.f6381if.put(url, item);
                }
                txtDownloadListAdapter.notifyItemChanged(i);
            }
            g1 g1Var = this.f7435do;
            if (g1Var != null) {
                g1Var.onData("onItemClick");
                return;
            }
            return;
        }
        TaskInfo item2 = txtDownloadListAdapter.getItem(i);
        if (item2 == null || !item2.isFinishTask(item2.getFinish()) || (taskInfo = (TaskInfo) LitePal.where("url = ?", item2.getUrl()).findFirst(TaskInfo.class)) == null || (m1841throw = n2.m1841throw(taskInfo.getBookId())) == null) {
            return;
        }
        NewBookReadActivity.a0(getActivity(), m1841throw, null);
    }

    @Override // com.chad.library.adapter.base.BaseQuickAdapter.OnItemLongClickListener
    public boolean onItemLongClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
        TaskInfo item = this.f7436for.getItem(i);
        if (item != null) {
            showTipDialog(getSupportActivity(), ze.r(R.string.txt_download_remove_task_txt, item.getName()), new Cif(item), null, true);
        }
        return true;
    }

    @Override // androidx.fragment.app.Fragment
    public void onPause() {
        super.onPause();
        l(false);
    }

    @Override // androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        l(true);
    }

    @Override // com.apk.k6, androidx.fragment.app.Fragment
    public void setUserVisibleHint(boolean z) {
        super.setUserVisibleHint(z);
        l(z);
    }

    /* renamed from: synchronized  reason: not valid java name */
    public final void m3375synchronized() {
        TxtDownloadListAdapter txtDownloadListAdapter = this.f7436for;
        if (txtDownloadListAdapter == null || txtDownloadListAdapter.getData().size() <= 0 || this.f7436for.getFooterLayoutCount() != 0 || !Cfinally.m797else().m830while()) {
            return;
        }
        View inflate = View.inflate(getSupportActivity(), R.layout.include_blocknative_adlist_layout, null);
        this.f7436for.addFooterView(inflate);
        Cfinal cfinal = new Cfinal();
        this.f7438new = cfinal;
        i6 supportActivity = getSupportActivity();
        if (inflate == null || !Cfinally.m797else().m830while()) {
            return;
        }
        cfinal.f1315else = supportActivity;
        JSONObject jSONObject = Cfinally.m797else().f1366strictfp;
        cfinal.m788for(inflate, jSONObject.optString("navtitle"));
        o.m1921for().m1922do(new Cconst(cfinal, jSONObject, null));
    }
}
