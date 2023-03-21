package com.biquge.ebook.app.ui.view;

import android.app.Activity;
import android.content.res.Resources;
import android.graphics.Color;
import android.text.TextUtils;
import android.view.View;
import android.widget.AdapterView;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.apk.ad;
import com.apk.b1;
import com.apk.eg;
import com.apk.h1;
import com.apk.k;
import com.apk.n2;
import com.apk.u5;
import com.apk.v3;
import com.apk.ze;
import com.biquge.ebook.app.adapter.BookMarkAdapter;
import com.biquge.ebook.app.bean.BookMark;
import com.biquge.ebook.app.bean.ChapterBean;
import com.biquge.ebook.app.widget.pinnedheaderlistview.SectionPinListView;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.lxj.xpopup.core.DrawerPopupView;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import kimi.wuhends.ebooks.R;
/* loaded from: classes8.dex */
public class NovelDirChapterPopup extends DrawerPopupView implements View.OnClickListener, AdapterView.OnItemClickListener, BaseQuickAdapter.OnItemLongClickListener, BaseQuickAdapter.OnItemClickListener {

    /* renamed from: abstract  reason: not valid java name */
    public int f7724abstract;

    /* renamed from: break  reason: not valid java name */
    public TextView f7725break;

    /* renamed from: catch  reason: not valid java name */
    public ImageView f7726catch;

    /* renamed from: class  reason: not valid java name */
    public TextView f7727class;

    /* renamed from: const  reason: not valid java name */
    public TextView f7728const;

    /* renamed from: continue  reason: not valid java name */
    public Activity f7729continue;

    /* renamed from: default  reason: not valid java name */
    public Button f7730default;

    /* renamed from: extends  reason: not valid java name */
    public RecyclerView f7731extends;

    /* renamed from: final  reason: not valid java name */
    public SectionPinListView f7732final;

    /* renamed from: finally  reason: not valid java name */
    public LinearLayout f7733finally;

    /* renamed from: import  reason: not valid java name */
    public final String f7734import;

    /* renamed from: native  reason: not valid java name */
    public String f7735native;

    /* renamed from: package  reason: not valid java name */
    public BookMarkAdapter f7736package;

    /* renamed from: private  reason: not valid java name */
    public int f7737private;

    /* renamed from: public  reason: not valid java name */
    public final h1 f7738public;

    /* renamed from: return  reason: not valid java name */
    public boolean f7739return;

    /* renamed from: static  reason: not valid java name */
    public k f7740static;

    /* renamed from: strictfp  reason: not valid java name */
    public v3 f7741strictfp;

    /* renamed from: super  reason: not valid java name */
    public View f7742super;

    /* renamed from: switch  reason: not valid java name */
    public LinearLayout f7743switch;

    /* renamed from: this  reason: not valid java name */
    public LinearLayout f7744this;

    /* renamed from: throw  reason: not valid java name */
    public FrameLayout f7745throw;

    /* renamed from: throws  reason: not valid java name */
    public Button f7746throws;

    /* renamed from: volatile  reason: not valid java name */
    public final u5 f7747volatile;

    /* renamed from: while  reason: not valid java name */
    public final String f7748while;

