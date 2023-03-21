package com.biquge.ebook.app.ui.activity;

import android.content.Intent;
import android.text.TextUtils;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.widget.EditText;
import androidx.core.app.NotificationCompatJellybean;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.BindView;
import com.apk.Cgoto;
import com.apk.f6;
import com.apk.ft;
import com.apk.k4;
import com.apk.kg;
import com.apk.lq0;
import com.apk.n2;
import com.apk.tr0;
import com.apk.u5;
import com.apk.v3;
import com.apk.w0;
import com.apk.x4;
import com.apk.ze;
import com.biquge.ebook.app.adapter.CreateBookListAdapter;
import com.biquge.ebook.app.bean.Book;
import com.biquge.ebook.app.bean.CreateBookList;
import com.biquge.ebook.app.helper.req.convert.Convert;
import com.biquge.ebook.app.widget.AppRadioButton;
import com.biquge.ebook.app.widget.fancybuttons.FancyButton;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.hjq.toast.ToastUtils;
import java.io.Serializable;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import kimi.wuhends.ebooks.R;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import org.litepal.LitePal;

/* loaded from: classes8.dex */
public class CreateBookListActivity extends f6 implements View.OnClickListener, BaseQuickAdapter.OnItemClickListener {

    /* renamed from: break  reason: not valid java name */
    public v3 f6598break;

    /* renamed from: case  reason: not valid java name */
    public CreateBookListAdapter f6599case;

    /* renamed from: catch  reason: not valid java name */
    public final u5 f6600catch = new Cif();

    /* renamed from: do  reason: not valid java name */
    public View f6601do;

    /* renamed from: else  reason: not valid java name */
    public String f6602else;

    /* renamed from: for  reason: not valid java name */
    public EditText f6603for;

    /* renamed from: goto  reason: not valid java name */
    public String f6604goto;

    /* renamed from: if  reason: not valid java name */
    public EditText f6605if;
    @BindView(R.id.rv_list)
    public RecyclerView mRecyclerView;

    /* renamed from: new  reason: not valid java name */
    public AppRadioButton f6606new;

    /* renamed from: this  reason: not valid java name */
    public String f6607this;

    /* renamed from: try  reason: not valid java name */
    public AppRadioButton f6608try;

