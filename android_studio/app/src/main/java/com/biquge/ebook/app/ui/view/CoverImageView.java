package com.biquge.ebook.app.ui.view;

import android.content.Context;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import butterknife.BindView;
import butterknife.ButterKnife;
import com.apk.u;
import com.apk.ze;
import com.biquge.ebook.app.bean.CollectBook;
import com.manhua.data.bean.ComicCollectBean;
import kimi.wuhends.ebooks.R;

/* loaded from: classes8.dex */
public class CoverImageView extends FrameLayout {
    @BindView(R.id.cover_image_icon_iv)
    public ImageView mCoverIv;
    @BindView(R.id.cover_image_name_tv)
    public TextView mNameTv;
    @BindView(R.id.cover_image_type_tv)
    public TextView mTypeTv;

    public CoverImageView(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        LayoutInflater.from(getContext()).inflate(R.layout.cover_image_view, this);
        ButterKnife.bind(this);
    }

    /* renamed from: do  reason: not valid java name */
    public void m3405do(CollectBook collectBook, boolean z) {
        String str;
        if (collectBook != null) {
            boolean isLocalBook = collectBook.isLocalBook();
            int i = R.drawable.web_read_cover_img;
            String str2 = null;
            if (isLocalBook) {
                str2 = collectBook.getName();
                str = ze.q(R.string.main_edit_local_book_txt);
            } else if (!collectBook.isWebSite()) {
                str = null;
                i = 0;
            } else if (z) {
                str2 = collectBook.getName();
                str = ze.q(R.string.web_read_url_txt);
            } else {
                str = null;
            }
            this.mCoverIv.setTag(collectBook.getCollectId());
            if (i != 0) {
                this.mCoverIv.setImageResource(i);
            } else {
                u.m2653public(collectBook.getIcon(), this.mCoverIv);
            }
            if (!TextUtils.isEmpty(str2)) {
                if (str2.length() > 4) {
                    this.mNameTv.setText(TextUtils.substring(str2, 0, 4));
                } else {
                    this.mNameTv.setText(str2);
                }
                this.mNameTv.setVisibility(0);
            } else {
                this.mNameTv.setVisibility(8);
            }
            if (z) {
                if (!TextUtils.isEmpty(str)) {
                    this.mTypeTv.setText(str);
                    this.mTypeTv.setVisibility(0);
                    return;
                }
                this.mNameTv.setVisibility(8);
                this.mTypeTv.setVisibility(8);
            }
        }
    }

    public void setComicCover(ComicCollectBean comicCollectBean) {
        if (comicCollectBean != null) {
            u.m2650import(comicCollectBean.getIcon(), this.mCoverIv);
        }
    }

    public void setCover(CollectBook collectBook) {
        m3405do(collectBook, true);
    }
}
