package com.manhua.ui.view;

import android.app.Activity;
import android.text.TextUtils;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ImageView;
import android.widget.ListAdapter;
import android.widget.TextView;
import androidx.annotation.NonNull;
import com.apk.eg;
import com.apk.ez;
import com.apk.f00;
import com.apk.h10;
import com.apk.oz;
import com.apk.r5;
import com.apk.z2;
import com.biquge.ebook.app.widget.pinnedheaderlistview.SectionPinListView;
import com.lxj.xpopup.core.DrawerPopupView;
import com.manhua.data.bean.ComicChapterBean;
import com.manhua.ui.widget.ComicReadMenuView;
import java.util.List;
import kimi.wuhends.ebooks.R;

/* loaded from: classes8.dex */
public class ComicReadDirPopView extends DrawerPopupView implements View.OnClickListener, AdapterView.OnItemClickListener {

    /* renamed from: break  reason: not valid java name */
    public View f10118break;

    /* renamed from: catch  reason: not valid java name */
    public TextView f10119catch;

    /* renamed from: class  reason: not valid java name */
    public SectionPinListView f10120class;

    /* renamed from: const  reason: not valid java name */
    public final Activity f10121const;

    /* renamed from: final  reason: not valid java name */
    public final String f10122final;

    /* renamed from: import  reason: not valid java name */
    public ez f10123import;

    /* renamed from: native  reason: not valid java name */
    public z2 f10124native;

    /* renamed from: public  reason: not valid java name */
    public final r5 f10125public;

    /* renamed from: super  reason: not valid java name */
    public final String f10126super;

    /* renamed from: this  reason: not valid java name */
    public ImageView f10127this;

    /* renamed from: throw  reason: not valid java name */
    public final oz f10128throw;

    /* renamed from: while  reason: not valid java name */
    public String f10129while;