    /* renamed from: com.biquge.ebook.app.ui.view.NovelDirChapterPopup$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cdo extends u5 {
        public Cdo() {
        }

        @Override // com.apk.u5
        /* renamed from: goto */
        public void mo2678goto(List<ChapterBean> list) {
            if (list != null) {
                k kVar = NovelDirChapterPopup.this.f7740static;
                if (kVar != null) {
                    kVar.m1400for(list);
                    NovelDirChapterPopup novelDirChapterPopup = NovelDirChapterPopup.this;
                    novelDirChapterPopup.f7740static.m1402new(novelDirChapterPopup.f7735native, novelDirChapterPopup.f7739return);
                    NovelDirChapterPopup.this.m3414final();
                    TextView textView = NovelDirChapterPopup.this.f7727class;
                    if (textView != null) {
                        textView.setText(ze.q(R.string.book_catalogue_txt) + NovelDirChapterPopup.this.f7740static.getCount());
                    }
                }
                NovelDirChapterPopup novelDirChapterPopup2 = NovelDirChapterPopup.this;
                h1 h1Var = novelDirChapterPopup2.f7738public;
                if (h1Var != null) {
                    h1Var.mo1052new(list, novelDirChapterPopup2.f7735native);
                }
            }
            NovelDirChapterPopup novelDirChapterPopup3 = NovelDirChapterPopup.this;
            View view = novelDirChapterPopup3.f7742super;
            if (view == null || view.getVisibility() == 8) {
                return;
            }
            novelDirChapterPopup3.f7742super.setVisibility(8);
        }
    }

    public NovelDirChapterPopup(@NonNull Activity activity, String str, String str2, String str3, h1 h1Var, boolean z) {
        super(activity);
        this.f7747volatile = new Cdo();
        this.f7729continue = activity;
        this.f7748while = str;
        this.f7734import = str2;
        this.f7735native = str3;
        this.f7738public = h1Var;
        this.f7739return = z;
    }

    /* renamed from: break  reason: not valid java name */
    public void m3410break() {
        try {
            this.f7733finally.setVisibility(8);
            if (this.f7736package != null) {
                this.f7736package.m3280if(false);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: catch  reason: not valid java name */
    public final void m3411catch() {
        try {
            if (this.f7739return) {
                if (this.f7744this != null && this.f7725break != null) {
                    this.f7744this.setBackgroundColor(Color.parseColor("#333333"));
                    this.f7725break.setTextColor(Color.parseColor("#888888"));
                    this.f7737private = Color.parseColor("#A1A1A1");
                    this.f7724abstract = Color.parseColor("#888888");
                    this.f7733finally.setBackgroundColor(Color.parseColor("#1D1D1D"));
                }
            } else if (this.f7744this != null && this.f7725break != null) {
                this.f7744this.setBackgroundColor(ze.p(R.color.main_bg_color));
                this.f7725break.setTextColor(ze.p(R.color.color_333333));
                this.f7737private = getResources().getColor(R.color.color_333333);
                this.f7724abstract = getResources().getColor(R.color.color_666666);
                this.f7733finally.setBackgroundColor(getResources().getColor(R.color.main_bg_color));
            }
        } catch (Resources.NotFoundException e) {
            e.printStackTrace();
        }
    }

    /* renamed from: class  reason: not valid java name */
    public final void m3412class(boolean z) {
        View view;
        if (z && (view = this.f7742super) != null && view.getVisibility() != 0) {
            this.f7742super.setVisibility(0);
        }
        v3 v3Var = this.f7741strictfp;
        if (v3Var != null) {
            v3Var.m2770static(this.f7734import, true);
        }
    }

    /* renamed from: const  reason: not valid java name */
    public final void m3413const(int i) {
        if (i == 0) {
            this.f7746throws.setText(ze.q(R.string.main_delete));
        } else {
            this.f7746throws.setText(ze.r(R.string.main_delete_batch, String.valueOf(i)));
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x0034  */
    /* JADX WARN: Removed duplicated region for block: B:31:? A[RETURN, SYNTHETIC] */
    /* renamed from: final  reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m3414final() {
        /*
            r5 = this;
            com.apk.k r0 = r5.f7740static
            if (r0 == 0) goto L3b
            int r0 = r0.getCount()
            if (r0 <= 0) goto L3b
            r0 = 0
            com.apk.k r1 = r5.f7740static     // Catch: java.lang.Exception -> L2c
            int r1 = r1.getCount()     // Catch: java.lang.Exception -> L2c
            r2 = 0
        L12:
            if (r0 >= r1) goto L32
            com.apk.k r3 = r5.f7740static     // Catch: java.lang.Exception -> L2a
            com.biquge.ebook.app.bean.ChapterBean r3 = r3.m1401if(r0)     // Catch: java.lang.Exception -> L2a
            java.lang.String r3 = r3.getOid()     // Catch: java.lang.Exception -> L2a
            java.lang.String r4 = r5.f7735native     // Catch: java.lang.Exception -> L2a
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
            com.biquge.ebook.app.widget.pinnedheaderlistview.SectionPinListView r0 = r5.f7732final
            int r2 = r2 + (-1)
            r0.setSelection(r2)
        L3b:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.biquge.ebook.app.ui.view.NovelDirChapterPopup.m3414final():void");
    }

    @Override // com.lxj.xpopup.core.BasePopupView
    public int getImplLayoutId() {
        return R.layout.popup_novel_dirs;
    }

    @Override // com.lxj.xpopup.core.BasePopupView
    public int getMaxWidth() {
        return (int) (eg.m614switch() * 0.9d);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        switch (view.getId()) {
            case R.id.dirs_location /* 2131296735 */:
                if (TextUtils.isEmpty(this.f7735native)) {
                    return;
                }
                m3414final();
                return;
            case R.id.edit_delete_bt /* 2131296745 */:
                BookMarkAdapter bookMarkAdapter = this.f7736package;
                if (bookMarkAdapter != null) {
                    bookMarkAdapter.m3280if(false);
                }
                m3410break();
                return;
            case R.id.edit_select_all_bt /* 2131296748 */:
                BookMarkAdapter bookMarkAdapter2 = this.f7736package;
                if (bookMarkAdapter2 != null) {
                    ArrayList arrayList = new ArrayList();
                    try {
                        Iterator it = ((HashSet) bookMarkAdapter2.f6342if.entrySet()).iterator();
                        while (it.hasNext()) {
                            arrayList.add(((Map.Entry) it.next()).getValue());
                        }
                        bookMarkAdapter2.f6342if.clear();
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                    if (arrayList.size() > 0) {
                        Iterator it2 = arrayList.iterator();
                        while (it2.hasNext()) {
                            BookMark bookMark = (BookMark) it2.next();
                            if (bookMark != null) {
                                n2.r(bookMark.getNovelId(), bookMark.getChapterId(), bookMark.getReadPage());
                            }
                        }
                        new b1().m141do(new ad(this));
                    }
                    m3413const(0);
                    return;
                }
                return;
            case R.id.novel_dirs_actionbar_collection /* 2131297260 */:
                if (this.f7745throw.getVisibility() == 0) {
                    try {
                        if (this.f7726catch.getTag().equals("top")) {
                            this.f7732final.setSelection(0);
                            this.f7726catch.setImageResource(R.drawable.reader_category);
                            this.f7726catch.setTag("bottom");
                        } else if (this.f7726catch.getTag().equals("bottom")) {
                            this.f7732final.setSelection(this.f7740static.getCount());
                            this.f7726catch.setImageResource(R.drawable.reader_category_asc);
                            this.f7726catch.setTag("top");
                        }
                        return;
                    } catch (Exception e2) {
                        e2.printStackTrace();
                        return;
                    }
                }
                m3415super();
                return;
            case R.id.novel_dirs_back_image /* 2131297261 */:
                dismiss();
                h1 h1Var = this.f7738public;
                if (h1Var != null) {
                    h1Var.mo1049do();
                    return;
                }
                return;
            case R.id.novel_dirs_tab_bookmark_layout /* 2131297266 */:
                if (this.f7728const.isSelected()) {
                    return;
                }
                m3416throw(false);
                return;
            case R.id.novel_dirs_tab_cate_layout /* 2131297267 */:
                if (this.f7727class.isSelected()) {
                    return;
                }
                m3416throw(true);
                return;
            default:
                return;
        }
    }

    @Override // com.lxj.xpopup.core.BasePopupView
    public void onCreate() {
        super.onCreate();
        this.f7744this = (LinearLayout) findViewById(R.id.novel_dirs_parnt_layout);
        this.f7725break = (TextView) findViewById(R.id.novel_dirs_title_txt);
        this.f7726catch = (ImageView) findViewById(R.id.novel_dirs_actionbar_collection);
        TextView textView = (TextView) findViewById(R.id.novel_dirs_tab_cate_layout);
        this.f7727class = textView;
        textView.setOnClickListener(this);
        TextView textView2 = (TextView) findViewById(R.id.novel_dirs_tab_bookmark_layout);
        this.f7728const = textView2;
        textView2.setOnClickListener(this);
        this.f7732final = (SectionPinListView) findViewById(R.id.novel_dirs_recyclerview);
        this.f7742super = findViewById(R.id.loading_layout);
        this.f7745throw = (FrameLayout) findViewById(R.id.novel_dirs_layout);
        this.f7743switch = (LinearLayout) findViewById(R.id.novel_mart_layout);
        Button button = (Button) findViewById(R.id.edit_select_all_bt);
        this.f7746throws = button;
        button.setOnClickListener(this);
        Button button2 = (Button) findViewById(R.id.edit_delete_bt);
        this.f7730default = button2;
        button2.setOnClickListener(this);
        this.f7731extends = (RecyclerView) findViewById(R.id.rv_list);
        this.f7733finally = (LinearLayout) findViewById(R.id.fragment_book_novel_dir_remove_layout);
        this.f7727class.setSelected(true);
        this.f7726catch.setImageResource(R.drawable.reader_category);
        this.f7726catch.setOnClickListener(this);
        this.f7726catch.setTag("bottom");
        findViewById(R.id.novel_dirs_back_image).setOnClickListener(this);
        findViewById(R.id.dirs_location).setOnClickListener(this);
        this.f7731extends.setHasFixedSize(true);
        ze.m3165else(this.f7731extends);
        this.f7731extends.setLayoutManager(new LinearLayoutManager(getContext()));
        this.f7730default.setText(ze.q(R.string.main_cancel));
        m3413const(0);
        m3411catch();
        this.f7741strictfp = new v3(this.f7729continue, this.f7747volatile);
        this.f7725break.setText(this.f7748while);
        k kVar = new k(getContext());
        this.f7740static = kVar;
        this.f7732final.setAdapter((ListAdapter) kVar);
        this.f7732final.setOnItemClickListener(this);
        m3412class(true);
        BookMarkAdapter bookMarkAdapter = new BookMarkAdapter(this.f7737private, this.f7724abstract);
        this.f7736package = bookMarkAdapter;
        this.f7731extends.setAdapter(bookMarkAdapter);
        this.f7736package.setOnItemClickListener(this);
        this.f7736package.setOnItemLongClickListener(this);
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
        h1 h1Var;
        ChapterBean chapterBean = this.f7740static.f2437do.get(i);
        if (chapterBean == null || chapterBean.isGroup() || (h1Var = this.f7738public) == null) {
            return;
        }
        h1Var.mo1050for(chapterBean);
        dismiss();
    }

    @Override // com.chad.library.adapter.base.BaseQuickAdapter.OnItemLongClickListener
    public boolean onItemLongClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
        if (this.f7736package.f6340do) {
            return true;
        }
        m3415super();
        return true;
    }

    @Override // com.lxj.xpopup.core.BasePopupView
    public void onShow() {
        super.onShow();
        new b1().m141do(new ad(this));
    }

    /* renamed from: super  reason: not valid java name */
    public void m3415super() {
        try {
            if (this.f7736package.getItemCount() == 0) {
                return;
            }
            m3413const(0);
            this.f7733finally.setVisibility(0);
            if (this.f7736package != null) {
                this.f7736package.m3280if(true);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: throw  reason: not valid java name */
    public final void m3416throw(boolean z) {
        if (z) {
            if (this.f7745throw == null || this.f7743switch == null) {
                return;
            }
            this.f7727class.setSelected(true);
            this.f7728const.setSelected(false);
            this.f7745throw.setVisibility(0);
            this.f7743switch.setVisibility(8);
            this.f7726catch.setImageResource(R.drawable.reader_category);
            if ("top".equals(this.f7726catch.getTag())) {
                this.f7726catch.setImageResource(R.drawable.reader_category_asc);
            } else {
                this.f7726catch.setImageResource(R.drawable.reader_category);
            }
        } else if (this.f7745throw == null || this.f7743switch == null) {
        } else {
            this.f7727class.setSelected(false);
            this.f7728const.setSelected(true);
            this.f7745throw.setVisibility(8);
            this.f7743switch.setVisibility(0);
            this.f7726catch.setImageResource(R.drawable.icon_edit);
        }
    }

    @Override // com.chad.library.adapter.base.BaseQuickAdapter.OnItemClickListener
    public void onItemClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
        try {
            BookMark item = this.f7736package.getItem(i);
            if (item != null) {
                if (this.f7736package.f6340do) {
                    BookMarkAdapter bookMarkAdapter = this.f7736package;
                    if (bookMarkAdapter != null) {
                        try {
                            String m3279do = BookMarkAdapter.m3279do(item);
                            if (bookMarkAdapter.f6342if.containsKey(m3279do)) {
                                bookMarkAdapter.f6342if.remove(m3279do);
                            } else {
                                bookMarkAdapter.f6342if.put(m3279do, item);
                            }
                            bookMarkAdapter.notifyItemChanged(i);
                        } catch (Exception e) {
                            e.printStackTrace();
                        }
                        m3413const(bookMarkAdapter.f6342if.size());
                        return;
                    }
                    throw null;
                } else if (this.f7738public != null) {
                    this.f7738public.mo1051if(item.getChapterId(), Integer.parseInt(item.getReadPage()));
                    dismiss();
                }
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }
}
