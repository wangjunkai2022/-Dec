package com.biquge.ebook.app.adapter;

import android.app.Activity;
import android.text.Html;
import android.text.TextUtils;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.apk.da;
import com.apk.lq0;
import com.apk.tr0;
import com.apk.u;
import com.apk.ze;
import com.biquge.ebook.app.ad.ads.AdViewBangDan;
import com.biquge.ebook.app.bean.Book;
import com.chad.library.adapter.base.BaseMultiItemQuickAdapter;
import com.chad.library.adapter.base.BaseViewHolder;
import java.util.LinkedHashMap;
import java.util.Map;
import kimi.wuhends.ebooks.R;

/* loaded from: classes8.dex */
public class SearchResultAdapter extends BaseMultiItemQuickAdapter<Book, BaseViewHolder> {

    /* renamed from: case  reason: not valid java name */
    public final int f6373case;

    /* renamed from: do  reason: not valid java name */
    public LinkedHashMap<String, Book> f6374do;

    /* renamed from: else  reason: not valid java name */
    public String f6375else;

    /* renamed from: for  reason: not valid java name */
    public Map<String, Book> f6376for;

    /* renamed from: if  reason: not valid java name */
    public final boolean f6377if;

    /* renamed from: new  reason: not valid java name */
    public AdViewBangDan f6378new;

    /* renamed from: try  reason: not valid java name */
    public final Activity f6379try;

    public SearchResultAdapter(Activity activity, boolean z, boolean z2) {
        super(null);
        this.f6379try = activity;
        this.f6377if = z;
        this.f6373case = lq0.m1660do(activity, tr0.m2617do(R.color.colorAccent));
        addItemType(1, R.layout.item_search_result_list_view);
        addItemType(3, R.layout.item_search_result_list_view);
        addItemType(4, R.layout.item_search_result_list_view);
        addItemType(5, R.layout.item_search_result_list_view);
        if (z2) {
            AdViewBangDan adViewBangDan = new AdViewBangDan(activity, null);
            this.f6378new = adViewBangDan;
            adViewBangDan.setAutoRefresh(false);
            addItemType(2, this.f6378new);
        }
    }

    /* renamed from: do  reason: not valid java name */
    public static String m3290do(String str, String str2) {
        try {
            if (TextUtils.isEmpty(str2) || !str.contains(str2)) {
                return str;
            }
            String[] split = str.split(str2);
            StringBuilder sb = new StringBuilder();
            sb.append(split.length > 0 ? split[0] : "");
            sb.append("<font color = \"#D81E06\">");
            sb.append(str2);
            sb.append("</font>");
            sb.append(split.length > 1 ? split[1] : "");
            return sb.toString();
        } catch (Exception e) {
            e.printStackTrace();
            return str;
        }
    }