    /* renamed from: com.manhua.ui.view.ComicReadDirPopView$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cdo extends r5 {
        public Cdo() {
        }

        @Override // com.apk.r5
        /* renamed from: else */
        public void mo2234else(List<ComicChapterBean> list) {
            ComicReadMenuView comicReadMenuView;
            if (list != null) {
                ez ezVar = ComicReadDirPopView.this.f10123import;
                if (ezVar != null) {
                    ezVar.f1147do = list;
                    ezVar.notifyDataSetChanged();
                    ComicReadDirPopView comicReadDirPopView = ComicReadDirPopView.this;
                    ez ezVar2 = comicReadDirPopView.f10123import;
                    String str = comicReadDirPopView.f10129while;
                    if (!str.equals(ezVar2.f1148for)) {
                        ezVar2.f1148for = str;
                        ezVar2.notifyDataSetChanged();
                    }
                    ComicReadDirPopView.this.m3637catch();
                }
                oz ozVar = ComicReadDirPopView.this.f10128throw;
                if (ozVar != null && (comicReadMenuView = ((h10) ozVar).f1669do.mMenuView) != null) {
                    comicReadMenuView.m3652final(list);
                }
            }
            ComicReadDirPopView comicReadDirPopView2 = ComicReadDirPopView.this;
            View view = comicReadDirPopView2.f10118break;
            if (view == null || view.getVisibility() == 8) {
                return;
            }
            comicReadDirPopView2.f10118break.setVisibility(8);
        }
    }

    public ComicReadDirPopView(@NonNull Activity activity, String str, String str2, String str3, oz ozVar) {
        super(activity);
        this.f10125public = new Cdo();
        this.f10121const = activity;
        this.f10122final = str;
        this.f10126super = str2;
        this.f10129while = str3;
        this.f10128throw = ozVar;
    }

    /* renamed from: break  reason: not valid java name */
    public final void m3636break(boolean z) {
        View view;
        if (z && (view = this.f10118break) != null && view.getVisibility() != 0) {
            this.f10118break.setVisibility(0);
        }
        z2 z2Var = this.f10124native;
        if (z2Var != null) {
            z2Var.m3140import(this.f10126super, true);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x0034  */
    /* JADX WARN: Removed duplicated region for block: B:31:? A[RETURN, SYNTHETIC] */
    /* renamed from: catch  reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void m3637catch() {
        /*
            r5 = this;
            com.apk.ez r0 = r5.f10123import
            if (r0 == 0) goto L3b
            int r0 = r0.getCount()
            if (r0 <= 0) goto L3b
            r0 = 0
            com.apk.ez r1 = r5.f10123import     // Catch: java.lang.Exception -> L2c
            int r1 = r1.getCount()     // Catch: java.lang.Exception -> L2c
            r2 = 0
        L12:
            if (r0 >= r1) goto L32
            com.apk.ez r3 = r5.f10123import     // Catch: java.lang.Exception -> L2a
            com.manhua.data.bean.ComicChapterBean r3 = r3.m681if(r0)     // Catch: java.lang.Exception -> L2a
            java.lang.String r3 = r3.getOid()     // Catch: java.lang.Exception -> L2a
            java.lang.String r4 = r5.f10129while     // Catch: java.lang.Exception -> L2a
            boolean r3 = r3.equals(r4)     // Catch: java.lang.Exception -> L2a
            if (r3 == 0) goto L27
            r2 = r0
        L27:
            int r0 = r0 + 1
            goto L12
        L2a:
            r0 = move-exception
            goto L2f
        L2c:
            r1 = move-exception
            r0 = r1
            r2 = 0
        L2f:
            r0.printStackTrace()
        L32:
            if (r2 <= 0) goto L3b
            com.biquge.ebook.app.widget.pinnedheaderlistview.SectionPinListView r0 = r5.f10120class
            int r2 = r2 + (-1)
            r0.setSelection(r2)
        L3b:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.manhua.ui.view.ComicReadDirPopView.m3637catch():void");
    }

    @Override // com.lxj.xpopup.core.BasePopupView
    public int getImplLayoutId() {
        return R.layout.popup_comic_dirs;
    }

    @Override // com.lxj.xpopup.core.BasePopupView
    public int getMaxWidth() {
        return (int) (eg.m614switch() * 0.9d);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (view.getId() == R.id.novel_dirs_back_image) {
            dismiss();
            oz ozVar = this.f10128throw;
            if (ozVar != null && ((h10) ozVar) == null) {
                throw null;
            }
        } else if (view.getId() == R.id.novel_dirs_actionbar_collection) {
            try {
                if (this.f10127this.getTag().equals("top")) {
                    this.f10120class.setSelection(0);
                    this.f10127this.setImageResource(R.drawable.reader_category);
                    this.f10127this.setTag("bottom");
                } else if (this.f10127this.getTag().equals("bottom")) {
                    this.f10120class.setSelection(this.f10123import.getCount());
                    this.f10127this.setImageResource(R.drawable.reader_category_asc);
                    this.f10127this.setTag("top");
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        } else if (view.getId() != R.id.dirs_location || TextUtils.isEmpty(this.f10129while)) {
        } else {
            m3637catch();
        }
    }

    @Override // com.lxj.xpopup.core.BasePopupView
    public void onCreate() {
        super.onCreate();
        this.f10118break = findViewById(R.id.dirs_loading_layout);
        this.f10119catch = (TextView) findViewById(R.id.novel_dirs_title_txt);
        this.f10120class = (SectionPinListView) findViewById(R.id.comic_novel_dirs_recyclerview);
        findViewById(R.id.novel_dirs_back_image).setOnClickListener(this);
        findViewById(R.id.novel_dirs_actionbar_collection).setOnClickListener(this);
        findViewById(R.id.dirs_location).setOnClickListener(this);
        ImageView imageView = (ImageView) findViewById(R.id.novel_dirs_actionbar_collection);
        this.f10127this = imageView;
        imageView.setImageResource(R.drawable.reader_category);
        this.f10127this.setOnClickListener(this);
        this.f10127this.setTag("bottom");
        this.f10119catch.setText(this.f10122final);
        ez ezVar = new ez(getContext(), this.f10120class);
        this.f10123import = ezVar;
        this.f10120class.setAdapter((ListAdapter) ezVar);
        this.f10120class.setOnItemClickListener(this);
        this.f10124native = new z2(this.f10121const, this.f10125public);
        m3636break(true);
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
        ComicChapterBean comicChapterBean = this.f10123import.f1147do.get(i);
        if (comicChapterBean == null || comicChapterBean.isGroup()) {
            return;
        }
        oz ozVar = this.f10128throw;
        if (ozVar != null) {
            h10 h10Var = (h10) ozVar;
            if (h10Var != null) {
                f00 f00Var = h10Var.f1669do.f9782const;
                f00Var.f1195try = comicChapterBean.getOid();
                f00Var.f1175else = 0;
                f00Var.h();
            } else {
                throw null;
            }
        }
        dismiss();
    }

    public void setReadChapterId(String str) {
        if (!str.equals(this.f10129while)) {
            this.f10129while = str;
        }
        ez ezVar = this.f10123import;
        if (ezVar != null) {
            String str2 = this.f10129while;
            if (!str2.equals(ezVar.f1148for)) {
                ezVar.f1148for = str2;
                ezVar.notifyDataSetChanged();
            }
        }
        m3637catch();
        m3636break(false);
    }
}
