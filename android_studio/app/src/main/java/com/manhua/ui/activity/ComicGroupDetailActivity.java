package com.manhua.ui.activity;

import android.app.Activity;
import android.content.Intent;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewStub;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.BindView;
import butterknife.OnClick;
import com.apk.a10;
import com.apk.b1;
import com.apk.b10;
import com.apk.bg;
import com.apk.c10;
import com.apk.d10;
import com.apk.e10;
import com.apk.eg;
import com.apk.et;
import com.apk.f6;
import com.apk.ft;
import com.apk.g1;
import com.apk.gt;
import com.apk.lv;
import com.apk.mf;
import com.apk.mu;
import com.apk.n2;
import com.apk.o0;
import com.apk.w0;
import com.apk.yg;
import com.apk.z00;
import com.apk.ze;
import com.apk.zu;
import com.biquge.ebook.app.widget.ToggleEditTextView;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.hjq.toast.ToastUtils;
import com.lxj.xpopup.core.AttachPopupView;
import com.lxj.xpopup.core.BasePopupView;
import com.lxj.xpopup.core.BottomPopupView;
import com.lxj.xpopup.core.CenterPopupView;
import com.lxj.xpopup.core.ImageViewerPopupView;
import com.lxj.xpopup.core.PositionPopupView;
import com.lxj.xpopup.impl.AttachListPopupView;
import com.manhua.adapter.ComicGroupAdapter;
import com.manhua.data.bean.ComicCollectBean;
import com.manhua.ui.view.ComicMenuPopupView;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.LinkedList;
import java.util.List;
import kimi.wuhends.ebooks.R;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;

/* loaded from: classes8.dex */
public class ComicGroupDetailActivity extends f6 implements BaseQuickAdapter.OnItemClickListener, BaseQuickAdapter.OnItemLongClickListener, BaseQuickAdapter.OnItemChildClickListener, BaseQuickAdapter.OnItemChildLongClickListener {

    /* renamed from: case  reason: not valid java name */
    public ComicGroupAdapter f9704case;

    /* renamed from: do  reason: not valid java name */
    public ComicCollectBean f9705do;

    /* renamed from: else  reason: not valid java name */
    public List<ComicCollectBean> f9706else;

    /* renamed from: for  reason: not valid java name */
    public boolean f9707for;

    /* renamed from: goto  reason: not valid java name */
    public yg f9708goto;

    /* renamed from: if  reason: not valid java name */
    public boolean f9709if;
    @BindView(R.id.pop_bookgroup_detail_edit_ok)
    public TextView mEditFinishTView;
    @BindView(R.id.pop_bookgroup_detail_more)
    public ImageView mMoreView;
    @BindView(R.id.activity_bookgroup_detail_recyclerview)
    public RecyclerView mRecyclerView;
    @BindView(R.id.pop_bookgroup_detail_title)
    public ToggleEditTextView mTitleETView;

    /* renamed from: new  reason: not valid java name */
    public boolean f9710new;

    /* renamed from: this  reason: not valid java name */
    public ComicMenuPopupView f9711this;

    /* renamed from: try  reason: not valid java name */
    public View f9712try;

    /* renamed from: com.manhua.ui.activity.ComicGroupDetailActivity$case  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Ccase implements g1 {

        /* renamed from: do  reason: not valid java name */
        public ComicCollectBean f9713do;

        /* renamed from: if  reason: not valid java name */
        public final String f9715if;

        public Ccase(int i, ComicCollectBean comicCollectBean, Cdo cdo) {
            this.f9713do = comicCollectBean;
            this.f9715if = comicCollectBean.getCollectId();
        }

