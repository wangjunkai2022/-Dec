package com.manhua.ui.view;

import android.annotation.SuppressLint;
import android.content.Context;
import android.text.TextUtils;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.apk.e20;
import com.apk.f20;
import com.apk.g1;
import com.apk.w0;
import com.apk.ze;
import com.biquge.ebook.app.adapter.ImageAdapter;
import com.biquge.ebook.app.adapter.ShelfMenuAdapter;
import com.biquge.ebook.app.bean.BookMenuItem;
import com.biquge.ebook.app.ui.view.CoverImageView;
import com.biquge.ebook.app.widget.SwitchButton;
import com.lxj.xpopup.core.BottomPopupView;
import com.manhua.data.bean.ComicCollectBean;
import java.util.ArrayList;
import kimi.wuhends.ebooks.R;
@SuppressLint({"ViewConstructor"})
/* loaded from: classes8.dex */
public class ComicMenuPopupView extends BottomPopupView {

    /* renamed from: do  reason: not valid java name */
    public final ComicCollectBean f10114do;

    /* renamed from: for  reason: not valid java name */
    public final g1 f10115for;

    /* renamed from: if  reason: not valid java name */
    public final boolean f10116if;

    /* renamed from: new  reason: not valid java name */
    public RecyclerView f10117new;

    public ComicMenuPopupView(@NonNull Context context, ComicCollectBean comicCollectBean, g1 g1Var, boolean z) {
        super(context);
        this.f10114do = comicCollectBean;
        this.f10115for = g1Var;
        this.f10116if = z;
    }

    /* renamed from: if  reason: not valid java name */
    public static BookMenuItem m3633if(int i, int i2, int i3) {
        return m3634this(i, i2, false, false, i3);
    }

    /* renamed from: this  reason: not valid java name */
    public static BookMenuItem m3634this(int i, int i2, boolean z, boolean z2, int i3) {
        return new BookMenuItem(i, ze.q(i2), z, z2, i3);
    }

    /* renamed from: break  reason: not valid java name */
    public void m3635break(int i) {
        SwitchButton switchButton;
        RecyclerView recyclerView = this.f10117new;
        if (recyclerView == null || (switchButton = (SwitchButton) recyclerView.findViewWithTag(String.valueOf(i))) == null) {
            return;
        }
        switchButton.toggle();
    }

    @Override // com.lxj.xpopup.core.BottomPopupView, com.lxj.xpopup.core.BasePopupView
    public int getImplLayoutId() {
        return R.layout.pop_novel_menu_layout;
    }

    @Override // com.lxj.xpopup.core.BasePopupView
    public void onCreate() {
        super.onCreate();
        CoverImageView coverImageView = (CoverImageView) findViewById(R.id.dialog_menu_book_image);
        TextView textView = (TextView) findViewById(R.id.dialog_menu_book_name_txt);
        TextView textView2 = (TextView) findViewById(R.id.dialog_menu_book_author_txt);
        TextView textView3 = (TextView) findViewById(R.id.dialog_menu_book_new_chapter_txt);
        e20 e20Var = new e20(this);
        findViewById(R.id.pop_cancel_txt).setOnClickListener(e20Var);
        ((TextView) findViewById(R.id.dialog_menu_book_detail_bt)).setOnClickListener(e20Var);
        RecyclerView recyclerView = (RecyclerView) findViewById(R.id.dialog_menu_book_recyclerview);
        this.f10117new = recyclerView;
        recyclerView.setLayoutManager(new GridLayoutManager(getContext(), 4));
        this.f10117new.setHasFixedSize(true);
        ImageView imageView = (ImageView) findViewById(R.id.item_book_shelf_new_flag_view);
        if (this.f10114do.isNew()) {
            imageView.setVisibility(0);
        } else {
            imageView.setVisibility(8);
        }
        ArrayList arrayList = new ArrayList();
        if (this.f10116if) {
            textView.setText(this.f10114do.getGroupTitle());
            textView2.setText(this.f10114do.getGroupBookCount());
            textView3.setVisibility(8);
            coverImageView.setVisibility(8);
            RecyclerView recyclerView2 = (RecyclerView) findViewById(R.id.dialog_menu_book_bookgroup_icons);
            recyclerView2.setLayoutManager(new GridLayoutManager(getContext(), 2));
            recyclerView2.setHasFixedSize(true);
            recyclerView2.setNestedScrollingEnabled(false);
            recyclerView2.setAdapter(new ImageAdapter(this.f10114do.getGroupIcons(), false));
            recyclerView2.setVisibility(0);
            arrayList.add(m3634this(R.drawable.bs_lmenu_share, R.string.main_menu_pop_stick_book, true, !TextUtils.isEmpty(this.f10114do.getStickTime()), 0));
            arrayList.add(m3633if(R.drawable.bs_lmenu_rename, R.string.main_menu_pop_update_group_title, 1));
            arrayList.add(m3633if(R.drawable.bs_lmenu_group, R.string.main_menu_pop_discard_group, 2));
            arrayList.add(m3633if(R.drawable.bs_lmenu_detail, R.string.main_menu_pop_edit_group, 3));
        } else {
            textView.setText(this.f10114do.getName());
            textView2.setText(this.f10114do.getAuthor());
            coverImageView.setComicCover(this.f10114do);
            textView3.setText(ze.r(R.string.xml_new_placeholder_txt, this.f10114do.getLastCapterName()));
            arrayList.add(m3634this(R.drawable.bs_lmenu_share, R.string.main_menu_pop_stick_book, true, !TextUtils.isEmpty(this.f10114do.getStickTime()), 0));
            arrayList.add(m3633if(R.drawable.bs_lmenu_dir, R.string.main_menu_pop_book_catalogue, 2));
            if (w0.m2896throws()) {
                arrayList.add(m3633if(R.drawable.bs_lmenu_recommend, R.string.main_menu_pop_book_comment, 3));
            }
            arrayList.add(m3633if(R.drawable.bs_lmenu_download, R.string.main_menu_pop_book_download, 4));
            arrayList.add(m3633if(R.drawable.bs_lmenu_share, R.string.main_menu_pop_book_share, 5));
            arrayList.add(m3633if(R.drawable.bs_lmenu_clear, R.string.main_menu_pop_book_clear_cache, 6));
            arrayList.add(m3633if(R.drawable.bs_lmenu_del, R.string.main_menu_pop_book_delete, 7));
            arrayList.add(m3633if(R.drawable.bs_lmenu_group, R.string.main_menu_pop_book_group, 8));
        }
        ShelfMenuAdapter shelfMenuAdapter = new ShelfMenuAdapter(arrayList);
        this.f10117new.setAdapter(shelfMenuAdapter);
        shelfMenuAdapter.setOnItemClickListener(new f20(this, shelfMenuAdapter));
    }
}
