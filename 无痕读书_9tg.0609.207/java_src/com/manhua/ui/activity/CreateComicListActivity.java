package com.manhua.ui.activity;

import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.widget.EditText;
import androidx.annotation.Nullable;
import androidx.core.app.NotificationCompatJellybean;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.apk.Cgoto;
import com.apk.f6;
import com.apk.ft;
import com.apk.kg;
import com.apk.lq0;
import com.apk.mu;
import com.apk.r5;
import com.apk.tr0;
import com.apk.w0;
import com.apk.x4;
import com.apk.y2;
import com.apk.z2;
import com.apk.ze;
import com.biquge.ebook.app.helper.req.convert.Convert;
import com.biquge.ebook.app.ui.activity.BookSearchActivity;
import com.biquge.ebook.app.widget.AppRadioButton;
import com.biquge.ebook.app.widget.fancybuttons.FancyButton;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.hjq.toast.ToastUtils;
import com.manhua.adapter.CreateComicListAdapter;
import com.manhua.data.bean.ComicBean;
import com.manhua.data.bean.CreateComicList;
import java.io.Serializable;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import kimi.wuhends.ebooks.R;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import org.litepal.LitePal;
/* loaded from: classes8.dex */
public class CreateComicListActivity extends f6 implements View.OnClickListener, BaseQuickAdapter.OnItemClickListener {

    /* renamed from: break  reason: not valid java name */
    public String f9869break;

    /* renamed from: case  reason: not valid java name */
    public RecyclerView f9870case;

    /* renamed from: catch  reason: not valid java name */
    public z2 f9871catch;

    /* renamed from: class  reason: not valid java name */
    public final r5 f9872class = new Cif();

    /* renamed from: do  reason: not valid java name */
    public View f9873do;

    /* renamed from: else  reason: not valid java name */
    public CreateComicListAdapter f9874else;

    /* renamed from: for  reason: not valid java name */
    public EditText f9875for;

    /* renamed from: goto  reason: not valid java name */
    public String f9876goto;

    /* renamed from: if  reason: not valid java name */
    public EditText f9877if;

    /* renamed from: new  reason: not valid java name */
    public AppRadioButton f9878new;

    /* renamed from: this  reason: not valid java name */
    public String f9879this;

    /* renamed from: try  reason: not valid java name */
    public AppRadioButton f9880try;

