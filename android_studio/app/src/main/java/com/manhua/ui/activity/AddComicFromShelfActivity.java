package com.manhua.ui.activity;

import android.content.Intent;
import android.view.View;
import android.widget.Button;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.BindView;
import butterknife.OnClick;
import com.apk.f6;
import com.apk.mu;
import com.apk.ze;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.manhua.adapter.ComicGroupAdapter;
import com.manhua.data.bean.ComicBean;
import com.manhua.data.bean.ComicCollectBean;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kimi.wuhends.ebooks.R;
import org.litepal.LitePal;

/* loaded from: classes8.dex */
public class AddComicFromShelfActivity extends f6 implements BaseQuickAdapter.OnItemClickListener {

    /* renamed from: do  reason: not valid java name */
    public final Map<String, ComicBean> f9645do = new HashMap();

    /* renamed from: if  reason: not valid java name */
    public ComicGroupAdapter f9646if;
    @BindView(R.id.rv_list)
    public RecyclerView mRecyclerView;
    @BindView(R.id.select_finish_bt)
    public Button mSelectFinishBT;

    @Override // com.apk.f6
    public int getLayoutId() {
        return R.layout.activity_add_book_shelf;
    }

    public final void i(int i) {
        try {
            this.mSelectFinishBT.setText(getString(R.string.main_select_count_batch, new Object[]{String.valueOf(i)}));
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override // com.apk.f6
    public void initData() {
        List<ComicBean> list;
        Intent intent = getIntent();
        if (intent.hasExtra("books") && (list = (List) intent.getSerializableExtra("books")) != null && list.size() > 0) {
            for (ComicBean comicBean : list) {
                this.f9645do.put(comicBean.getId(), comicBean);
            }
        }
        ComicGroupAdapter comicGroupAdapter = new ComicGroupAdapter(this, LitePal.order(mu.m1773interface()).find(ComicCollectBean.class), true, true, R.layout.include_book_shelf_list);
        this.f9646if = comicGroupAdapter;
        comicGroupAdapter.f9613if = this.f9645do;
        this.mRecyclerView.setAdapter(comicGroupAdapter);
        this.f9646if.setOnItemClickListener(this);
    }

    @Override // com.apk.f6
    public void initView() {
        initTopBarOnlyTitle(R.id.add_book_shelf_actionbar, R.string.create_element_add_for_shelf_txt);
        this.mRecyclerView.setHasFixedSize(true);
        ze.m3165else(this.mRecyclerView);
        this.mRecyclerView.setLayoutManager(new LinearLayoutManager(this));
        i(0);
    }

    @OnClick({R.id.select_cancel_bt, R.id.select_finish_bt})
    public void menuClick(View view) {
        int id = view.getId();
        if (id == R.id.select_cancel_bt) {
            try {
                ComicGroupAdapter comicGroupAdapter = this.f9646if;
                LinkedHashMap<String, ComicCollectBean> linkedHashMap = comicGroupAdapter.f9614new;
                if (linkedHashMap != null) {
                    linkedHashMap.clear();
                }
                comicGroupAdapter.notifyDataSetChanged();
                this.f9646if.notifyDataSetChanged();
                i(0);
            } catch (Exception e) {
                e.printStackTrace();
            }
        } else if (id != R.id.select_finish_bt) {
        } else {
            try {
                ArrayList arrayList = (ArrayList) this.f9646if.m3609do();
                if (arrayList.size() > 0) {
                    ArrayList arrayList2 = new ArrayList();
                    Iterator it = arrayList.iterator();
                    while (it.hasNext()) {
                        ComicCollectBean comicCollectBean = (ComicCollectBean) it.next();
                        ComicBean comicBean = new ComicBean();
                        comicBean.setId(comicCollectBean.getCollectId());
                        comicBean.setName(comicCollectBean.getName());
                        comicBean.setImg(comicCollectBean.getIcon());
                        comicBean.setCName(comicCollectBean.getBookType());
                        comicBean.setAuthor(comicCollectBean.getAuthor());
                        comicBean.setDesc(comicCollectBean.getDesc());
                        comicBean.setLastChapter(comicCollectBean.getLastCapterName());
                        comicBean.setLastChapterId(comicCollectBean.getLastCapterId());
                        comicBean.setFirstChapterId(comicCollectBean.getFirstChapterId());
                        arrayList2.add(comicBean);
                    }
                    Intent intent = new Intent();
                    intent.putExtra("books", arrayList2);
                    setResult(-1, intent);
                    finish();
                }
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
    }

    @Override // com.chad.library.adapter.base.BaseQuickAdapter.OnItemClickListener
    public void onItemClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
        try {
            ComicCollectBean comicCollectBean = (ComicCollectBean) this.f9646if.getItem(i);
            if (comicCollectBean == null || this.f9645do.containsKey(comicCollectBean.getCollectId())) {
                return;
            }
            i(this.f9646if.m3610for(i));
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