    /* renamed from: com.biquge.ebook.app.ui.activity.CreateBookListActivity$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cdo implements BaseQuickAdapter.OnItemChildClickListener {
        public Cdo() {
        }

        @Override // com.chad.library.adapter.base.BaseQuickAdapter.OnItemChildClickListener
        public void onItemChildClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
            int id = view.getId();
            if (id == R.id.item_create_cancel_input_image) {
                try {
                    CreateBookListAdapter createBookListAdapter = CreateBookListActivity.this.f6599case;
                    String id2 = CreateBookListActivity.this.f6599case.getItem(i).getId();
                    Map<String, String> map = createBookListAdapter.f6349if;
                    if (map != null) {
                        map.remove(id2);
                    }
                    CreateBookListActivity.this.f6599case.notifyDataSetChanged();
                } catch (Exception e) {
                    e.printStackTrace();
                }
            } else if (id != R.id.item_delete_bt) {
            } else {
                try {
                    Book item = CreateBookListActivity.this.f6599case.getItem(i);
                    if (item != null && item.getImg().equals(CreateBookListActivity.this.f6607this)) {
                        int i2 = i + 1;
                        if (i2 < CreateBookListActivity.this.f6599case.getItemCount() - 1) {
                            CreateBookListActivity.this.f6607this = CreateBookListActivity.this.f6599case.getItem(i2).getImg();
                        } else {
                            CreateBookListActivity.this.f6607this = null;
                        }
                        CreateBookListActivity.this.f6599case.f6348do = CreateBookListActivity.this.f6607this;
                    }
                    CreateBookListActivity.this.f6599case.remove(i);
                    CreateBookListActivity.this.f6599case.notifyDataSetChanged();
                } catch (Exception e2) {
                    e2.printStackTrace();
                }
            }
        }
    }

    /* renamed from: com.biquge.ebook.app.ui.activity.CreateBookListActivity$for  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cfor implements ft {
        public Cfor() {
        }

        @Override // com.apk.ft
        public void onClick() {
            CreateBookListActivity.this.setResult(-1);
            CreateBookListActivity.this.finish();
        }
    }

    /* renamed from: com.biquge.ebook.app.ui.activity.CreateBookListActivity$if  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cif extends u5 {
        public Cif() {
        }

        @Override // com.apk.u5
        /* renamed from: while */
        public void mo2691while(String str) {
            CreateBookListActivity.this.setResult(-1);
            CreateBookListActivity.this.finish();
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
        if (this.f6598break != null) {
            JSONArray jSONArray = new JSONArray();
            Iterator<Book> it = this.f6599case.getData().iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                Book next = it.next();
                JSONObject jSONObject = new JSONObject();
                try {
                    jSONObject.put("bookid", next.getId());
                    String m3281do = this.f6599case.m3281do(next.getId());
                    jSONObject.put("description", TextUtils.isEmpty(m3281do) ? "" : m3281do);
                } catch (Exception e) {
                    e.printStackTrace();
                }
                jSONArray.put(jSONObject);
            }
            v3 v3Var = this.f6598break;
            String str = this.f6604goto;
            String str2 = "my_release".equals(this.f6602else) ? this.f6604goto : "";
            String m1006interface = Cgoto.m1006interface(this.f6605if);
            String m1006interface2 = Cgoto.m1006interface(this.f6603for);
            boolean isChecked = this.f6606new.isChecked();
            String str3 = this.f6607this;
            if (v3Var != null) {
                HashMap m1012public = Cgoto.m1012public("action", "booklist", "listid", str2);
                m1012public.put(NotificationCompatJellybean.KEY_TITLE, m1006interface);
                m1012public.put("description", m1006interface2);
                m1012public.put("isforman", isChecked + "");
                m1012public.put("cover", str3);
                m1012public.put("jsondata", jSONArray.toString());
                x4.m2951default(Cgoto.m988break(new StringBuilder(), "/UserListAction.aspx"), m1012public, new k4(v3Var, str, isChecked, str3, m1006interface, m1006interface2, jSONArray));
                return;
            }
            throw null;
        }
    }

    @Override // com.apk.f6
    public void initData() {
        List<Book> i0;
        Intent intent = getIntent();
        this.f6602else = intent.getStringExtra("type");
        this.f6604goto = intent.getStringExtra("bookListId");
        this.f6607this = intent.getStringExtra("cover");
        this.f6598break = new v3(this, this.f6600catch);
        CreateBookListAdapter createBookListAdapter = new CreateBookListAdapter();
        this.f6599case = createBookListAdapter;
        this.mRecyclerView.setAdapter(createBookListAdapter);
        this.f6599case.addHeaderView(this.f6601do);
        if ("my_release".equals(this.f6602else)) {
            try {
                invalidateOptionsMenu();
                CreateBookList createBookList = (CreateBookList) intent.getSerializableExtra("createBookList");
                if (createBookList != null) {
                    try {
                        this.f6604goto = createBookList.getBookListId();
                        this.f6605if.setText(createBookList.getTitle());
                        this.f6603for.setText(createBookList.getIntro());
                        this.f6607this = createBookList.getCover();
                        k(createBookList.isForMen());
                        if (!TextUtils.isEmpty(createBookList.getBooks())) {
                            JSONArray jSONArray = new JSONArray(createBookList.getBooks());
                            int length = jSONArray.length();
                            for (int i = 0; i < length; i++) {
                                this.f6599case.addData((CreateBookListAdapter) n2.m(jSONArray.optJSONObject(i)));
                            }
                        }
                    } catch (JSONException e) {
                        e.printStackTrace();
                    }
                }
                this.f6605if.setEnabled(false);
                this.f6605if.setBackgroundColor(ze.p(R.color.color_e7e7e7));
                this.f6605if.setTextColor(ze.p(R.color.color_CEC8C0));
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        } else if ("my_draftBox".equals(this.f6602else)) {
            try {
                CreateBookList createBookList2 = (CreateBookList) LitePal.where("bookListId = ?", this.f6604goto).findFirst(CreateBookList.class);
                if (createBookList2 != null) {
                    try {
                        this.f6604goto = createBookList2.getBookListId();
                        if (!TextUtils.isEmpty(createBookList2.getTitle())) {
                            this.f6605if.setText(createBookList2.getTitle());
                            this.f6605if.setSelection(createBookList2.getTitle().length());
                        }
                        this.f6603for.setText(createBookList2.getIntro());
                        this.f6607this = createBookList2.getCover();
                        k(createBookList2.isForMen());
                        if (!TextUtils.isEmpty(createBookList2.getBooks()) && (i0 = ze.i0(new JSONArray(createBookList2.getBooks()))) != null) {
                            for (Book book : i0) {
                                CreateBookListAdapter createBookListAdapter2 = this.f6599case;
                                String id = book.getId();
                                String desc = book.getDesc();
                                if (createBookListAdapter2.f6349if == null) {
                                    createBookListAdapter2.f6349if = new HashMap();
                                }
                                createBookListAdapter2.f6349if.put(id, desc);
                            }
                            this.f6599case.addData((Collection) i0);
                        }
                    } catch (JSONException e3) {
                        e3.printStackTrace();
                    }
                }
            } catch (Exception e4) {
                e4.printStackTrace();
            }
        }
        CreateBookListAdapter createBookListAdapter3 = this.f6599case;
        createBookListAdapter3.f6348do = this.f6607this;
        createBookListAdapter3.setOnItemClickListener(this);
        this.f6599case.setOnItemChildClickListener(new Cdo());
    }

    @Override // com.apk.f6
    public void initView() {
        setWindowStatusBarColorValue(this, lq0.m1660do(getApplicationContext(), tr0.m2617do(R.color.colorPrimaryDark)));
        initTopBarOnlyTitle(R.id.activity_create_element_actionbar, R.string.element_create_element_txt);
        this.mRecyclerView.setHasFixedSize(true);
        ze.m3165else(this.mRecyclerView);
        this.mRecyclerView.setLayoutManager(new LinearLayoutManager(this));
        View inflate = View.inflate(this, R.layout.include_create_book_header_layout, null);
        this.f6601do = inflate;
        this.f6605if = (EditText) inflate.findViewById(R.id.create_element_title_et);
        this.f6603for = (EditText) this.f6601do.findViewById(R.id.create_element_intro_et);
        this.f6606new = (AppRadioButton) this.f6601do.findViewById(R.id.create_element_formen_ck);
        this.f6608try = (AppRadioButton) this.f6601do.findViewById(R.id.create_element_forwomen_ck);
        k(w0.m2881import());
        this.f6606new.setOnClickListener(this);
        this.f6608try.setOnClickListener(this);
        FancyButton fancyButton = (FancyButton) this.f6601do.findViewById(R.id.create_element_add_shelf_txt);
        fancyButton.setBorderColor(tr0.m2617do(R.color.colorPrimary));
        fancyButton.setOnClickListener(this);
        FancyButton fancyButton2 = (FancyButton) this.f6601do.findViewById(R.id.create_element_add_store_txt);
        fancyButton2.setBorderColor(tr0.m2617do(R.color.colorPrimary));
        fancyButton2.setOnClickListener(this);
    }

    @Override // com.apk.f6
    public boolean isImmersionBarEnabled() {
        return false;
    }

    @Override // com.apk.f6
    public boolean isTouchHideKeybord() {
        return true;
    }

    public final void j() {
        String m1006interface = Cgoto.m1006interface(this.f6605if);
        if (!TextUtils.isEmpty(m1006interface) || this.f6599case.getItemCount() > 0) {
            try {
                if (TextUtils.isEmpty(this.f6604goto)) {
                    this.f6604goto = String.valueOf(System.currentTimeMillis());
                }
                LitePal.deleteAll(CreateBookList.class, "bookListId = ?", this.f6604goto);
                CreateBookList createBookList = new CreateBookList();
                createBookList.setBookListId(this.f6604goto);
                createBookList.setTitle(m1006interface);
                createBookList.setIntro(this.f6603for.getText().toString().trim());
                createBookList.setForMen(this.f6606new.isChecked());
                createBookList.setCover(TextUtils.isEmpty(this.f6607this) ? "" : this.f6607this);
                List<Book> data = this.f6599case.getData();
                if (data != null && data.size() > 0) {
                    createBookList.setBookCount(data.size());
                    for (Book book : data) {
                        String m3281do = this.f6599case.m3281do(book.getId());
                        if (!TextUtils.isEmpty(m3281do)) {
                            book.setDesc(m3281do);
                        }
                    }
                    createBookList.setBooks(Convert.toJson(data));
                }
                createBookList.setSaveTime(kg.m1495else());
                createBookList.save();
                ToastUtils.show((CharSequence) ze.q(R.string.create_element_save_success_txt));
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    public final void k(boolean z) {
        if (z) {
            this.f6606new.setChecked(true);
            this.f6608try.setChecked(false);
            return;
        }
        this.f6608try.setChecked(true);
        this.f6606new.setChecked(false);
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
                if (TextUtils.isEmpty(this.f6607this)) {
                    String img = ((Book) list.get(0)).getImg();
                    this.f6607this = img;
                    this.f6599case.f6348do = img;
                }
                this.f6599case.addData((Collection) list);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        if (TextUtils.isEmpty(this.f6605if.getText().toString().trim()) && this.f6599case.getItemCount() <= 0) {
            super.onBackPressed();
        } else {
            ze.b0(this, ze.q(R.string.element_create_is_save_draft_txt), new Cfor(), null, true);
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        switch (view.getId()) {
            case R.id.create_element_add_shelf_txt /* 2131296677 */:
                Intent intent = new Intent(this, AddBookFromShelfActivity.class);
                CreateBookListAdapter createBookListAdapter = this.f6599case;
                if (createBookListAdapter != null && createBookListAdapter.getItemCount() > 0) {
                    intent.putExtra("books", (Serializable) this.f6599case.getData());
                }
                startActivityForResult(intent, 21001);
                return;
            case R.id.create_element_add_store_txt /* 2131296678 */:
                BookSearchActivity.j(this, this.f6599case.getData(), 21001);
                return;
            case R.id.create_element_formen_ck /* 2131296679 */:
                this.f6606new.setChecked(true);
                this.f6608try.setChecked(false);
                return;
            case R.id.create_element_forwomen_ck /* 2131296680 */:
                this.f6608try.setChecked(true);
                this.f6606new.setChecked(false);
                return;
            default:
                return;
        }
    }

    @Override // com.chad.library.adapter.base.BaseQuickAdapter.OnItemClickListener
    public void onItemClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
        try {
            Book item = this.f6599case.getItem(i);
            if (item != null) {
                String img = item.getImg();
                this.f6607this = img;
                if (TextUtils.isEmpty(img)) {
                    this.f6607this = item.getId();
                }
                this.f6599case.f6348do = this.f6607this;
                this.f6599case.notifyDataSetChanged();
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
                    if (TextUtils.isEmpty(this.f6605if.getText().toString().trim())) {
                        ToastUtils.show((CharSequence) ze.q(R.string.element_please_input_title_txt));
                        return;
                    }
                    String trim = this.f6603for.getText().toString().trim();
                    if (trim.length() >= 10 && trim.length() <= 200) {
                        if (this.f6599case.getItemCount() == 0) {
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