    /* renamed from: com.manhua.ui.activity.CreateComicListActivity$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cdo implements BaseQuickAdapter.OnItemChildClickListener {
        public Cdo() {
        }

        @Override // com.chad.library.adapter.base.BaseQuickAdapter.OnItemChildClickListener
        public void onItemChildClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
            int id = view.getId();
            if (id == R.id.item_create_cancel_input_image) {
                try {
                    ComicBean item = CreateComicListActivity.this.f9874else.getItem(i);
                    if (item != null) {
                        CreateComicListAdapter createComicListAdapter = CreateComicListActivity.this.f9874else;
                        createComicListAdapter.f9641if.remove(item.getId());
                        CreateComicListActivity.this.f9874else.notifyDataSetChanged();
                    }
                } catch (Exception e) {
                    e.printStackTrace();
                }
            } else if (id != R.id.item_delete_bt) {
            } else {
                try {
                    ComicBean item2 = CreateComicListActivity.this.f9874else.getItem(i);
                    if (item2 != null && item2.getImg().equals(CreateComicListActivity.this.f9869break)) {
                        int i2 = i + 1;
                        if (i2 < CreateComicListActivity.this.f9874else.getItemCount() - 1) {
                            ComicBean item3 = CreateComicListActivity.this.f9874else.getItem(i2);
                            if (item3 != null) {
                                CreateComicListActivity.this.f9869break = item3.getImg();
                            }
                        } else {
                            CreateComicListActivity.this.f9869break = null;
                        }
                        CreateComicListActivity.this.f9874else.f9640do = CreateComicListActivity.this.f9869break;
                    }
                    CreateComicListActivity.this.f9874else.remove(i);
                    CreateComicListActivity.this.f9874else.notifyDataSetChanged();
                } catch (Exception e2) {
                    e2.printStackTrace();
                }
            }
        }
    }

    /* renamed from: com.manhua.ui.activity.CreateComicListActivity$for  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cfor implements ft {
        public Cfor() {
        }

        @Override // com.apk.ft
        public void onClick() {
            CreateComicListActivity.this.setResult(-1);
            CreateComicListActivity.this.finish();
        }
    }

    /* renamed from: com.manhua.ui.activity.CreateComicListActivity$if  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cif extends r5 {
        public Cif() {
        }

        @Override // com.apk.r5
        /* renamed from: const */
        public void mo2232const(String str) {
            CreateComicListActivity.this.setResult(-1);
            CreateComicListActivity.this.finish();
        }
    }

    @Override // com.apk.f6
    public int getLayoutId() {
        return R.layout.activity_create_booklist;
    }

    @Override // com.apk.f6
    public int getToolBarMenuView() {
        return R.menu.toolbar_menu_create_booklist_activity;
    }

    public final void i() {
        if (this.f9871catch != null) {
            JSONArray jSONArray = new JSONArray();
            Iterator<ComicBean> it = this.f9874else.getData().iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                ComicBean next = it.next();
                JSONObject jSONObject = new JSONObject();
                try {
                    jSONObject.put("bookid", next.getId());
                    String m3620do = this.f9874else.m3620do(next.getId());
                    jSONObject.put("description", TextUtils.isEmpty(m3620do) ? "" : m3620do);
                } catch (Exception e) {
                    e.printStackTrace();
                }
                jSONArray.put(jSONObject);
            }
            z2 z2Var = this.f9871catch;
            String str = this.f9879this;
            String str2 = "my_release".equals(this.f9876goto) ? this.f9879this : "";
            String m1006interface = Cgoto.m1006interface(this.f9877if);
            String m1006interface2 = Cgoto.m1006interface(this.f9875for);
            boolean isChecked = this.f9878new.isChecked();
            String str3 = this.f9869break;
            if (z2Var != null) {
                HashMap m1012public = Cgoto.m1012public("action", "booklist", "listid", str2);
                m1012public.put(NotificationCompatJellybean.KEY_TITLE, m1006interface);
                m1012public.put("description", m1006interface2);
                m1012public.put("isforman", isChecked + "");
                m1012public.put("cover", str3);
                m1012public.put("jsondata", jSONArray.toString());
                x4.m2951default(Cgoto.m990catch(new StringBuilder(), "/UserListAction.aspx"), m1012public, new y2(z2Var, str, isChecked, str3, m1006interface, m1006interface2, jSONArray));
                return;
            }
            throw null;
        }
    }

    @Override // com.apk.f6
    public void init(@Nullable Bundle bundle) {
        super.init(bundle);
        setWindowStatusBarColorValue(this, lq0.m1660do(getApplicationContext(), tr0.m2617do(R.color.colorPrimaryDark)));
    }

    @Override // com.apk.f6
    public void initData() {
        List<ComicBean> k0;
        Intent intent = getIntent();
        this.f9876goto = intent.getStringExtra("type");
        this.f9879this = intent.getStringExtra("bookListId");
        this.f9869break = intent.getStringExtra("cover");
        this.f9871catch = new z2(this, this.f9872class);
        CreateComicListAdapter createComicListAdapter = new CreateComicListAdapter();
        this.f9874else = createComicListAdapter;
        this.f9870case.setAdapter(createComicListAdapter);
        this.f9874else.addHeaderView(this.f9873do);
        if ("my_release".equals(this.f9876goto)) {
            try {
                invalidateOptionsMenu();
                CreateComicList createComicList = (CreateComicList) intent.getSerializableExtra("createBookList");
                if (createComicList != null) {
                    try {
                        this.f9879this = createComicList.getBookListId();
                        this.f9877if.setText(createComicList.getTitle());
                        this.f9875for.setText(createComicList.getIntro());
                        this.f9869break = createComicList.getCover();
                        k(createComicList.isForMen());
                        if (!TextUtils.isEmpty(createComicList.getBooks())) {
                            JSONArray jSONArray = new JSONArray(createComicList.getBooks());
                            int length = jSONArray.length();
                            for (int i = 0; i < length; i++) {
                                this.f9874else.addData((CreateComicListAdapter) mu.s(jSONArray.optJSONObject(i)));
                            }
                        }
                    } catch (JSONException e) {
                        e.printStackTrace();
                    }
                }
                this.f9877if.setEnabled(false);
                this.f9877if.setBackgroundColor(ze.p(R.color.color_e7e7e7));
                this.f9877if.setTextColor(ze.p(R.color.color_CEC8C0));
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        } else if ("my_draftBox".equals(this.f9876goto)) {
            try {
                CreateComicList createComicList2 = (CreateComicList) LitePal.where("bookListId = ?", this.f9879this).findFirst(CreateComicList.class);
                if (createComicList2 != null) {
                    try {
                        this.f9879this = createComicList2.getBookListId();
                        if (!TextUtils.isEmpty(createComicList2.getTitle())) {
                            this.f9877if.setText(createComicList2.getTitle());
                            this.f9877if.setSelection(createComicList2.getTitle().length());
                        }
                        this.f9875for.setText(createComicList2.getIntro());
                        this.f9869break = createComicList2.getCover();
                        k(createComicList2.isForMen());
                        if (!TextUtils.isEmpty(createComicList2.getBooks()) && (k0 = ze.k0(new JSONArray(createComicList2.getBooks()))) != null) {
                            for (ComicBean comicBean : k0) {
                                this.f9874else.f9641if.put(comicBean.getId(), comicBean.getDesc());
                            }
                            this.f9874else.addData((Collection) k0);
                        }
                    } catch (JSONException e3) {
                        e3.printStackTrace();
                    }
                }
            } catch (Exception e4) {
                e4.printStackTrace();
            }
        }
        CreateComicListAdapter createComicListAdapter2 = this.f9874else;
        createComicListAdapter2.f9640do = this.f9869break;
        createComicListAdapter2.setOnItemClickListener(this);
        this.f9874else.setOnItemChildClickListener(new Cdo());
    }

    @Override // com.apk.f6
    public void initView() {
        initTopBarOnlyTitle(R.id.activity_create_element_actionbar, R.string.element_create_element_txt);
        RecyclerView recyclerView = (RecyclerView) findViewById(R.id.rv_list);
        this.f9870case = recyclerView;
        recyclerView.setHasFixedSize(true);
        ze.m3165else(this.f9870case);
        this.f9870case.setLayoutManager(new LinearLayoutManager(this));
        View inflate = View.inflate(this, R.layout.include_create_book_header_layout, null);
        this.f9873do = inflate;
        this.f9877if = (EditText) inflate.findViewById(R.id.create_element_title_et);
        this.f9875for = (EditText) this.f9873do.findViewById(R.id.create_element_intro_et);
        this.f9878new = (AppRadioButton) this.f9873do.findViewById(R.id.create_element_formen_ck);
        this.f9880try = (AppRadioButton) this.f9873do.findViewById(R.id.create_element_forwomen_ck);
        k(w0.m2881import());
        this.f9878new.setOnClickListener(this);
        this.f9880try.setOnClickListener(this);
        FancyButton fancyButton = (FancyButton) this.f9873do.findViewById(R.id.create_element_add_shelf_txt);
        fancyButton.setBorderColor(tr0.m2617do(R.color.colorPrimary));
        fancyButton.setOnClickListener(this);
        FancyButton fancyButton2 = (FancyButton) this.f9873do.findViewById(R.id.create_element_add_store_txt);
        fancyButton2.setBorderColor(tr0.m2617do(R.color.colorPrimary));
        fancyButton2.setOnClickListener(this);
    }

    @Override // com.apk.f6
    public boolean isImmersionBarEnabled() {
        return false;
    }

    public final void j() {
        String m1006interface = Cgoto.m1006interface(this.f9877if);
        if (!TextUtils.isEmpty(m1006interface) || this.f9874else.getItemCount() > 0) {
            try {
                if (TextUtils.isEmpty(this.f9879this)) {
                    this.f9879this = String.valueOf(System.currentTimeMillis());
                }
                LitePal.deleteAll(CreateComicList.class, "bookListId = ?", this.f9879this);
                CreateComicList createComicList = new CreateComicList();
                createComicList.setBookListId(this.f9879this);
                createComicList.setTitle(m1006interface);
                createComicList.setIntro(this.f9875for.getText().toString().trim());
                createComicList.setForMen(this.f9878new.isChecked());
                createComicList.setCover(TextUtils.isEmpty(this.f9869break) ? "" : this.f9869break);
                List<ComicBean> data = this.f9874else.getData();
                if (data != null && data.size() > 0) {
                    createComicList.setBookCount(data.size());
                    for (ComicBean comicBean : data) {
                        String m3620do = this.f9874else.m3620do(comicBean.getId());
                        if (!TextUtils.isEmpty(m3620do)) {
                            comicBean.setDesc(m3620do);
                        }
                    }
                    createComicList.setBooks(Convert.toJson(data));
                }
                createComicList.setSaveTime(kg.m1495else());
                createComicList.save();
                ToastUtils.show((CharSequence) ze.q(R.string.create_element_save_success_txt));
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    public final void k(boolean z) {
        if (z) {
            this.f9878new.setChecked(true);
            this.f9880try.setChecked(false);
            return;
        }
        this.f9880try.setChecked(true);
        this.f9878new.setChecked(false);
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        if (i == 21001 && i2 == -1) {
            try {
                List list = (List) intent.getSerializableExtra("books");
                if (list == null || list.size() <= 0) {
                    return;
                }
                if (TextUtils.isEmpty(this.f9869break)) {
                    String img = ((ComicBean) list.get(0)).getImg();
                    this.f9869break = img;
                    this.f9874else.f9640do = img;
                }
                this.f9874else.addData((Collection) list);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        if (TextUtils.isEmpty(this.f9877if.getText().toString().trim()) && this.f9874else.getItemCount() <= 0) {
            super.onBackPressed();
        } else {
            ze.b0(this, ze.q(R.string.element_create_is_save_draft_txt), new Cfor(), null, true);
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        switch (view.getId()) {
            case R.id.create_element_add_shelf_txt /* 2131296677 */:
                Intent intent = new Intent(this, AddComicFromShelfActivity.class);
                CreateComicListAdapter createComicListAdapter = this.f9874else;
                if (createComicListAdapter != null && createComicListAdapter.getItemCount() > 0) {
                    intent.putExtra("books", (Serializable) this.f9874else.getData());
                }
                startActivityForResult(intent, 21001);
                return;
            case R.id.create_element_add_store_txt /* 2131296678 */:
                BookSearchActivity.k(this, this.f9874else.getData(), 21001);
                return;
            case R.id.create_element_formen_ck /* 2131296679 */:
                this.f9878new.setChecked(true);
                this.f9880try.setChecked(false);
                return;
            case R.id.create_element_forwomen_ck /* 2131296680 */:
                this.f9880try.setChecked(true);
                this.f9878new.setChecked(false);
                return;
            default:
                return;
        }
    }

    @Override // com.chad.library.adapter.base.BaseQuickAdapter.OnItemClickListener
    public void onItemClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
        try {
            ComicBean item = this.f9874else.getItem(i);
            if (item != null) {
                String img = item.getImg();
                this.f9869break = img;
                if (TextUtils.isEmpty(img)) {
                    this.f9869break = item.getId();
                }
                this.f9874else.f9640do = this.f9869break;
                this.f9874else.notifyDataSetChanged();
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        try {
            ze.m3170goto(this);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    @Override // com.apk.f6
    public void onItemMenuSelected(MenuItem menuItem) {
        switch (menuItem.getItemId()) {
            case R.id.menu_item_release /* 2131297172 */:
                try {
                    if (TextUtils.isEmpty(this.f9877if.getText().toString().trim())) {
                        ToastUtils.show((CharSequence) ze.q(R.string.element_please_input_title_txt));
                        return;
                    }
                    String trim = this.f9875for.getText().toString().trim();
                    if (trim.length() >= 10 && trim.length() <= 200) {
                        if (this.f9874else.getItemCount() == 0) {
                            ToastUtils.show((CharSequence) ze.q(R.string.element_please_add_book_txt));
                            return;
                        } else {
                            i();
                            return;
                        }
                    }
                    ToastUtils.show((CharSequence) ze.q(R.string.element_please_input_intro_txt));
                    return;
                } catch (Exception e) {
                    e.printStackTrace();
                    return;
                }
            case R.id.menu_item_save /* 2131297173 */:
                try {
                    j();
                    return;
                } catch (Exception e2) {
                    e2.printStackTrace();
                    return;
                }
            default:
                return;
        }
    }

    @Override // android.app.Activity
    public boolean onPrepareOptionsMenu(Menu menu) {
        if ("my_release".equals(getIntent().getStringExtra("type"))) {
            menu.findItem(R.id.menu_item_save).setVisible(false);
        }
        return super.onPrepareOptionsMenu(menu);
    }
}
