package com.biquge.ebook.app.adapter;

import android.app.Activity;
import android.text.TextUtils;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.recyclerview.widget.GridLayoutManager;
import com.apk.j;
import com.apk.lq0;
import com.apk.tr0;
import com.apk.ze;
import com.biquge.ebook.app.app.AppContext;
import com.biquge.ebook.app.bean.Book;
import com.biquge.ebook.app.bean.CollectBook;
import com.biquge.ebook.app.ui.view.CoverImageView;
import com.biquge.ebook.app.widget.NightRecyclerView;
import com.chad.library.adapter.base.BaseMultiItemQuickAdapter;
import com.chad.library.adapter.base.BaseViewHolder;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kimi.wuhends.ebooks.R;

/* loaded from: classes8.dex */
public class BookGroupAdapter extends BaseMultiItemQuickAdapter<CollectBook, BaseViewHolder> {

    /* renamed from: case  reason: not valid java name */
    public int f6331case;

    /* renamed from: do  reason: not valid java name */
    public final boolean f6332do;

    /* renamed from: for  reason: not valid java name */
    public boolean f6333for;

    /* renamed from: if  reason: not valid java name */
    public Map<String, Book> f6334if;

    /* renamed from: new  reason: not valid java name */
    public LinkedHashMap<String, CollectBook> f6335new;

    /* renamed from: try  reason: not valid java name */
    public final int f6336try;

    public BookGroupAdapter(Activity activity, List<CollectBook> list, boolean z, boolean z2, int i) {
        super(list);
        this.f6331case = -1;
        this.f6332do = z;
        addItemType(2, i);
        if (z) {
            if (z2) {
                addItemType(3, R.layout.item_pop_bookgroup_list);
            } else {
                addItemType(3, R.layout.item_pop_bookgroup_list_smal);
            }
        } else if (z2) {
            addItemType(3, R.layout.item_pop_bookgroup_grid);
        } else {
            addItemType(3, R.layout.item_pop_bookgroup_grid_smal);
        }
        this.f6336try = lq0.m1660do(activity, tr0.m2617do(R.color.colorAccent));
    }

