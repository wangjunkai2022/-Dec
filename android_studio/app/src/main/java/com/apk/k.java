package com.apk;

import android.content.Context;
import android.graphics.Color;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.biquge.ebook.app.app.AppContext;
import com.biquge.ebook.app.bean.ChapterBean;
import java.util.List;
import kimi.wuhends.ebooks.R;

/* compiled from: ChapterDirAdapter.java */
/* loaded from: classes8.dex */
public class k extends bi {

    /* renamed from: case  reason: not valid java name */
    public final int f2436case;

    /* renamed from: do  reason: not valid java name */
    public List<ChapterBean> f2437do;

    /* renamed from: else  reason: not valid java name */
    public int f2438else;

    /* renamed from: for  reason: not valid java name */
    public String f2439for;

    /* renamed from: goto  reason: not valid java name */
    public int f2440goto;

    /* renamed from: if  reason: not valid java name */
    public final LayoutInflater f2441if;

    /* renamed from: new  reason: not valid java name */
    public int f2442new;

    /* renamed from: try  reason: not valid java name */
    public int f2443try;

    /* compiled from: ChapterDirAdapter.java */
    /* renamed from: com.apk.k$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public static class Cdo {

        /* renamed from: do  reason: not valid java name */
        public final TextView f2444do;

        /* renamed from: if  reason: not valid java name */
        public final TextView f2445if;

        public Cdo(View view) {
            this.f2444do = (TextView) view.findViewById(R.id.item_novel_chapter_name);
            this.f2445if = (TextView) view.findViewById(R.id.item_novel_chapter_image);
        }
    }

    /* compiled from: ChapterDirAdapter.java */
    /* renamed from: com.apk.k$if  reason: invalid class name */
    /* loaded from: classes8.dex */
    public static class Cif {

        /* renamed from: do  reason: not valid java name */
        public final TextView f2446do;

        public Cif(View view) {
            this.f2446do = (TextView) view;
        }
    }

    public k(Context context) {
        this.f2441if = LayoutInflater.from(context);
        if (AppContext.f6392case.f6395if) {
            this.f2436case = ze.p(R.color.colorAccent);
        } else {
            this.f2436case = lq0.m1660do(context.getApplicationContext(), tr0.m2617do(R.color.colorAccent));
        }
        this.f2438else = lq0.m1660do(context.getApplicationContext(), tr0.m2617do(R.color.color_333333));
        this.f2440goto = lq0.m1660do(context.getApplicationContext(), tr0.m2617do(R.color.color_999999));
    }

    @Override // com.apk.bi
    /* renamed from: do */
    public boolean mo178do(int i) {
        return getItemViewType(i) == 0;
    }

    /* renamed from: for  reason: not valid java name */
    public void m1400for(List<ChapterBean> list) {
        this.f2437do = list;
        notifyDataSetChanged();
    }

    @Override // android.widget.Adapter
    public int getCount() {
        List<ChapterBean> list = this.f2437do;
        if (list == null) {
            return 0;
        }
        return list.size();
    }

    @Override // android.widget.Adapter
    public Object getItem(int i) {
        return this.f2437do.get(i);
    }

    @Override // android.widget.Adapter
    public long getItemId(int i) {
        return i;
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public int getItemViewType(int i) {
        return this.f2437do.get(i).isGroup() ? 0 : 1;
    }

    @Override // android.widget.Adapter
    public View getView(int i, View view, ViewGroup viewGroup) {
        Cdo cdo;
        Cif cif;
        if (getItemViewType(i) == 0) {
            if (view == null) {
                view = this.f2441if.inflate(R.layout.include_novel_titlebar_layout, viewGroup, false);
                cif = new Cif(view);
                view.setTag(cif);
            } else {
                cif = (Cif) view.getTag();
            }
            int i2 = this.f2443try;
            if (i2 != 0) {
                cif.f2446do.setBackgroundColor(i2);
            }
            int i3 = this.f2442new;
            if (i3 != 0) {
                cif.f2446do.setTextColor(i3);
            }
            cif.f2446do.setText(this.f2437do.get(i).getName());
            return view;
        } else if (getItemViewType(i) == 1) {
            if (view == null) {
                view = this.f2441if.inflate(R.layout.item_novel_chapter_view, viewGroup, false);
                cdo = new Cdo(view);
                view.setTag(cdo);
            } else {
                cdo = (Cdo) view.getTag();
            }
            ChapterBean chapterBean = this.f2437do.get(i);
            cdo.f2444do.setText(chapterBean.getName());
            if (chapterBean.getOid().equals(this.f2439for)) {
                cdo.f2444do.setTextColor(this.f2436case);
            } else if (chapterBean.isHasContent()) {
                cdo.f2444do.setTextColor(this.f2438else);
            } else {
                cdo.f2444do.setTextColor(this.f2440goto);
            }
            if (chapterBean.isCache()) {
                cdo.f2445if.setVisibility(0);
                return view;
            }
            cdo.f2445if.setVisibility(8);
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
    public ChapterBean m1401if(int i) {
        return this.f2437do.get(i);
    }

    /* renamed from: new  reason: not valid java name */
    public void m1402new(String str, boolean z) {
        if (str.equals(this.f2439for)) {
            return;
        }
        this.f2439for = str;
        if (z) {
            this.f2442new = Color.parseColor("#FFFFFF");
            this.f2443try = Color.parseColor("#1C1C1C");
            this.f2438else = Color.parseColor("#999999");
            this.f2440goto = Color.parseColor("#99999999");
        } else {
            this.f2442new = Color.parseColor("#333333");
            this.f2443try = Color.parseColor("#CEC8C0");
            this.f2438else = ze.p(R.color.color_333333);
            this.f2440goto = ze.p(R.color.color_999999);
        }
        notifyDataSetChanged();
    }
}