        @Override // com.apk.g1
        public void onData(Object obj) {
            if (this.f9713do == null) {
                int size = ComicGroupDetailActivity.this.f9706else.size();
                int i = 0;
                while (true) {
                    if (i >= size) {
                        break;
                    }
                    ComicCollectBean comicCollectBean = ComicGroupDetailActivity.this.f9706else.get(i);
                    if (comicCollectBean.getCollectId().equals(this.f9715if)) {
                        this.f9713do = comicCollectBean;
                        break;
                    }
                    i++;
                }
            }
            if (this.f9713do == null) {
                return;
            }
            int intValue = ((Integer) obj).intValue();
            switch (intValue) {
                case -1:
                    ComicDetailActivity.n(ComicGroupDetailActivity.this, mu.m1759const(this.f9713do));
                    return;
                case 0:
                    ComicGroupDetailActivity.m(ComicGroupDetailActivity.this, this.f9713do);
                    ComicMenuPopupView comicMenuPopupView = ComicGroupDetailActivity.this.f9711this;
                    if (comicMenuPopupView != null) {
                        comicMenuPopupView.m3635break(intValue);
                    }
                    this.f9713do = null;
                    return;
                case 1:
                default:
                    return;
                case 2:
                    ComicNovelDirActivity.j(ComicGroupDetailActivity.this, this.f9713do);
                    return;
                case 3:
                    ComicCollectBean comicCollectBean2 = this.f9713do;
                    if (comicCollectBean2 != null) {
                        ze.s(ComicGroupDetailActivity.this, comicCollectBean2.getCollectId(), this.f9713do.getName(), false, true);
                        return;
                    }
                    return;
                case 4:
                    if (mu.m1768goto(ComicGroupDetailActivity.this)) {
                        return;
                    }
                    o0.m1925else().m1933for(ComicGroupDetailActivity.this, String.valueOf(this.f9713do.getCollectId()), this.f9713do.getName(), true, null);
                    return;
                case 5:
                    try {
                        if (ComicGroupDetailActivity.this.f9712try == null) {
                            ComicGroupDetailActivity.this.f9712try = ((ViewStub) ComicGroupDetailActivity.this.findViewById(R.id.new_share_page_view)).inflate();
                            ComicGroupDetailActivity.this.f9712try.setVisibility(4);
                        }
                        w0.m2882interface(ComicGroupDetailActivity.this, ComicGroupDetailActivity.this.f9712try, null, mu.m1759const(this.f9713do));
                        return;
                    } catch (Exception e) {
                        e.printStackTrace();
                        return;
                    }
                case 6:
                    ComicGroupDetailActivity.i(ComicGroupDetailActivity.this, this.f9713do);
                    return;
                case 7:
                    ComicGroupDetailActivity.j(ComicGroupDetailActivity.this, this.f9713do);
                    return;
                case 8:
                    ComicGroupDetailActivity.k(ComicGroupDetailActivity.this, this.f9713do);
                    return;
            }
        }
    }

    /* renamed from: com.manhua.ui.activity.ComicGroupDetailActivity$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cdo implements ToggleEditTextView.Cif {
        public Cdo() {
        }

        @Override // com.biquge.ebook.app.widget.ToggleEditTextView.Cif
        /* renamed from: do */
        public void mo3307do(String str) {
            ComicCollectBean comicCollectBean;
            if (TextUtils.isEmpty(str) || (comicCollectBean = ComicGroupDetailActivity.this.f9705do) == null) {
                return;
            }
            n2.E(comicCollectBean.getCollectId(), ComicGroupDetailActivity.this.f9705do.getGroupId(), str, true);
        }
    }

    /* renamed from: com.manhua.ui.activity.ComicGroupDetailActivity$for  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cfor implements gt {
        public Cfor() {
        }

        @Override // com.apk.gt
        /* renamed from: do */
        public void mo1044do(BasePopupView basePopupView) {
            yg ygVar = ComicGroupDetailActivity.this.f9708goto;
            if (ygVar != null) {
                ygVar.f5938try = false;
            }
        }
    }

    /* renamed from: com.manhua.ui.activity.ComicGroupDetailActivity$if  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cif implements ft {

        /* renamed from: do  reason: not valid java name */
        public final /* synthetic */ List f9718do;

        public Cif(List list) {
            this.f9718do = list;
        }

        @Override // com.apk.ft
        public void onClick() {
            ComicGroupDetailActivity.l(ComicGroupDetailActivity.this, this.f9718do);
        }
    }

    /* renamed from: com.manhua.ui.activity.ComicGroupDetailActivity$new  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cnew implements et {
        public Cnew() {
        }

        @Override // com.apk.et
        public void onDismiss() {
            yg ygVar = ComicGroupDetailActivity.this.f9708goto;
            if (ygVar != null) {
                ygVar.f5938try = true;
            }
        }
    }

    /* renamed from: com.manhua.ui.activity.ComicGroupDetailActivity$try  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Ctry extends bg {
        public Ctry() {
        }

        @Override // com.apk.bg
        public void onNoDoubleClick(View view) {
            switch (view.getId()) {
                case R.id.edit_delete_bt /* 2131296745 */:
                    ComicGroupDetailActivity comicGroupDetailActivity = ComicGroupDetailActivity.this;
                    comicGroupDetailActivity.n(comicGroupDetailActivity.f9704case.m3609do());
                    return;
                case R.id.edit_group_bt /* 2131296746 */:
                    List<ComicCollectBean> m3609do = ComicGroupDetailActivity.this.f9704case.m3609do();
                    ArrayList arrayList = (ArrayList) m3609do;
                    if (arrayList.size() > 0) {
                        ComicGroupDetailActivity comicGroupDetailActivity2 = ComicGroupDetailActivity.this;
                        if (comicGroupDetailActivity2 != null) {
                            CreateComicGroupActivity.m(comicGroupDetailActivity2, m3609do, ((ComicCollectBean) arrayList.get(0)).getGroupId(), comicGroupDetailActivity2.f9707for, comicGroupDetailActivity2.f9710new);
                            return;
                        }
                        throw null;
                    }
                    return;
                case R.id.edit_query /* 2131296747 */:
                default:
                    return;
                case R.id.edit_select_all_bt /* 2131296748 */:
                    int m3611if = ComicGroupDetailActivity.this.f9704case.m3611if(true);
                    ComicGroupDetailActivity.this.o();
                    yg ygVar = ComicGroupDetailActivity.this.f9708goto;
                    if (ygVar != null) {
                        ygVar.m3066do(m3611if, m3611if);
                        return;
                    }
                    return;
            }
        }
    }

    public static void i(ComicGroupDetailActivity comicGroupDetailActivity, ComicCollectBean comicCollectBean) {
        if (comicGroupDetailActivity != null) {
            comicGroupDetailActivity.showTipDialog(comicGroupDetailActivity, comicGroupDetailActivity.getString(R.string.download_is_delete_txt, new Object[]{comicCollectBean.getName()}), new c10(comicGroupDetailActivity, comicCollectBean.getCollectId(), comicCollectBean), null, false);
            return;
        }
        throw null;
    }

    public static void j(ComicGroupDetailActivity comicGroupDetailActivity, ComicCollectBean comicCollectBean) {
        if (comicGroupDetailActivity != null) {
            ArrayList arrayList = new ArrayList();
            arrayList.add(comicCollectBean);
            comicGroupDetailActivity.n(arrayList);
            return;
        }
        throw null;
    }

    public static void k(ComicGroupDetailActivity comicGroupDetailActivity, ComicCollectBean comicCollectBean) {
        if (comicGroupDetailActivity != null) {
            ArrayList arrayList = new ArrayList();
            arrayList.add(comicCollectBean);
            CreateComicGroupActivity.m(comicGroupDetailActivity, arrayList, ((ComicCollectBean) arrayList.get(0)).getGroupId(), comicGroupDetailActivity.f9707for, comicGroupDetailActivity.f9710new);
            return;
        }
        throw null;
    }

    public static void l(ComicGroupDetailActivity comicGroupDetailActivity, List list) {
        if (comicGroupDetailActivity == null) {
            throw null;
        }
        new b1().m141do(new d10(comicGroupDetailActivity, list));
    }

    public static void m(ComicGroupDetailActivity comicGroupDetailActivity, ComicCollectBean comicCollectBean) {
        if (comicGroupDetailActivity != null) {
            LinkedList linkedList = new LinkedList();
            linkedList.add(comicCollectBean);
            new b1().m141do(new z00(comicGroupDetailActivity, linkedList));
            return;
        }
        throw null;
    }

    public static void r(Activity activity, ComicCollectBean comicCollectBean, boolean z, boolean z2, boolean z3) {
        Intent intent = new Intent(activity, ComicGroupDetailActivity.class);
        intent.putExtra("EXTRA_KEY", comicCollectBean);
        intent.putExtra("EXTRA_IS_EDIT_KEY", z);
        intent.putExtra("EXTRA_LIST_MODE_KEY", z2);
        intent.putExtra("EXTRA_BIG_STYLE_KEY", z3);
        activity.startActivity(intent);
        activity.overridePendingTransition(R.anim.in_from_up, R.anim.in_to_down);
    }

    @Override // com.apk.f6, android.app.Activity, android.view.Window.Callback
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        if (motionEvent.getRawY() >= eg.m587catch(70.0f) && this.mTitleETView.m3524do()) {
            this.mTitleETView.m3525if(this);
            return true;
        }
        return super.dispatchTouchEvent(motionEvent);
    }

    @Override // com.apk.f6, android.app.Activity
    public void finish() {
        super.finish();
        overridePendingTransition(R.anim.in_to_down, R.anim.out_to_down);
        ze.V();
    }

    @Override // com.apk.f6
    public int getLayoutId() {
        return R.layout.activity_bookgroup_detail;
    }

    @Override // com.apk.f6
    public void initData() {
        int i;
        int i2;
        Intent intent = getIntent();
        this.f9705do = (ComicCollectBean) intent.getSerializableExtra("EXTRA_KEY");
        this.f9709if = intent.getBooleanExtra("EXTRA_IS_EDIT_KEY", false);
        this.f9707for = intent.getBooleanExtra("EXTRA_LIST_MODE_KEY", false);
        this.f9710new = intent.getBooleanExtra("EXTRA_BIG_STYLE_KEY", false);
        this.mTitleETView.setText(this.f9705do.getGroupTitle());
        if (this.f9707for) {
            i = this.f9710new ? R.layout.include_book_shelf_list : R.layout.include_book_shelf_list_small;
            this.mRecyclerView.setLayoutManager(new LinearLayoutManager(this));
        } else {
            if (this.f9710new) {
                i = R.layout.include_book_shelf_grid;
                i2 = 3;
            } else {
                i = R.layout.include_book_shelf_grid_small;
                i2 = 4;
            }
            this.mRecyclerView.setLayoutManager(new GridLayoutManager(this, i2));
        }
        ComicGroupAdapter comicGroupAdapter = new ComicGroupAdapter(this, null, this.f9707for, this.f9710new, i);
        this.f9704case = comicGroupAdapter;
        this.mRecyclerView.setAdapter(comicGroupAdapter);
        new b1().m141do(new b10(this));
    }

    @Override // com.apk.f6
    public void initView() {
        this.mRecyclerView.setHasFixedSize(true);
        ze.m3165else(this.mRecyclerView);
        this.mTitleETView.setOnEditFinishListener(new Cdo());
        registerEventBus(this);
    }

    @Override // com.apk.ne0
    public boolean isSwipeBackEnable() {
        return false;
    }

    @OnClick({R.id.pop_bookgroup_detail_back, R.id.pop_bookgroup_detail_more, R.id.pop_bookgroup_detail_edit_ok})
    public void menuClick(View view) {
        switch (view.getId()) {
            case R.id.pop_bookgroup_detail_back /* 2131297299 */:
                onBackPressed();
                return;
            case R.id.pop_bookgroup_detail_edit_ok /* 2131297300 */:
                s(false, -1);
                return;
            case R.id.pop_bookgroup_detail_more /* 2131297301 */:
                if (this.mTitleETView.m3524do()) {
                    this.mTitleETView.m3525if(this);
                    return;
                }
                String[] strArr = {ze.q(R.string.main_edit_txt), ze.q(R.string.main_menu_pop_discard_group)};
                int[] iArr = {R.drawable.icon_shelf_menu_edit, R.drawable.icon_shelf_menu_remove};
                lv lvVar = new lv();
                lvVar.f2943try = Boolean.TRUE;
                lvVar.f2920else = this.mMoreView;
                a10 a10Var = new a10(this);
                lvVar.f2917continue = zu.f6266try;
                AttachListPopupView attachListPopupView = new AttachListPopupView(this, 0, 0);
                attachListPopupView.f9538super = strArr;
                attachListPopupView.f9539throw = iArr;
                attachListPopupView.f9540while = a10Var;
                attachListPopupView.popupInfo = lvVar;
                attachListPopupView.show();
                return;
            default:
                return;
        }
    }

    public final void n(List<ComicCollectBean> list) {
        if (list != null && list.size() > 0) {
            eg.g(this, ze.q(R.string.main_delete_if_affirm), new Cif(list), new Cfor(), new Cnew());
        } else {
            ToastUtils.show((int) R.string.main_please_select_book);
        }
    }

    public final void o() {
        if (this.f9708goto == null) {
            this.f9708goto = new yg(this, new Ctry());
        }
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onActivityResult(int i, int i2, Intent intent) {
        List list;
        super.onActivityResult(i, i2, intent);
        if (i != 112 || i2 != -1 || intent == null || (list = (List) intent.getSerializableExtra("data")) == null) {
            return;
        }
        List<ComicCollectBean> list2 = this.f9706else;
        if (list2 != null) {
            list2.removeAll(list);
        }
        ComicGroupAdapter comicGroupAdapter = this.f9704case;
        if (comicGroupAdapter != null) {
            comicGroupAdapter.setNewData(this.f9706else);
        }
        s(false, -1);
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        if (this.mTitleETView.m3524do()) {
            this.mTitleETView.m3525if(this);
            return;
        }
        ComicGroupAdapter comicGroupAdapter = this.f9704case;
        if (comicGroupAdapter != null ? comicGroupAdapter.f9612for : false) {
            s(false, -1);
        } else {
            super.onBackPressed();
        }
    }

    @Override // com.apk.f6, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        unRegisterEventBus(this);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMainThread(mf mfVar) {
        if ("refresh_shelf_book".equals(mfVar.f3028do)) {
            new b1().m141do(new b10(this));
        }
    }

    @Override // com.chad.library.adapter.base.BaseQuickAdapter.OnItemChildClickListener
    public void onItemChildClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
        if (view.getId() == R.id.item_list_menu_bt) {
            q(i);
        } else {
            p(i);
        }
    }

    @Override // com.chad.library.adapter.base.BaseQuickAdapter.OnItemChildLongClickListener
    public boolean onItemChildLongClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
        q(i);
        return true;
    }

    @Override // com.chad.library.adapter.base.BaseQuickAdapter.OnItemClickListener
    public void onItemClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
        p(i);
    }

    @Override // com.chad.library.adapter.base.BaseQuickAdapter.OnItemLongClickListener
    public boolean onItemLongClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
        q(i);
        return true;
    }

    public final void p(int i) {
        try {
            if (this.f9704case != null && this.f9704case.f9612for) {
                o();
                if (this.f9708goto != null) {
                    this.f9708goto.m3066do(this.f9704case.m3610for(i), -1);
                    return;
                }
                return;
            }
            ComicCollectBean comicCollectBean = (ComicCollectBean) this.f9704case.getItem(i);
            if (comicCollectBean != null) {
                String firstChapterId = comicCollectBean.getFirstChapterId();
                if (TextUtils.isEmpty(firstChapterId)) {
                    firstChapterId = mu.m1781static(comicCollectBean.getCollectId());
                    if (!TextUtils.isEmpty(firstChapterId)) {
                        ((ComicCollectBean) this.f9704case.getItem(i)).setFirstChapterId(firstChapterId);
                    }
                }
                if (TextUtils.isEmpty(firstChapterId)) {
                    ComicDetailActivity.n(this, mu.m1759const(comicCollectBean));
                    return;
                }
                comicCollectBean.setFirstChapterId(firstChapterId);
                ComicReadActivity.I(this, comicCollectBean, null);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public final boolean q(int i) {
        ComicGroupAdapter comicGroupAdapter = this.f9704case;
        if (comicGroupAdapter == null || !comicGroupAdapter.f9612for) {
            ComicCollectBean comicCollectBean = (ComicCollectBean) this.f9704case.getItem(i);
            this.f9711this = new ComicMenuPopupView(this, comicCollectBean, new Ccase(i, comicCollectBean, null), false);
            lv lvVar = new lv();
            ComicMenuPopupView comicMenuPopupView = this.f9711this;
            if (comicMenuPopupView instanceof CenterPopupView) {
                lvVar.f2917continue = zu.f6266try;
            } else if (comicMenuPopupView instanceof BottomPopupView) {
                lvVar.f2917continue = zu.f6266try;
            } else if (comicMenuPopupView instanceof AttachPopupView) {
                lvVar.f2917continue = zu.f6266try;
            } else if (comicMenuPopupView instanceof ImageViewerPopupView) {
                lvVar.f2917continue = zu.f6266try;
            } else if (comicMenuPopupView instanceof PositionPopupView) {
                lvVar.f2917continue = zu.f6266try;
            }
            comicMenuPopupView.popupInfo = lvVar;
            comicMenuPopupView.show();
            return true;
        }
        return true;
    }

    public final void s(boolean z, int i) {
        ComicGroupAdapter comicGroupAdapter = this.f9704case;
        comicGroupAdapter.f9612for = z;
        LinkedHashMap<String, ComicCollectBean> linkedHashMap = comicGroupAdapter.f9614new;
        if (linkedHashMap != null) {
            linkedHashMap.clear();
        }
        comicGroupAdapter.notifyDataSetChanged();
        if (z) {
            o();
            if (this.f9708goto != null) {
                post(new e10(this));
            }
            if (i >= 0) {
                o();
                yg ygVar = this.f9708goto;
                if (ygVar != null) {
                    ygVar.m3066do(this.f9704case.m3610for(i), -1);
                }
            }
        } else {
            o();
            yg ygVar2 = this.f9708goto;
            if (ygVar2 != null && ygVar2.isShowing()) {
                this.f9708goto.dismiss();
            }
        }
        if (this.f9704case.f9612for) {
            this.mMoreView.setVisibility(8);
            this.mEditFinishTView.setVisibility(0);
            this.mRecyclerView.setPadding(0, 0, 0, eg.m587catch(50.0f));
            return;
        }
        this.mMoreView.setVisibility(0);
        this.mEditFinishTView.setVisibility(8);
        this.mRecyclerView.setPadding(0, 0, 0, 0);
    }
}
