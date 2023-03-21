package com.biquge.ebook.app.ui.view;

import android.annotation.SuppressLint;
import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.BindView;
import butterknife.ButterKnife;
import butterknife.OnClick;
import com.apk.g1;
import com.apk.qc;
import com.apk.w0;
import com.apk.ze;
import com.biquge.ebook.app.adapter.ImageAdapter;
import com.biquge.ebook.app.adapter.ShelfMenuAdapter;
import com.biquge.ebook.app.bean.BookMenuItem;
import com.biquge.ebook.app.bean.CollectBook;
import com.biquge.ebook.app.widget.NightRecyclerView;
import com.biquge.ebook.app.widget.SwitchButton;
import com.lxj.xpopup.core.BottomPopupView;
import java.util.ArrayList;
import kimi.wuhends.ebooks.R;

@SuppressLint({"ViewConstructor"})
/* loaded from: classes8.dex */
public class BookMenuPopupView extends BottomPopupView {
    @BindView(R.id.dialog_menu_book_author_txt)
    public TextView authorTxt;
    @BindView(R.id.dialog_menu_book_detail_bt)
    public TextView detailTxt;

    /* renamed from: do  reason: not valid java name */
    public final CollectBook f7652do;

    /* renamed from: for  reason: not valid java name */
    public final g1 f7653for;
    @BindView(R.id.dialog_menu_book_image)
    public CoverImageView headView;

    /* renamed from: if  reason: not valid java name */
    public final boolean f7654if;
    @BindView(R.id.dialog_menu_book_recyclerview)
    public RecyclerView menuRecyclerView;
    @BindView(R.id.dialog_menu_book_name_txt)
    public TextView nameTxt;
    @BindView(R.id.dialog_menu_book_new_chapter_txt)
    public TextView newChapterTxt;

    public BookMenuPopupView(@NonNull Context context, CollectBook collectBook, g1 g1Var, boolean z) {
        super(context);
        this.f7652do = collectBook;
        this.f7653for = g1Var;
        this.f7654if = z;
    }

    /* renamed from: if  reason: not valid java name */
    public static BookMenuItem m3395if(int i, int i2, int i3) {
        return m3396this(i, i2, false, false, i3);
    }

    /* renamed from: this  reason: not valid java name */
    public static BookMenuItem m3396this(int i, int i2, boolean z, boolean z2, int i3) {
        return new BookMenuItem(i, ze.q(i2), z, z2, i3);
    }

    /* renamed from: break  reason: not valid java name */
    public void m3397break(int i) {
        SwitchButton switchButton;
        RecyclerView recyclerView = this.menuRecyclerView;
        if (recyclerView == null || (switchButton = (SwitchButton) recyclerView.findViewWithTag(String.valueOf(i))) == null) {
            return;
        }
        switchButton.toggle();
    }

    @Override // com.lxj.xpopup.core.BottomPopupView, com.lxj.xpopup.core.BasePopupView
    public int getImplLayoutId() {
        return R.layout.pop_novel_menu_layout;
    }

    @OnClick({R.id.dialog_menu_book_detail_bt, R.id.pop_cancel_txt})
    public void menuClick(View view) {
        g1 g1Var;
        if (view.getId() == R.id.dialog_menu_book_detail_bt && (g1Var = this.f7653for) != null) {
            g1Var.onData(-1);
        }
        dismiss();
    }