    @Override // com.chad.library.adapter.base.BaseQuickAdapter
    public void convert(BaseViewHolder baseViewHolder, Object obj) {
        Book book = (Book) obj;
        int itemViewType = baseViewHolder.getItemViewType();
        if (itemViewType == 1) {
            boolean m438while = da.m438while();
            try {
                u.m2653public(book.getImg(), (ImageView) baseViewHolder.getView(R.id.item_comic_image));
                baseViewHolder.setText(R.id.item_comic_type_tv, book.getCName());
                baseViewHolder.setText(R.id.item_comic_author_tv, book.getAuthor());
                baseViewHolder.setText(R.id.item_comic_info_tv, book.getDesc());
                ((TextView) baseViewHolder.getView(R.id.item_comic_name_tv)).setText(Html.fromHtml(m3290do(book.getName(), this.f6375else)));
            } catch (Exception e) {
                e.printStackTrace();
            }
            try {
                LinearLayout linearLayout = (LinearLayout) baseViewHolder.getView(R.id.cb_choose_layout);
                if (linearLayout.getVisibility() != 0) {
                    linearLayout.setVisibility(0);
                }
                ImageView imageView = (ImageView) baseViewHolder.getView(R.id.cb_select);
                ImageView imageView2 = (ImageView) baseViewHolder.getView(R.id.cb_choose);
                TextView textView = (TextView) baseViewHolder.getView(R.id.tv_choose);
                String id = book.getId();
                if (!this.f6377if) {
                    if (m438while) {
                        imageView.setColorFilter(ze.p(R.color.colorAccent));
                    } else {
                        imageView.setColorFilter(this.f6373case);
                    }
                    if (imageView.getVisibility() != 0) {
                        imageView.setVisibility(0);
                    }
                    if (book.isHaveShelf()) {
                        imageView.setImageResource(R.drawable.selector_select_book);
                        if (imageView.getVisibility() != 8) {
                            imageView.setVisibility(8);
                        }
                        textView.setText(ze.q(R.string.element_fixate_add_txt));
                        if (textView.getVisibility() != 0) {
                            textView.setVisibility(0);
                        }
                    } else {
                        imageView.setImageResource(R.drawable.search_plus);
                        if (textView.getVisibility() != 8) {
                            textView.setVisibility(8);
                        }
                    }
                } else {
                    if (imageView.getVisibility() != 8) {
                        imageView.setVisibility(8);
                    }
                    if (this.f6376for != null && this.f6376for.containsKey(id)) {
                        textView.setText(ze.q(R.string.element_fixate_select_txt));
                        if (textView.getVisibility() != 0) {
                            textView.setVisibility(0);
                        }
                        if (imageView2.getVisibility() != 8) {
                            imageView2.setVisibility(8);
                        }
                        baseViewHolder.itemView.setOnClickListener(null);
                    } else {
                        if (textView.getVisibility() != 8) {
                            textView.setVisibility(8);
                        }
                        if (imageView2.getVisibility() != 0) {
                            imageView2.setVisibility(0);
                        }
                        if (this.f6374do != null && this.f6374do.containsKey(id)) {
                            imageView2.setSelected(true);
                            if (m438while) {
                                imageView2.setColorFilter(ze.p(R.color.colorAccent));
                            } else {
                                imageView2.setColorFilter(this.f6373case);
                            }
                        } else {
                            imageView2.setSelected(false);
                            imageView2.clearColorFilter();
                        }
                    }
                }
            } catch (Exception e2) {
                e2.printStackTrace();
            }
            baseViewHolder.addOnClickListener(R.id.cb_choose_layout);
        } else if (itemViewType == 2) {
            AdViewBangDan adViewBangDan = this.f6378new;
            if (adViewBangDan != null) {
                if (!adViewBangDan.m3267for()) {
                    this.f6378new.m3268new(this.f6379try, "searchnative");
                } else {
                    this.f6378new.mo139do();
                }
            }
        } else if (itemViewType != 3) {
            if (itemViewType != 4) {
                return;
            }
            try {
                u.m2650import(book.getImg(), (ImageView) baseViewHolder.getView(R.id.item_comic_image));
                baseViewHolder.setText(R.id.item_comic_type_tv, book.getCName() + " | " + book.getBookStatus());
                baseViewHolder.setText(R.id.item_comic_author_tv, book.getAuthor());
                baseViewHolder.setText(R.id.item_comic_info_tv, book.getDesc());
                ((TextView) baseViewHolder.getView(R.id.item_comic_name_tv)).setText(Html.fromHtml(m3290do(book.getName(), this.f6375else)));
            } catch (Exception e3) {
                e3.printStackTrace();
            }
            baseViewHolder.setGone(R.id.cb_choose_layout, false);
        } else {
            boolean m438while2 = da.m438while();
            try {
                u.m2650import(book.getImg(), (ImageView) baseViewHolder.getView(R.id.item_comic_image));
                baseViewHolder.setText(R.id.item_comic_type_tv, book.getCName());
                baseViewHolder.setText(R.id.item_comic_author_tv, book.getAuthor());
                baseViewHolder.setText(R.id.item_comic_info_tv, book.getDesc());
                ((TextView) baseViewHolder.getView(R.id.item_comic_name_tv)).setText(Html.fromHtml(m3290do(book.getName(), this.f6375else)));
            } catch (Exception e4) {
                e4.printStackTrace();
            }
            try {
                LinearLayout linearLayout2 = (LinearLayout) baseViewHolder.getView(R.id.cb_choose_layout);
                if (linearLayout2.getVisibility() != 0) {
                    linearLayout2.setVisibility(0);
                }
                ImageView imageView3 = (ImageView) baseViewHolder.getView(R.id.cb_select);
                ImageView imageView4 = (ImageView) baseViewHolder.getView(R.id.cb_choose);
                TextView textView2 = (TextView) baseViewHolder.getView(R.id.tv_choose);
                String id2 = book.getId();
                if (!this.f6377if) {
                    if (m438while2) {
                        imageView3.setColorFilter(ze.p(R.color.colorAccent));
                    } else {
                        imageView3.setColorFilter(this.f6373case);
                    }
                    if (imageView3.getVisibility() != 0) {
                        imageView3.setVisibility(0);
                    }
                    if (book.isHaveShelf()) {
                        imageView3.setImageResource(R.drawable.selector_select_book);
                        if (imageView3.getVisibility() != 8) {
                            imageView3.setVisibility(8);
                        }
                        textView2.setText(ze.q(R.string.element_fixate_add_txt));
                        if (textView2.getVisibility() != 0) {
                            textView2.setVisibility(0);
                        }
                    } else {
                        imageView3.setImageResource(R.drawable.search_plus);
                        if (textView2.getVisibility() != 8) {
                            textView2.setVisibility(8);
                        }
                    }
                } else {
                    if (imageView3.getVisibility() != 8) {
                        imageView3.setVisibility(8);
                    }
                    if (this.f6376for != null && this.f6376for.containsKey(id2)) {
                        textView2.setText(ze.q(R.string.element_fixate_select_txt));
                        if (textView2.getVisibility() != 0) {
                            textView2.setVisibility(0);
                        }
                        if (imageView4.getVisibility() != 8) {
                            imageView4.setVisibility(8);
                        }
                        baseViewHolder.itemView.setOnClickListener(null);
                    } else {
                        if (textView2.getVisibility() != 8) {
                            textView2.setVisibility(8);
                        }
                        if (imageView4.getVisibility() != 0) {
                            imageView4.setVisibility(0);
                        }
                        if (this.f6374do != null && this.f6374do.containsKey(id2)) {
                            imageView4.setSelected(true);
                            if (m438while2) {
                                imageView4.setColorFilter(ze.p(R.color.colorAccent));
                            } else {
                                imageView4.setColorFilter(this.f6373case);
                            }
                        } else {
                            imageView4.setSelected(false);
                            imageView4.clearColorFilter();
                        }
                    }
                }
            } catch (Exception e5) {
                e5.printStackTrace();
            }
            baseViewHolder.addOnClickListener(R.id.cb_choose_layout);
        }
    }

    /* renamed from: if  reason: not valid java name */
    public int m3291if(int i) {
        Book book = (Book) getItem(i);
        if (book != null) {
            if (this.f6374do == null) {
                this.f6374do = new LinkedHashMap<>();
            }
            if (this.f6374do.containsKey(book.getId())) {
                this.f6374do.remove(book.getId());
            } else {
                this.f6374do.put(book.getId(), book);
            }
            notifyItemChanged(i);
        }
        LinkedHashMap<String, Book> linkedHashMap = this.f6374do;
        if (linkedHashMap != null) {
            return linkedHashMap.size();
        }
        return 0;
    }
}
