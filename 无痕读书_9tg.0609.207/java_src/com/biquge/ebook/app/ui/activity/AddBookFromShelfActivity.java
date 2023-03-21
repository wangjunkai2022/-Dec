package com.biquge.ebook.app.ui.activity;

import android.content.Intent;
import android.view.View;
import android.widget.Button;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.BindView;
import butterknife.OnClick;
import com.apk.f6;
import com.apk.n2;
import com.apk.ze;
import com.biquge.ebook.app.adapter.BookGroupAdapter;
import com.biquge.ebook.app.bean.Book;
import com.biquge.ebook.app.bean.CollectBook;
import com.chad.library.adapter.base.BaseQuickAdapter;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kimi.wuhends.ebooks.R;
/* loaded from: classes8.dex */
public class AddBookFromShelfActivity extends f6 implements BaseQuickAdapter.OnItemClickListener {

    /* renamed from: do  reason: not valid java name */
    public final Map<String, Book> f6418do = new HashMap();

    /* renamed from: if  reason: not valid java name */
    public BookGroupAdapter f6419if;
    @BindView(R.id.rv_list)
    public RecyclerView mRecyclerView;
    @BindView(R.id.select_finish_bt)
    public Button mSelectFinishBT;

    @Override // com.apk.f6
    public int getLayoutId() {
        return R.layout.activity_add_book_shelf;
    }

    public final void i(int i) {
        try {
            this.mSelectFinishBT.setText(getString(R.string.main_select_count_batch, new Object[]{String.valueOf(i)}));
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override // com.apk.f6
    public void initData() {
        List<Book> list;
        Intent intent = getIntent();
        if (intent.hasExtra("books") && (list = (List) intent.getSerializableExtra("books")) != null && list.size() > 0) {
            for (Book book : list) {
                this.f6418do.put(book.getId(), book);
            }
        }
        BookGroupAdapter bookGroupAdapter = new BookGroupAdapter(this, n2.m1826instanceof(), true, true, R.layout.include_book_shelf_list);
        this.f6419if = bookGroupAdapter;
        bookGroupAdapter.f6334if = this.f6418do;
        this.mRecyclerView.setAdapter(bookGroupAdapter);
        this.f6419if.setOnItemClickListener(this);
    }

    @Override // com.apk.f6
    public void initView() {
        initTopBarOnlyTitle(R.id.add_book_shelf_actionbar, R.string.create_element_add_for_shelf_txt);
        this.mRecyclerView.setHasFixedSize(true);
        ze.m3165else(this.mRecyclerView);
        this.mRecyclerView.setLayoutManager(new LinearLayoutManager(this));
        i(0);
    }

    @OnClick({R.id.select_cancel_bt, R.id.select_finish_bt})
    public void menuClick(View view) {
        if (view.getId() == R.id.select_cancel_bt) {
            try {
                BookGroupAdapter bookGroupAdapter = this.f6419if;
                LinkedHashMap<String, CollectBook> linkedHashMap = bookGroupAdapter.f6335new;
                if (linkedHashMap != null) {
                    linkedHashMap.clear();
                }
                bookGroupAdapter.notifyDataSetChanged();
                this.f6419if.notifyDataSetChanged();
                i(0);
            } catch (Exception e) {
                e.printStackTrace();
            }
        } else if (view.getId() == R.id.select_finish_bt) {
            try {
                ArrayList arrayList = (ArrayList) this.f6419if.m3276do();
                if (arrayList.size() > 0) {
                    ArrayList arrayList2 = new ArrayList();
                    Iterator it = arrayList.iterator();
                    while (it.hasNext()) {
                        CollectBook collectBook = (CollectBook) it.next();
                        Book book = new Book();
                        book.setId(collectBook.getCollectId());
                        book.setName(collectBook.getName());
                        book.setImg(collectBook.getIcon());
                        book.setCName(collectBook.getBookType());
                        book.setAuthor(collectBook.getAuthor());
                        book.setDesc(collectBook.getDesc());
                        book.setLastChapter(collectBook.getLastCapterName());
                        book.setLastChapterId(collectBook.getLastCapterId());
                        book.setFirstChapterId(collectBook.getFirstChapterId());
                        arrayList2.add(book);
                    }
                    Intent intent = new Intent();
                    intent.putExtra("books", arrayList2);
                    setResult(-1, intent);
                    finish();
                }
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
    }

    @Override // com.chad.library.adapter.base.BaseQuickAdapter.OnItemClickListener
    public void onItemClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
        try {
            CollectBook collectBook = (CollectBook) this.f6419if.getItem(i);
            if (collectBook == null || this.f6418do.containsKey(collectBook.getCollectId())) {
                return;
            }
            i(this.f6419if.m3277for(i));
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