    @Override // com.lxj.xpopup.core.BasePopupView
    public void onCreate() {
        super.onCreate();
        ButterKnife.bind(this);
        this.menuRecyclerView.setLayoutManager(new GridLayoutManager(getContext(), 4));
        this.menuRecyclerView.setHasFixedSize(true);
        ImageView imageView = (ImageView) findViewById(R.id.item_book_shelf_new_flag_view);
        if (this.f7652do.isNew()) {
            imageView.setVisibility(0);
        } else {
            imageView.setVisibility(8);
        }
        boolean isLocalBook = this.f7652do.isLocalBook();
        boolean isWebSite = this.f7652do.isWebSite();
        ArrayList arrayList = new ArrayList();
        if (this.f7654if) {
            this.nameTxt.setText(this.f7652do.getGroupTitle());
            this.authorTxt.setText(this.f7652do.getGroupBookCount());
            this.newChapterTxt.setVisibility(8);
            this.headView.setVisibility(8);
            NightRecyclerView nightRecyclerView = (NightRecyclerView) findViewById(R.id.dialog_menu_book_bookgroup_icons);
            nightRecyclerView.setLayoutManager(new GridLayoutManager(getContext(), 2));
            nightRecyclerView.setHasFixedSize(true);
            nightRecyclerView.setNestedScrollingEnabled(false);
            nightRecyclerView.setAdapter(new ImageAdapter(this.f7652do.getGroupIcons(), true));
            nightRecyclerView.setVisibility(0);
            arrayList.add(m3396this(R.drawable.bs_lmenu_share, R.string.main_menu_pop_stick_group, true, !TextUtils.isEmpty(this.f7652do.getStickTime()), 0));
            arrayList.add(m3395if(R.drawable.bs_lmenu_rename, R.string.main_menu_pop_update_group_title, 1));
            arrayList.add(m3395if(R.drawable.bs_lmenu_group, R.string.main_menu_pop_discard_group, 2));
            arrayList.add(m3395if(R.drawable.bs_lmenu_detail, R.string.main_menu_pop_edit_group, 3));
        } else {
            this.nameTxt.setText(this.f7652do.getName());
            this.authorTxt.setText(this.f7652do.getAuthor());
            this.headView.setCover(this.f7652do);
            if (isLocalBook) {
                this.detailTxt.setVisibility(8);
                arrayList.add(m3396this(R.drawable.bs_lmenu_share, R.string.main_menu_pop_stick_book, true, !TextUtils.isEmpty(this.f7652do.getStickTime()), 0));
                arrayList.add(m3395if(R.drawable.bs_lmenu_dir, R.string.main_menu_pop_book_catalogue, 1));
                arrayList.add(m3395if(R.drawable.bs_lmenu_rename, R.string.main_menu_pop_book_rename, 2));
                arrayList.add(m3395if(R.drawable.bs_lmenu_del, R.string.main_menu_pop_book_delete, 3));
                arrayList.add(m3395if(R.drawable.bs_lmenu_group, R.string.main_menu_pop_book_group, 4));
            } else if (isWebSite) {
                if (!TextUtils.isEmpty(this.f7652do.getExternalUrl())) {
                    arrayList.add(m3396this(R.drawable.bs_lmenu_share, R.string.main_menu_pop_stick_book, true, !TextUtils.isEmpty(this.f7652do.getStickTime()), 0));
                    arrayList.add(m3395if(R.drawable.bs_lmenu_del, R.string.main_menu_pop_book_delete, 7));
                    arrayList.add(m3395if(R.drawable.bs_lmenu_share, R.string.main_menu_pop_book_share, 5));
                    arrayList.add(m3395if(R.drawable.bs_lmenu_group, R.string.main_menu_pop_book_group, 8));
                } else {
                    arrayList.add(m3396this(R.drawable.bs_lmenu_share, R.string.main_menu_pop_stick_book, true, !TextUtils.isEmpty(this.f7652do.getStickTime()), 0));
                    arrayList.add(m3395if(R.drawable.bs_lmenu_dir, R.string.main_menu_pop_book_catalogue, 2));
                    arrayList.add(m3395if(R.drawable.bs_lmenu_download, R.string.main_menu_pop_book_download, 4));
                    arrayList.add(m3395if(R.drawable.bs_lmenu_share, R.string.main_menu_pop_book_share, 5));
                    arrayList.add(m3395if(R.drawable.bs_lmenu_del, R.string.main_menu_pop_book_delete, 7));
                    arrayList.add(m3395if(R.drawable.bs_lmenu_group, R.string.main_menu_pop_book_group, 8));
                }
                this.detailTxt.setVisibility(8);
            } else {
                this.newChapterTxt.setText(ze.r(R.string.xml_new_placeholder_txt, this.f7652do.getLastCapterName()));
                arrayList.add(m3396this(R.drawable.bs_lmenu_share, R.string.main_menu_pop_stick_book, true, !TextUtils.isEmpty(this.f7652do.getStickTime()), 0));
                arrayList.add(m3395if(R.drawable.bs_lmenu_dir, R.string.main_menu_pop_book_catalogue, 2));
                if (w0.m2896throws()) {
                    arrayList.add(m3395if(R.drawable.bs_lmenu_recommend, R.string.main_menu_pop_book_comment, 3));
                }
                arrayList.add(m3395if(R.drawable.bs_lmenu_download, R.string.main_menu_pop_book_download, 4));
                arrayList.add(m3395if(R.drawable.bs_lmenu_share, R.string.main_menu_pop_book_share, 5));
                arrayList.add(m3395if(R.drawable.bs_lmenu_clear, R.string.main_menu_pop_book_clear_cache, 6));
                arrayList.add(m3395if(R.drawable.bs_lmenu_del, R.string.main_menu_pop_book_delete, 7));
                arrayList.add(m3395if(R.drawable.bs_lmenu_group, R.string.main_menu_pop_book_group, 8));
            }
        }
        ShelfMenuAdapter shelfMenuAdapter = new ShelfMenuAdapter(arrayList);
        this.menuRecyclerView.setAdapter(shelfMenuAdapter);
        shelfMenuAdapter.setOnItemClickListener(new qc(this, shelfMenuAdapter));
    }
}
