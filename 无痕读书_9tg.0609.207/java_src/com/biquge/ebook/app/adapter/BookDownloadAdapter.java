package com.biquge.ebook.app.adapter;

import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.apk.da;
import com.apk.lq0;
import com.apk.o0;
import com.apk.tr0;
import com.apk.ze;
import com.biquge.ebook.app.bean.CollectBook;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.BaseViewHolder;
import kimi.wuhends.ebooks.R;
/* loaded from: classes8.dex */
public class BookDownloadAdapter extends BaseQuickAdapter<CollectBook, BaseViewHolder> {
    public String mDownloadTag;
    public String mFaildTag;
    public String mFenDuanTag;
    public final int mFilterColor;
    public String mPauseTag;
    public String mPrepareTag;
    public final RecyclerView mRecyclerView;
    public String mSuccessTag;
    public String mUnZipTag;
    public String mVideoAdTag;

    public BookDownloadAdapter(RecyclerView recyclerView) {
        super((int) R.layout.item_downlod_manager_view);
        this.mRecyclerView = recyclerView;
        this.mFilterColor = lq0.m1660do(recyclerView.getContext().getApplicationContext(), tr0.m2617do(R.color.colorAccent));
    }

    private void setCacheStateTxt(int i, TextView textView, ImageView imageView) {
        try {
            if (i == -1) {
                if (this.mFaildTag == null) {
                    this.mFaildTag = ze.q(R.string.download_faild_txt);
                }
                setValueTxt(textView, this.mFaildTag);
                setSelected(imageView, true);
            } else if (i == 0) {
                if (this.mDownloadTag == null) {
                    this.mDownloadTag = ze.q(R.string.download_ding_txt);
                }
                setValueTxt(textView, this.mDownloadTag);
                setSelected(imageView, false);
            } else if (i == 1) {
                if (this.mPauseTag == null) {
                    this.mPauseTag = ze.q(R.string.download_pause_txt);
                }
                setValueTxt(textView, this.mPauseTag);
                setSelected(imageView, true);
            } else if (i == 2) {
                if (this.mSuccessTag == null) {
                    this.mSuccessTag = ze.q(R.string.download_success_txt);
                }
                setValueTxt(textView, this.mSuccessTag);
                setSelected(imageView, true);
            } else if (i == 3) {
                if (this.mPrepareTag == null) {
                    this.mPrepareTag = ze.q(R.string.download_prepare_txt);
                }
                setValueTxt(textView, this.mPrepareTag);
                setSelected(imageView, true);
            } else if (i == 5) {
                if (this.mVideoAdTag == null) {
                    this.mVideoAdTag = ze.q(R.string.download_video_ad_txt);
                }
                setValueTxt(textView, this.mVideoAdTag);
                setSelected(imageView, true);
            } else if (i == 6) {
                if (this.mUnZipTag == null) {
                    this.mUnZipTag = ze.q(R.string.download_unzip_txt);
                }
                setValueTxt(textView, this.mUnZipTag);
                setSelected(imageView, true);
            } else if (i != 7) {
            } else {
                if (this.mFenDuanTag == null) {
                    this.mFenDuanTag = ze.q(R.string.download_piecewise_txt);
                }
                setValueTxt(textView, this.mFenDuanTag);
                setSelected(imageView, true);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    private void setSelected(ImageView imageView, boolean z) {
        if (imageView != null) {
            if (z) {
                imageView.setImageResource(R.drawable.play);
                if (da.m438while()) {
                    imageView.setColorFilter(ze.p(R.color.colorAccent));
                    return;
                } else {
                    imageView.setColorFilter(this.mFilterColor);
                    return;
                }
            }
            imageView.setImageResource(R.drawable.pause);
            imageView.clearColorFilter();
        }
    }

    private void setValueTxt(TextView textView, String str) {
        if (textView != null) {
            textView.setText(str);
        }
    }

    public synchronized void refreshTxt(CollectBook collectBook) {
        try {
            String collectId = collectBook.getCollectId();
            RecyclerView recyclerView = this.mRecyclerView;
            TextView textView = (TextView) recyclerView.findViewWithTag("progressTxt" + collectId);
            if (textView != null) {
                if (collectBook.getMax() == 0 && collectBook.getProgress() == 0) {
                    textView.setText("-");
                } else {
                    int percentage = collectBook.getPercentage();
                    if (percentage > 0) {
                        textView.setText(percentage + "%");
                    } else {
                        textView.setText(ze.r(R.string.download_progress_progress_txt, Integer.valueOf(collectBook.getProgress()), Integer.valueOf(collectBook.getMax())));
                    }
                }
            }
            RecyclerView recyclerView2 = this.mRecyclerView;
            ProgressBar progressBar = (ProgressBar) recyclerView2.findViewWithTag("progressBar" + collectId);
            if (progressBar != null) {
                if (collectBook.getMax() != 0) {
                    progressBar.setMax(collectBook.getMax());
                }
                progressBar.setProgress(collectBook.getProgress());
            }
            RecyclerView recyclerView3 = this.mRecyclerView;
            TextView textView2 = (TextView) recyclerView3.findViewWithTag("stateValueTxt" + collectId);
            RecyclerView recyclerView4 = this.mRecyclerView;
            ImageView imageView = (ImageView) recyclerView4.findViewWithTag("stateTxt" + collectId);
            int state = collectBook.getState();
            CollectBook m1927case = o0.m1925else().m1927case(collectId);
            if (m1927case != null) {
                state = m1927case.getState();
            }
            setCacheStateTxt(state, textView2, imageView);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override // com.chad.library.adapter.base.BaseQuickAdapter
    public void convert(BaseViewHolder baseViewHolder, CollectBook collectBook) {
        try {
            baseViewHolder.setText(R.id.item_book_shlef_grid_name, collectBook.getName());
            CollectBook m1927case = o0.m1925else().m1927case(collectBook.getCollectId());
            int state = collectBook.getState();
            int max = collectBook.getMax();
            int progress = collectBook.getProgress();
            int percentage = collectBook.getPercentage();
            if (m1927case != null) {
                state = m1927case.getState();
                max = m1927case.getMax();
                progress = m1927case.getProgress();
                percentage = m1927case.getPercentage();
            }
            String collectId = collectBook.getCollectId();
            TextView textView = (TextView) baseViewHolder.getView(R.id.textBookUpdateStatus);
            textView.setTag("progressTxt" + collectId);
            if (max == 0 && progress == 0) {
                textView.setText("-");
            } else if (percentage > 0) {
                textView.setText(percentage + "%");
            } else {
                textView.setText(ze.r(R.string.download_progress_progress_txt, Integer.valueOf(progress), Integer.valueOf(max)));
            }
            ProgressBar progressBar = (ProgressBar) baseViewHolder.getView(R.id.item_download_manager_progressbar);
            if (max > 0) {
                progressBar.setMax(max);
            }
            progressBar.setProgress(progress);
            progressBar.setTag("progressBar" + collectId);
            ImageView imageView = (ImageView) baseViewHolder.getView(R.id.item_download_manager_state_bt);
            imageView.setTag("stateTxt" + collectId);
            TextView textView2 = (TextView) baseViewHolder.getView(R.id.item_download_state_txt);
            textView2.setTag("stateValueTxt" + collectId);
            if (m1927case != null) {
                state = m1927case.getState();
            }
            setCacheStateTxt(state, textView2, imageView);
        } catch (Exception e) {
            e.printStackTrace();
        }
        baseViewHolder.addOnClickListener(R.id.item_download_manager_state_bt);
    }
}
