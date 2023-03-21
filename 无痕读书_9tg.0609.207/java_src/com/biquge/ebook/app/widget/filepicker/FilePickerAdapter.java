package com.biquge.ebook.app.widget.filepicker;

import android.text.TextUtils;
import android.widget.TextView;
import com.apk.kg;
import com.apk.n2;
import com.apk.th;
import com.apk.uh;
import com.apk.vh;
import com.apk.wh;
import com.apk.ze;
import com.biquge.ebook.app.bean.CollectBook;
import com.biquge.ebook.app.widget.AppCheckBox;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.BaseViewHolder;
import java.io.File;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import kimi.wuhends.ebooks.R;
/* loaded from: classes8.dex */
public class FilePickerAdapter extends BaseQuickAdapter<File, BaseViewHolder> {

    /* renamed from: do  reason: not valid java name */
    public boolean[] f8364do;

    /* renamed from: for  reason: not valid java name */
    public Map<String, String> f8365for;

    /* renamed from: if  reason: not valid java name */
    public wh f8366if;

    /* renamed from: new  reason: not valid java name */
    public boolean f8367new;

    public FilePickerAdapter(wh whVar) {
        super((int) R.layout.item_picker_file_layout);
        this.f8365for = new HashMap();
        this.f8366if = whVar;
        for (CollectBook collectBook : n2.m1824implements()) {
            String icon = collectBook.getIcon();
            if (!TextUtils.isEmpty(icon)) {
                this.f8365for.put(m3543if(icon), collectBook.getCollectId());
            }
        }
    }

    /* renamed from: if  reason: not valid java name */
    public static String m3543if(String str) {
        return !TextUtils.isEmpty(str) ? str.replace("/storage/emulated/0", "/sdcard") : str;
    }

    @Override // com.chad.library.adapter.base.BaseQuickAdapter
    public void convert(BaseViewHolder baseViewHolder, File file) {
        File file2 = file;
        int layoutPosition = baseViewHolder.getLayoutPosition();
        TextView textView = (TextView) baseViewHolder.getView(R.id.import_finish_txt);
        TextView textView2 = (TextView) baseViewHolder.getView(R.id.tv_detail);
        TextView textView3 = (TextView) baseViewHolder.getView(R.id.tv_modified);
        AppCheckBox appCheckBox = (AppCheckBox) baseViewHolder.getView(R.id.cb_choose);
        if (this.f8367new) {
            appCheckBox.setEnabled(false);
        }
        baseViewHolder.setText(R.id.tv_name, file2.getName());
        if (file2.isFile()) {
            baseViewHolder.setImageResource(R.id.iv_type, R.drawable.txt_icon);
            textView2.setText(ze.m3190throws(file2.length()));
            appCheckBox.setVisibility(0);
            textView3.setText(kg.m1497goto(file2.lastModified()));
            textView3.setVisibility(0);
            if (!this.f8367new) {
                if (this.f8365for.containsKey(m3543if(file2.getAbsolutePath()))) {
                    textView.setVisibility(0);
                    appCheckBox.setVisibility(8);
                } else {
                    textView.setVisibility(8);
                    appCheckBox.setVisibility(0);
                }
            }
        } else {
            textView.setVisibility(8);
            baseViewHolder.setImageResource(R.id.iv_type, R.drawable.folder);
            File[] listFiles = file2.listFiles(this.f8366if);
            Object[] objArr = new Object[1];
            objArr[0] = String.valueOf(listFiles == null ? 0 : listFiles.length);
            textView2.setText(ze.r(R.string.import_book_imported_file_number_txt, objArr));
            appCheckBox.setVisibility(8);
            textView3.setVisibility(8);
        }
        baseViewHolder.itemView.setOnClickListener(new th(this, file2, appCheckBox, layoutPosition));
        appCheckBox.setOnClickListener(new uh(this, file2, layoutPosition));
        appCheckBox.setOnCheckedChangeListener(null);
        appCheckBox.setChecked(this.f8364do[layoutPosition]);
        appCheckBox.setOnCheckedChangeListener(new vh(this, layoutPosition));
    }

    /* renamed from: do  reason: not valid java name */
    public void m3544do(List<File> list) {
        setNewData(list);
        this.f8364do = new boolean[getItemCount()];
    }
}
