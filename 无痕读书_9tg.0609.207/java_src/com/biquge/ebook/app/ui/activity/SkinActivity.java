package com.biquge.ebook.app.ui.activity;

import android.view.View;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.BindView;
import com.apk.da;
import com.apk.f6;
import com.apk.tt;
import com.apk.yp0;
import com.apk.ze;
import com.biquge.ebook.app.adapter.SwitchSkinAdapter;
import com.biquge.ebook.app.app.AppContext;
import com.biquge.ebook.app.bean.SkinModel;
import com.chad.library.adapter.base.BaseQuickAdapter;
import java.util.ArrayList;
import kimi.wuhends.ebooks.R;
/* loaded from: classes8.dex */
public class SkinActivity extends f6 implements BaseQuickAdapter.OnItemClickListener {

    /* renamed from: do  reason: not valid java name */
    public SwitchSkinAdapter f6821do;
    @BindView(R.id.skin_recyclerview)
    public RecyclerView mRecyclerView;

    @Override // com.apk.f6
    public int getLayoutId() {
        return R.layout.activity_skin;
    }

    @Override // com.apk.f6
    public void initData() {
        SwitchSkinAdapter switchSkinAdapter = new SwitchSkinAdapter(ze.i());
        this.f6821do = switchSkinAdapter;
        this.mRecyclerView.setAdapter(switchSkinAdapter);
        this.f6821do.setOnItemClickListener(this);
    }

    @Override // com.apk.f6
    public void initView() {
        initTopBarOnlyTitle(R.id.skin_actionbar, R.string.skin_title_txt);
        this.mRecyclerView.setLayoutManager(new GridLayoutManager(this, 2));
        this.mRecyclerView.setHasFixedSize(true);
        ze.m3165else(this.mRecyclerView);
    }

    @Override // com.apk.ne0
    public boolean isSwipeBackEnable() {
        return false;
    }

    @Override // com.chad.library.adapter.base.BaseQuickAdapter.OnItemClickListener
    public void onItemClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
        if (ze.m3174instanceof("APP_SKIN_STYLE_KEY", 0) == i) {
            return;
        }
        if (i == 0) {
            yp0.f6038class.m3110for("", null, -1);
        } else {
            SkinModel item = this.f6821do.getItem(i);
            if (item != null) {
                yp0.f6038class.m3111if(item.getTag(), 1);
            }
        }
        tt.f4763do.putInt("APP_SKIN_STYLE_KEY", i);
        this.f6821do.notifyDataSetChanged();
        da.m422finally(false);
        AppContext.f6392case.m3293for("black".equals(((SkinModel) ((ArrayList) ze.i()).get(i)).getTag()));
    }
}
