package com.manhua.adapter;

import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.apk.da;
import com.apk.lq0;
import com.apk.o0;
import com.apk.tr0;
import com.apk.ze;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.BaseViewHolder;
import com.manhua.data.bean.ComicCollectBean;
import kimi.wuhends.ebooks.R;

/* loaded from: classes8.dex */
public class ComicDownloadAdapter extends BaseQuickAdapter<ComicCollectBean, BaseViewHolder> {

    /* renamed from: case  reason: not valid java name */
    public String f9599case;

    /* renamed from: do  reason: not valid java name */
    public final RecyclerView f9600do;

    /* renamed from: else  reason: not valid java name */
    public String f9601else;

    /* renamed from: for  reason: not valid java name */
    public String f9602for;

    /* renamed from: goto  reason: not valid java name */
    public String f9603goto;

    /* renamed from: if  reason: not valid java name */
    public final int f9604if;

    /* renamed from: new  reason: not valid java name */
    public String f9605new;

    /* renamed from: try  reason: not valid java name */
    public String f9606try;

    public ComicDownloadAdapter(RecyclerView recyclerView) {
        super((int) R.layout.item_downlod_manager_view);
        this.f9600do = recyclerView;
        this.f9604if = lq0.m1660do(recyclerView.getContext().getApplicationContext(), tr0.m2617do(R.color.colorAccent));
    }

    @Override // com.chad.library.adapter.base.BaseQuickAdapter
    public void convert(BaseViewHolder baseViewHolder, ComicCollectBean comicCollectBean) {
        ComicCollectBean comicCollectBean2 = comicCollectBean;
        try {
            ComicCollectBean comicCollectBean3 = o0.m1925else().f3336new.get(comicCollectBean2.getCollectId());
            baseViewHolder.setText(R.id.item_book_shlef_grid_name, comicCollectBean2.getName());
            int max = comicCollectBean2.getMax();
            int progress = comicCollectBean2.getProgress();
            if (comicCollectBean3 != null) {
                max = comicCollectBean3.getMax();
                progress = comicCollectBean3.getProgress();
            }
            TextView textView = (TextView) baseViewHolder.getView(R.id.textBookUpdateStatus);
            textView.setText(progress + "/" + max);
            StringBuilder sb = new StringBuilder();
            sb.append("progressTxt");
            sb.append(comicCollectBean2.getCollectId());
            textView.setTag(sb.toString());
            ProgressBar progressBar = (ProgressBar) baseViewHolder.getView(R.id.item_download_manager_progressbar);
            progressBar.setMax(max);
            progressBar.setProgress(progress);
            progressBar.setTag("progressBar" + comicCollectBean2.getCollectId());
            ImageView imageView = (ImageView) baseViewHolder.getView(R.id.item_download_manager_state_bt);
            imageView.setTag("stateTxt" + comicCollectBean2.getCollectId());
            TextView textView2 = (TextView) baseViewHolder.getView(R.id.item_download_state_txt);
            textView2.setTag("stateValueTxt" + comicCollectBean2.getCollectId());
            int state = comicCollectBean2.getState();
            if (comicCollectBean3 != null) {
                state = comicCollectBean3.getState();
            }
            setCacheStateTxt(state, textView2, imageView);
        } catch (Exception e) {
            e.printStackTrace();
        }
        baseViewHolder.addOnClickListener(R.id.item_download_manager_state_bt);
    }

    /* renamed from: do  reason: not valid java name */
    public synchronized void m3608do(ComicCollectBean comicCollectBean) {
        try {
            String collectId = comicCollectBean.getCollectId();
            RecyclerView recyclerView = this.f9600do;
            TextView textView = (TextView) recyclerView.findViewWithTag("progressTxt" + collectId);
            if (textView != null) {
                textView.setText(comicCollectBean.getProgress() + "/" + comicCollectBean.getMax());
            }
            RecyclerView recyclerView2 = this.f9600do;
            ProgressBar progressBar = (ProgressBar) recyclerView2.findViewWithTag("progressBar" + collectId);
            if (progressBar != null) {
                progressBar.setMax(comicCollectBean.getMax());
                progressBar.setProgress(comicCollectBean.getProgress());
            }
            RecyclerView recyclerView3 = this.f9600do;
            TextView textView2 = (TextView) recyclerView3.findViewWithTag("stateValueTxt" + collectId);
            RecyclerView recyclerView4 = this.f9600do;
            ImageView imageView = (ImageView) recyclerView4.findViewWithTag("stateTxt" + collectId);
            int state = comicCollectBean.getState();
            ComicCollectBean comicCollectBean2 = o0.m1925else().f3336new.get(collectId);
            if (comicCollectBean2 != null) {
                state = comicCollectBean2.getState();
            }
            setCacheStateTxt(state, textView2, imageView);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public final void setCacheStateTxt(int i, TextView textView, ImageView imageView) {
        try {
            if (i == -1) {
                if (this.f9602for == null) {
                    this.f9602for = ze.q(R.string.download_faild_txt);
                }
                String str = this.f9602for;
                if (textView != null) {
                    textView.setText(str);
                }
                setSelected(imageView, true);
            } else if (i == 0) {
                if (this.f9605new == null) {
                    this.f9605new = ze.q(R.string.download_ding_txt);
                }
                String str2 = this.f9605new;
                if (textView != null) {
                    textView.setText(str2);
                }
                setSelected(imageView, false);
            } else if (i == 1) {
                if (this.f9606try == null) {
                    this.f9606try = ze.q(R.string.download_pause_txt);
                }
                String str3 = this.f9606try;
                if (textView != null) {
                    textView.setText(str3);
                }
                setSelected(imageView, true);
            } else if (i == 2) {
                if (this.f9599case == null) {
                    this.f9599case = ze.q(R.string.download_success_txt);
                }
                String str4 = this.f9599case;
                if (textView != null) {
                    textView.setText(str4);
                }
                setSelected(imageView, true);
            } else if (i == 3) {
                if (this.f9601else == null) {
                    this.f9601else = ze.q(R.string.download_prepare_txt);
                }
                String str5 = this.f9601else;
                if (textView != null) {
                    textView.setText(str5);
                }
                setSelected(imageView, true);
            } else if (i == 5) {
                if (this.f9603goto == null) {
                    this.f9603goto = ze.q(R.string.download_video_ad_txt);
                }
                String str6 = this.f9603goto;
                if (textView != null) {
                    textView.setText(str6);
                }
                setSelected(imageView, true);
            }
            if (i == 5) {
                textView.setTextColor(ze.p(R.color.color_brown));
            } else {
                textView.setTextColor(ze.p(R.color.color_666666));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public final void setSelected(ImageView imageView, boolean z) {
        if (imageView != null) {
            if (z) {
                imageView.setImageResource(R.drawable.play);
                if (da.m438while()) {
                    imageView.setColorFilter(ze.p(R.color.colorAccent));
                    return;
                } else {
                    imageView.setColorFilter(this.f9604if);
                    return;
                }
            }
            imageView.setImageResource(R.drawable.pause);
            imageView.clearColorFilter();
        }
    }
}
