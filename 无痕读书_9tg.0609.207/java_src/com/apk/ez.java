package com.apk;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.biquge.ebook.app.app.AppContext;
import com.biquge.ebook.app.widget.pinnedheaderlistview.SectionPinListView;
import com.manhua.data.bean.ComicChapterBean;
import java.util.List;
import kimi.wuhends.ebooks.R;
/* compiled from: ComicChapterDirAdapter.java */
/* loaded from: classes8.dex */
public class ez extends bi {

    /* renamed from: case  reason: not valid java name */
    public final int f1146case;

    /* renamed from: do  reason: not valid java name */
    public List<ComicChapterBean> f1147do;

    /* renamed from: for  reason: not valid java name */
    public String f1148for;

    /* renamed from: if  reason: not valid java name */
    public final LayoutInflater f1149if;

    /* renamed from: new  reason: not valid java name */
    public final int f1150new;

    /* renamed from: try  reason: not valid java name */
    public final int f1151try;

    /* compiled from: ComicChapterDirAdapter.java */
    /* renamed from: com.apk.ez$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public static class Cdo {

        /* renamed from: do  reason: not valid java name */
        public final TextView f1152do;

        /* renamed from: if  reason: not valid java name */
        public final TextView f1153if;

        public Cdo(View view) {
            this.f1152do = (TextView) view.findViewById(R.id.item_novel_chapter_name);
            this.f1153if = (TextView) view.findViewById(R.id.item_novel_chapter_image);
        }
    }

    /* compiled from: ComicChapterDirAdapter.java */
    /* renamed from: com.apk.ez$if  reason: invalid class name */
    /* loaded from: classes8.dex */
    public static class Cif {

        /* renamed from: do  reason: not valid java name */
        public final TextView f1154do;

        public Cif(View view) {
            this.f1154do = (TextView) view;
        }
    }

    public ez(Context context, SectionPinListView sectionPinListView) {
        this.f1149if = LayoutInflater.from(context);
        if (AppContext.f6392case.f6395if) {
            this.f1150new = ze.p(R.color.colorAccent);
        } else {
            this.f1150new = lq0.m1660do(context.getApplicationContext(), tr0.m2617do(R.color.colorAccent));
        }
        this.f1146case = context.getResources().getColor(R.color.color_3F3F3F);
        this.f1151try = context.getResources().getColor(R.color.color_999999);
    }

    @Override // com.apk.bi
    /* renamed from: do */
    public boolean mo178do(int i) {
        return getItemViewType(i) == 0;
    }

    @Override // android.widget.Adapter
    public int getCount() {
        List<ComicChapterBean> list = this.f1147do;
        if (list == null) {
            return 0;
        }
        return list.size();
    }

    @Override // android.widget.Adapter
    public Object getItem(int i) {
        return this.f1147do.get(i);
    }

    @Override // android.widget.Adapter
    public long getItemId(int i) {
        return i;
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public int getItemViewType(int i) {
        return this.f1147do.get(i).isGroup() ? 0 : 1;
    }

    @Override // android.widget.Adapter
    public View getView(int i, View view, ViewGroup viewGroup) {
        Cdo cdo;
        Cif cif;
        if (getItemViewType(i) == 0) {
            if (view == null) {
                view = this.f1149if.inflate(R.layout.include_novel_titlebar_layout, viewGroup, false);
                cif = new Cif(view);
                view.setTag(cif);
            } else {
                cif = (Cif) view.getTag();
            }
            cif.f1154do.setText(this.f1147do.get(i).getName());
            return view;
        } else if (getItemViewType(i) == 1) {
            if (view == null) {
                view = this.f1149if.inflate(R.layout.comic_item_novel_chapter_view, viewGroup, false);
                cdo = new Cdo(view);
                view.setTag(cdo);
            } else {
                cdo = (Cdo) view.getTag();
            }
            ComicChapterBean comicChapterBean = this.f1147do.get(i);
            cdo.f1152do.setText(comicChapterBean.getName());
            if (comicChapterBean.getOid().equals(this.f1148for)) {
                cdo.f1152do.setTextColor(this.f1150new);
            } else if (comicChapterBean.isHasContent()) {
                cdo.f1152do.setTextColor(this.f1146case);
            } else {
                cdo.f1152do.setTextColor(this.f1151try);
            }
            if (comicChapterBean.isCache()) {
                cdo.f1153if.setVisibility(0);
                return view;
            }
            cdo.f1153if.setVisibility(8);
            return view;
        } else {
            return null;
        }
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public int getViewTypeCount() {
        return 2;
    }

    /* renamed from: if  reason: not valid java name */
    public ComicChapterBean m681if(int i) {
        return this.f1147do.get(i);
    }
}
