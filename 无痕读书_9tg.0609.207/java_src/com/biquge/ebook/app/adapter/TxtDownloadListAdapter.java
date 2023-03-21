package com.biquge.ebook.app.adapter;

import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.apk.gg;
import com.apk.hy;
import com.apk.kf;
import com.apk.xx;
import com.apk.ze;
import com.biquge.ebook.app.bean.TaskInfo;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.BaseViewHolder;
import java.util.Map;
import kimi.wuhends.ebooks.R;
/* loaded from: classes8.dex */
public class TxtDownloadListAdapter extends BaseQuickAdapter<TaskInfo, BaseViewHolder> {

    /* renamed from: do  reason: not valid java name */
    public boolean f6380do;

    /* renamed from: if  reason: not valid java name */
    public Map<String, TaskInfo> f6381if;

    public TxtDownloadListAdapter() {
        super((int) R.layout.item_txt_download_layout);
    }

    @Override // com.chad.library.adapter.base.BaseQuickAdapter
    public void convert(BaseViewHolder baseViewHolder, TaskInfo taskInfo) {
        int i;
        TaskInfo taskInfo2 = taskInfo;
        TextView textView = (TextView) baseViewHolder.getView(R.id.item_download_file_size);
        TextView textView2 = (TextView) baseViewHolder.getView(R.id.item_download_file_state);
        ProgressBar progressBar = (ProgressBar) baseViewHolder.getView(R.id.item_download_file_progressbar);
        ImageView imageView = (ImageView) baseViewHolder.getView(R.id.item_download_file_download);
        TextView textView3 = (TextView) baseViewHolder.getView(R.id.item_download_finish_openread);
        ImageView imageView2 = (ImageView) baseViewHolder.getView(R.id.item_download_select_item);
        ((TextView) baseViewHolder.getView(R.id.item_download_file_name)).setText(taskInfo2.getName());
        String url = taskInfo2.getUrl();
        gg<String, hy> ggVar = kf.f2525new;
        hy hyVar = ggVar != null ? ggVar.get(url) : null;
        if (hyVar == null) {
            hyVar = xx.Cif.f5816do.m3051case(taskInfo2.getUrl());
        }
        if (hyVar != null) {
            StringBuilder sb = new StringBuilder();
            sb.append(ze.m3190throws(hyVar.f2010goto));
            sb.append("/");
            sb.append(hyVar.f2016return ? "-" : ze.m3190throws(hyVar.f2007else));
            textView.setText(sb.toString());
            if (hyVar.f2016return) {
                if (hyVar.f2001break == 4) {
                    progressBar.setIndeterminate(false);
                } else {
                    progressBar.setIndeterminate(true);
                }
            } else {
                progressBar.setIndeterminate(false);
                progressBar.setProgress((int) ((hyVar.f2010goto * 100.0d) / hyVar.f2007else));
            }
            boolean z = hyVar.f2001break == 3;
            int i2 = hyVar.f2001break;
            if (i2 == 5) {
                textView2.setText(this.mContext.getString(R.string.download_success_txt));
                if (this.f6380do) {
                    imageView2.setVisibility(0);
                    String url2 = taskInfo2.getUrl();
                    Map<String, TaskInfo> map = this.f6381if;
                    imageView2.setSelected(map != null ? map.containsKey(url2) : false);
                    textView3.setVisibility(8);
                    imageView.setVisibility(8);
                } else {
                    imageView2.setVisibility(8);
                    textView3.setVisibility(0);
                    imageView.setVisibility(8);
                }
            } else {
                if (this.f6380do) {
                    imageView2.setVisibility(0);
                    String url3 = taskInfo2.getUrl();
                    Map<String, TaskInfo> map2 = this.f6381if;
                    imageView2.setSelected(map2 != null ? map2.containsKey(url3) : false);
                    textView3.setVisibility(8);
                    imageView.setVisibility(8);
                } else {
                    imageView2.setVisibility(8);
                    textView3.setVisibility(8);
                    imageView.setVisibility(0);
                }
                imageView.setImageResource(R.drawable.txt_download_checkbox_bg);
                if (z) {
                    if (i2 == 4) {
                        textView2.setText(this.mContext.getString(R.string.download_faild_txt));
                    } else {
                        textView2.setText(this.mContext.getString(R.string.download_pause_txt));
                    }
                    imageView.setSelected(false);
                } else {
                    if (i2 == 4) {
                        textView2.setText(this.mContext.getString(R.string.download_faild_txt));
                    } else {
                        textView2.setText(this.mContext.getString(R.string.download_ding_txt));
                    }
                    i = 1;
                    imageView.setSelected(true);
                }
            }
            i = 1;
        } else {
            i = 1;
            textView.setText("0/0");
            progressBar.setProgress(0);
            textView2.setText("");
            imageView.setVisibility(4);
        }
        int[] iArr = new int[i];
        iArr[0] = R.id.item_download_file_download;
        baseViewHolder.addOnClickListener(iArr);
    }
}
