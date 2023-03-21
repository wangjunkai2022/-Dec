package com.biquge.ebook.app.ui.fragment;

import android.os.Environment;
import android.text.TextUtils;
import android.view.View;
import android.widget.TextView;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.BindView;
import com.apk.a6;
import com.apk.g6;
import com.apk.l1;
import com.apk.o;
import com.apk.ob;
import com.apk.sh;
import com.apk.wh;
import com.apk.ze;
import com.biquge.ebook.app.widget.filepicker.FilePickerAdapter;
import com.chad.library.adapter.base.BaseQuickAdapter;
import java.io.File;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.concurrent.ThreadPoolExecutor;
import kimi.wuhends.ebooks.R;

/* loaded from: classes8.dex */
public class FilePickerFragment extends g6 implements BaseQuickAdapter.OnItemClickListener {

    /* renamed from: case  reason: not valid java name */
    public boolean f7456case;

    /* renamed from: do  reason: not valid java name */
    public wh f7457do;

    /* renamed from: for  reason: not valid java name */
    public String f7458for;

    /* renamed from: if  reason: not valid java name */
    public FilePickerAdapter f7459if;
    @BindView(R.id.rv_list)
    public RecyclerView mRecyclerView;
    @BindView(R.id.tv_path)
    public TextView mTvPath;

    /* renamed from: new  reason: not valid java name */
    public LinkedHashMap<String, File> f7460new = new LinkedHashMap<>();

    /* renamed from: try  reason: not valid java name */
    public l1 f7461try;

    @Override // com.apk.g6
    public int getLayoutId() {
        return R.layout.fragment_file_picker;
    }

    @Override // com.apk.g6
    public void initData() {
        if (Environment.getExternalStorageState().equals("mounted")) {
            this.f7458for = Environment.getExternalStorageDirectory().getPath() + "/Download";
            if (!new File(this.f7458for).exists()) {
                this.f7458for = a6.m18else().m25try();
            }
            this.mTvPath.setText(this.f7458for);
            wh whVar = new wh(new String[]{"txt"});
            this.f7457do = whVar;
            FilePickerAdapter filePickerAdapter = new FilePickerAdapter(whVar);
            this.f7459if = filePickerAdapter;
            this.mRecyclerView.setAdapter(filePickerAdapter);
            o m1921for = o.m1921for();
            ob obVar = new ob(this);
            ThreadPoolExecutor threadPoolExecutor = m1921for.f3327do;
            if (threadPoolExecutor != null) {
                threadPoolExecutor.execute(obVar);
            }
            this.f7459if.setOnItemClickListener(this);
            FilePickerAdapter filePickerAdapter2 = this.f7459if;
            if (filePickerAdapter2 == null || !this.f7456case) {
                return;
            }
            filePickerAdapter2.f8367new = true;
        }
    }

    @Override // com.apk.g6
    public void initView() {
        this.mRecyclerView.setLayoutManager(new LinearLayoutManager(getSupportActivity()));
        this.mRecyclerView.setHasFixedSize(true);
        ze.m3165else(this.mRecyclerView);
    }

    @Override // com.chad.library.adapter.base.BaseQuickAdapter.OnItemClickListener
    public void onItemClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
        try {
            File item = this.f7459if.getItem(i);
            if (item != null) {
                if (item.isDirectory()) {
                    String absolutePath = item.getAbsolutePath();
                    this.f7458for = absolutePath;
                    if (TextUtils.isEmpty(absolutePath)) {
                        return;
                    }
                    this.mTvPath.setText(this.f7458for);
                    FilePickerAdapter filePickerAdapter = this.f7459if;
                    filePickerAdapter.setNewData(m3377synchronized(this.f7458for));
                    filePickerAdapter.f8364do = new boolean[filePickerAdapter.getItemCount()];
                    this.mRecyclerView.scrollToPosition(0);
                    return;
                }
                if (this.f7460new.containsKey(item.getAbsolutePath())) {
                    this.f7460new.remove(item.getAbsolutePath());
                } else {
                    if (this.f7456case) {
                        this.f7460new.clear();
                    }
                    this.f7460new.put(item.getAbsolutePath(), item);
                }
                if (this.f7461try != null) {
                    this.f7461try.mo1583do();
                }
                if (!this.f7456case || this.f7459if == null) {
                    return;
                }
                this.f7459if.notifyDataSetChanged();
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: synchronized  reason: not valid java name */
    public final List<File> m3377synchronized(String str) {
        File[] listFiles = new File(str).listFiles(this.f7457do);
        if (listFiles == null) {
            return new ArrayList();
        }
        List<File> asList = Arrays.asList(listFiles);
        ArrayList arrayList = new ArrayList();
        for (File file : asList) {
            if (!file.getName().equals(ze.m3168finally())) {
                arrayList.add(file);
            }
        }
        Collections.sort(arrayList, new sh());
        return arrayList;
    }
}
