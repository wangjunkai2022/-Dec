package com.biquge.ebook.app.ui.fragment;

import android.os.Bundle;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.BindView;
import com.apk.g6;
import com.apk.l1;
import com.apk.wh;
import com.apk.ze;
import com.biquge.ebook.app.widget.filepicker.FilePickerAdapter;
import com.chad.library.adapter.base.BaseQuickAdapter;
import java.io.File;
import java.util.LinkedHashMap;
import kimi.wuhends.ebooks.R;
/* loaded from: classes8.dex */
public class SmartScanFragment extends g6 implements BaseQuickAdapter.OnItemClickListener {

    /* renamed from: do  reason: not valid java name */
    public String f7592do = ".txt";

    /* renamed from: for  reason: not valid java name */
    public final LinkedHashMap<String, File> f7593for = new LinkedHashMap<>();

    /* renamed from: if  reason: not valid java name */
    public FilePickerAdapter f7594if;
    @BindView(R.id.empty_view)
    public LinearLayout mEmptyView;
    @BindView(R.id.rv_list)
    public RecyclerView mRecyclerView;
    @BindView(R.id.scan_book_layout)
    public LinearLayout mSearchLayout;
    @BindView(R.id.scan_book_tips_txt)
    public TextView mSmartScanTv;

    /* renamed from: new  reason: not valid java name */
    public l1 f7595new;

    /* renamed from: try  reason: not valid java name */
    public boolean f7596try;

    @Override // com.apk.g6
    public int getLayoutId() {
        return R.layout.fragment_smart_scan_layout;
    }

    @Override // com.apk.g6
    public void initData() {
        Bundle arguments = getArguments();
        if (arguments != null && arguments.containsKey("fileType")) {
            this.f7592do = arguments.getString("fileType");
        }
        FilePickerAdapter filePickerAdapter = new FilePickerAdapter(new wh(new String[]{this.f7592do.replace(".", "")}));
        this.f7594if = filePickerAdapter;
        this.mRecyclerView.setAdapter(filePickerAdapter);
        this.f7594if.setOnItemClickListener(this);
        FilePickerAdapter filePickerAdapter2 = this.f7594if;
        if (filePickerAdapter2 != null && this.f7596try) {
            filePickerAdapter2.f8367new = true;
        }
        this.mSmartScanTv.setText("自动扫描30K以上大小的文件");
    }

    @Override // com.apk.g6
    public void initView() {
        this.mRecyclerView.setHasFixedSize(true);
        ze.m3165else(this.mRecyclerView);
        this.mRecyclerView.setLayoutManager(new LinearLayoutManager(getSupportActivity()));
    }

    @Override // com.chad.library.adapter.base.BaseQuickAdapter.OnItemClickListener
    public void onItemClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
        try {
            File item = this.f7594if.getItem(i);
            if (item != null) {
                if (this.f7593for.containsKey(item.getAbsolutePath())) {
                    this.f7593for.remove(item.getAbsolutePath());
                } else {
                    if (this.f7596try) {
                        this.f7593for.clear();
                    }
                    this.f7593for.put(item.getAbsolutePath(), item);
                }
            }
            if (this.f7595new != null) {
                this.f7595new.mo1583do();
            }
            if (!this.f7596try || this.f7594if == null) {
                return;
            }
            this.f7594if.notifyDataSetChanged();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