    @Override // com.chad.library.adapter.base.BaseQuickAdapter
    public void convert(BaseViewHolder baseViewHolder, Object obj) {
        CollectBook collectBook = (CollectBook) obj;
        int itemViewType = baseViewHolder.getItemViewType();
        if (itemViewType != 2) {
            if (itemViewType != 3) {
                return;
            }
            NightRecyclerView nightRecyclerView = (NightRecyclerView) baseViewHolder.getView(R.id.item_pop_bookgroup_icons);
            TextView textView = (TextView) baseViewHolder.getView(R.id.item_pop_bookgroup_icon_view);
            String groupId = collectBook.getGroupId();
            if ("CREATE_BOOKGROUP_TO_SHELF".equals(groupId)) {
                textView.setText(ze.q(R.string.main_tab_book_shelf));
                if (nightRecyclerView.getVisibility() != 8) {
                    nightRecyclerView.setVisibility(8);
                }
                if (textView.getVisibility() != 0) {
                    textView.setVisibility(0);
                }
            } else if ("CREATE_BOOKGROUP_CREATE".equals(groupId)) {
                textView.setText(ze.q(R.string.main_menu_pop_book_new_group));
                if (nightRecyclerView.getVisibility() != 8) {
                    nightRecyclerView.setVisibility(8);
                }
                if (textView.getVisibility() != 0) {
                    textView.setVisibility(0);
                }
            } else {
                if (nightRecyclerView.getVisibility() != 0) {
                    nightRecyclerView.setVisibility(0);
                }
                if (textView.getVisibility() != 8) {
                    textView.setVisibility(8);
                }
                String str = collectBook.getSaveTime() + collectBook.getGroupBookCount();
                if (!str.equals(nightRecyclerView.getTag())) {
                    nightRecyclerView.setLayoutManager(new GridLayoutManager(this.mContext, 2));
                    nightRecyclerView.setHasFixedSize(true);
                    nightRecyclerView.setNestedScrollingEnabled(false);
                    nightRecyclerView.setAdapter(new ImageAdapter(collectBook.getGroupIcons(), true));
                    nightRecyclerView.setTag(str);
                }
                nightRecyclerView.setOnTouchListener(new j(this, baseViewHolder));
                ImageView imageView = (ImageView) baseViewHolder.getView(R.id.item_book_shelf_new_flag_view);
                if (collectBook.isNew()) {
                    if (imageView.getVisibility() != 0) {
                        imageView.setVisibility(0);
                    }
                } else if (imageView.getVisibility() != 8) {
                    imageView.setVisibility(8);
                }
                TextView textView2 = (TextView) baseViewHolder.getView(R.id.item_book_shelf_stick_view);
                if (TextUtils.isEmpty(collectBook.getStickTime())) {
                    if (textView2.getVisibility() != 8) {
                        textView2.setVisibility(8);
                    }
                } else if (textView2.getVisibility() != 0) {
                    textView2.setVisibility(0);
                }
                if (this.f6332do) {
                    baseViewHolder.setText(R.id.item_book_shelf_new_capter_txt, collectBook.getGroupBookCount());
                }
            }
            baseViewHolder.setText(R.id.item_book_shlef_grid_name, collectBook.getGroupTitle());
        } else if (this.f6332do) {
            try {
                String collectId = collectBook.getCollectId();
                baseViewHolder.setText(R.id.item_book_shlef_grid_name, collectBook.getName());
                TextView textView3 = (TextView) baseViewHolder.getView(R.id.tv_choose);
                ImageView imageView2 = (ImageView) baseViewHolder.getView(R.id.item_book_shelf_edit_image);
                if (this.f6334if != null) {
                    if (this.f6334if.containsKey(collectId)) {
                        textView3.setVisibility(0);
                        imageView2.setVisibility(8);
                    } else {
                        textView3.setVisibility(8);
                        if (this.f6335new != null && this.f6335new.containsKey(collectId)) {
                            imageView2.setSelected(true);
                            if (AppContext.f6392case.f6395if) {
                                imageView2.setColorFilter(ze.p(R.color.colorAccent));
                            } else {
                                imageView2.setColorFilter(this.f6336try);
                            }
                        } else {
                            imageView2.setSelected(false);
                            imageView2.clearColorFilter();
                        }
                        if (imageView2.getVisibility() != 0) {
                            imageView2.setVisibility(0);
                        }
                    }
                    ImageView imageView3 = (ImageView) baseViewHolder.getView(R.id.item_list_menu_bt);
                    if (imageView3 != null && imageView3.getVisibility() != 8) {
                        imageView3.setVisibility(8);
                    }
                } else {
                    if (this.f6333for) {
                        if (this.f6335new != null && this.f6335new.containsKey(collectId)) {
                            imageView2.setSelected(true);
                            if (AppContext.f6392case.f6395if) {
                                imageView2.setColorFilter(ze.p(R.color.colorAccent));
                            } else {
                                imageView2.setColorFilter(this.f6336try);
                            }
                        } else {
                            imageView2.setSelected(false);
                            imageView2.clearColorFilter();
                        }
                        if (imageView2.getVisibility() != 0) {
                            imageView2.setVisibility(0);
                        }
                    } else if (imageView2.getVisibility() != 8) {
                        imageView2.setVisibility(8);
                    }
                    ImageView imageView4 = (ImageView) baseViewHolder.getView(R.id.item_list_menu_bt);
                    if (imageView4 != null) {
                        if (this.f6333for) {
                            if (imageView4.getVisibility() != 8) {
                                imageView4.setVisibility(8);
                            }
                        } else if (imageView4.getVisibility() != 0) {
                            imageView4.setVisibility(0);
                        }
                    }
                }
                ((CoverImageView) baseViewHolder.getView(R.id.item_book_shlef_grid_head)).setCover(collectBook);
                if (collectBook.isLocalBook()) {
                    baseViewHolder.setText(R.id.item_book_shelf_new_capter_txt, ze.q(R.string.import_book_title_txt));
                    ((TextView) baseViewHolder.getView(R.id.item_book_shelf_new_capter_time_txt)).setCompoundDrawables(null, null, null, null);
                } else if (collectBook.isWebSite()) {
                    if (!TextUtils.isEmpty(collectBook.getExternalUrl())) {
                        baseViewHolder.setText(R.id.item_book_shelf_new_capter_txt, "");
                        TextView textView4 = (TextView) baseViewHolder.getView(R.id.item_book_shelf_new_capter_time_txt);
                        textView4.setText(ze.q(R.string.book_detail_source_txt) + collectBook.getExternalUrl());
                        textView4.setCompoundDrawables(null, null, null, null);
                    } else {
                        baseViewHolder.setText(R.id.item_book_shelf_new_capter_txt, ze.r(R.string.xml_new_placeholder_txt, collectBook.getLastCapterName()));
                        TextView textView5 = (TextView) baseViewHolder.getView(R.id.item_book_shelf_new_capter_time_txt);
                        textView5.setText(ze.q(R.string.book_detail_source_txt) + collectBook.getChapterUrl());
                        textView5.setCompoundDrawables(null, null, null, null);
                    }
                } else {
                    baseViewHolder.setText(R.id.item_book_shelf_new_capter_txt, ze.r(R.string.xml_new_placeholder_txt, collectBook.getLastCapterName()));
                    ((TextView) baseViewHolder.getView(R.id.item_book_shelf_new_capter_time_txt)).setText(collectBook.getLastUpdateTime());
                }
                TextView textView6 = (TextView) baseViewHolder.getView(R.id.item_book_shelf_mojar_txt);
                if (!TextUtils.isEmpty(collectBook.getMajorCharacters())) {
                    textView6.setText(collectBook.getMajorCharacters());
                    textView6.setVisibility(0);
                } else {
                    textView6.setVisibility(8);
                }
                ImageView imageView5 = (ImageView) baseViewHolder.getView(R.id.item_book_shelf_new_flag_view);
                if (collectBook.isNew()) {
                    if (imageView5.getVisibility() != 0) {
                        imageView5.setVisibility(0);
                    }
                } else if (imageView5.getVisibility() != 8) {
                    imageView5.setVisibility(8);
                }
                TextView textView7 = (TextView) baseViewHolder.getView(R.id.item_book_shelf_stick_view);
                if (TextUtils.isEmpty(collectBook.getStickTime())) {
                    if (textView7.getVisibility() != 8) {
                        textView7.setVisibility(8);
                    }
                } else if (textView7.getVisibility() != 0) {
                    textView7.setVisibility(0);
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
            try {
                baseViewHolder.addOnClickListener(R.id.item_list_menu_bt);
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        } else {
            try {
                String collectId2 = collectBook.getCollectId();
                baseViewHolder.setText(R.id.item_book_shlef_grid_name, collectBook.getName());
                ImageView imageView6 = (ImageView) baseViewHolder.getView(R.id.item_book_shelf_edit_image);
                View view = baseViewHolder.getView(R.id.item_book_shlef_edit_layout);
                if (this.f6333for) {
                    if (this.f6335new != null && this.f6335new.containsKey(collectId2)) {
                        imageView6.setSelected(true);
                        if (AppContext.f6392case.f6395if) {
                            imageView6.setColorFilter(ze.p(R.color.colorAccent_red));
                        } else {
                            imageView6.setColorFilter(this.f6336try);
                        }
                    } else {
                        imageView6.setSelected(false);
                        imageView6.setColorFilter(this.f6336try);
                    }
                    if (view != null && view.getVisibility() != 0) {
                        view.setVisibility(0);
                    }
                    if (imageView6.getVisibility() != 0) {
                        imageView6.setVisibility(0);
                    }
                } else {
                    if (view.getVisibility() != 8) {
                        view.setVisibility(8);
                    }
                    if (imageView6.getVisibility() != 8) {
                        imageView6.setVisibility(8);
                    }
                }
                ((CoverImageView) baseViewHolder.getView(R.id.item_book_shlef_grid_head)).setCover(collectBook);
                if (this.f6332do) {
                    if (collectBook.isLocalBook()) {
                        baseViewHolder.setText(R.id.item_book_shelf_new_capter_txt, ze.q(R.string.main_edit_local_book_txt));
                    } else if (collectBook.isWebSite()) {
                        baseViewHolder.setText(R.id.item_book_shelf_new_capter_txt, ze.q(R.string.web_read_smart_txt));
                    } else {
                        baseViewHolder.setText(R.id.item_book_shelf_new_capter_txt, ze.r(R.string.xml_new_placeholder_txt, collectBook.getLastCapterName()));
                    }
                    baseViewHolder.setText(R.id.item_book_shelf_new_capter_time_txt, collectBook.getLastUpdateTime());
                }
                ImageView imageView7 = (ImageView) baseViewHolder.getView(R.id.item_book_shelf_new_flag_view);
                if (collectBook.isNew()) {
                    if (imageView7.getVisibility() != 0) {
                        imageView7.setVisibility(0);
                    }
                } else if (imageView7.getVisibility() != 8) {
                    imageView7.setVisibility(8);
                }
                TextView textView8 = (TextView) baseViewHolder.getView(R.id.item_book_shelf_mojar_txt);
                if (!TextUtils.isEmpty(collectBook.getMajorCharacters())) {
                    textView8.setText(collectBook.getMajorCharacters());
                    textView8.setVisibility(0);
                } else {
                    textView8.setVisibility(8);
                }
                TextView textView9 = (TextView) baseViewHolder.getView(R.id.item_book_shelf_stick_view);
                if (TextUtils.isEmpty(collectBook.getStickTime())) {
                    if (textView9.getVisibility() != 8) {
                        textView9.setVisibility(8);
                    }
                } else if (textView9.getVisibility() != 0) {
                    textView9.setVisibility(0);
                }
            } catch (Exception e3) {
                e3.printStackTrace();
            }
        }
    }

    /* renamed from: do  reason: not valid java name */
    public List<CollectBook> m3276do() {
        ArrayList arrayList = new ArrayList();
        LinkedHashMap<String, CollectBook> linkedHashMap = this.f6335new;
        if (linkedHashMap != null) {
            for (Map.Entry<String, CollectBook> entry : linkedHashMap.entrySet()) {
                arrayList.add(entry.getValue());
            }
        }
        return arrayList;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: for  reason: not valid java name */
    public int m3277for(int i) {
        if (this.f6335new == null) {
            this.f6335new = new LinkedHashMap<>();
        }
        try {
            CollectBook collectBook = (CollectBook) getItem(i);
            if (collectBook != null) {
                String collectId = collectBook.getCollectId();
                if (this.f6335new.containsKey(collectId)) {
                    this.f6335new.remove(collectId);
                } else {
                    this.f6335new.put(collectId, getItem(i));
                }
                notifyItemChanged(getHeaderLayoutCount() + i);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return this.f6335new.size();
    }

    /* renamed from: if  reason: not valid java name */
    public int m3278if(boolean z) {
        if (this.f6335new == null) {
            this.f6335new = new LinkedHashMap<>();
        }
        try {
            if (this.f6335new.size() == this.f6331case) {
                this.f6335new.clear();
            } else {
                for (T t : getData()) {
                    if (t.getItemType() != 1 || t.isNew()) {
                        if (z || !t.isGroup()) {
                            this.f6335new.put(t.getCollectId(), t);
                        }
                    }
                }
                this.f6331case = this.f6335new.size();
            }
            notifyDataSetChanged();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return this.f6335new.size();
    }
}
