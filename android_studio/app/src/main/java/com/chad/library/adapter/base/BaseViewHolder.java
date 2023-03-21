package com.chad.library.adapter.base;

import android.graphics.Bitmap;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.text.util.Linkify;
import android.util.SparseArray;
import android.view.View;
import android.widget.Adapter;
import android.widget.AdapterView;
import android.widget.Checkable;
import android.widget.CompoundButton;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.RatingBar;
import android.widget.TextView;
import androidx.annotation.ColorInt;
import androidx.annotation.DrawableRes;
import androidx.annotation.IdRes;
import androidx.annotation.StringRes;
import androidx.recyclerview.widget.RecyclerView;
import java.util.HashSet;
import java.util.LinkedHashSet;
import java.util.Set;

/* loaded from: classes8.dex */
public class BaseViewHolder extends RecyclerView.ViewHolder {
    public BaseQuickAdapter adapter;
    public Object associatedObject;
    public final LinkedHashSet<Integer> childClickViewIds;
    @Deprecated
    public View convertView;
    public final LinkedHashSet<Integer> itemChildLongClickViewIds;
    public final HashSet<Integer> nestViews;
    public final SparseArray<View> views;

    public BaseViewHolder(View view) {
        super(view);
        this.views = new SparseArray<>();
        this.childClickViewIds = new LinkedHashSet<>();
        this.itemChildLongClickViewIds = new LinkedHashSet<>();
        this.nestViews = new HashSet<>();
        this.convertView = view;
    }

    public BaseViewHolder addOnClickListener(@IdRes int... iArr) {
        for (int i : iArr) {
            this.childClickViewIds.add(Integer.valueOf(i));
            View view = getView(i);
            if (view != null) {
                if (!view.isClickable()) {
                    view.setClickable(true);
                }
                view.setOnClickListener(new View.OnClickListener() { // from class: com.chad.library.adapter.base.BaseViewHolder.1
                    @Override // android.view.View.OnClickListener
                    public void onClick(View view2) {
                        int adapterPosition;
                        if (BaseViewHolder.this.adapter.getOnItemChildClickListener() == null || (adapterPosition = BaseViewHolder.this.getAdapterPosition()) == -1) {
                            return;
                        }
                        BaseViewHolder.this.adapter.getOnItemChildClickListener().onItemChildClick(BaseViewHolder.this.adapter, view2, adapterPosition - BaseViewHolder.this.adapter.getHeaderLayoutCount());
                    }
                });
            }
        }
        return this;
    }

    public BaseViewHolder addOnLongClickListener(@IdRes int... iArr) {
        for (int i : iArr) {
            this.itemChildLongClickViewIds.add(Integer.valueOf(i));
            View view = getView(i);
            if (view != null) {
                if (!view.isLongClickable()) {
                    view.setLongClickable(true);
                }
                view.setOnLongClickListener(new View.OnLongClickListener() { // from class: com.chad.library.adapter.base.BaseViewHolder.2
                    @Override // android.view.View.OnLongClickListener
                    public boolean onLongClick(View view2) {
                        int adapterPosition;
                        if (BaseViewHolder.this.adapter.getOnItemChildLongClickListener() == null || (adapterPosition = BaseViewHolder.this.getAdapterPosition()) == -1) {
                            return false;
                        }
                        return BaseViewHolder.this.adapter.getOnItemChildLongClickListener().onItemChildLongClick(BaseViewHolder.this.adapter, view2, adapterPosition - BaseViewHolder.this.adapter.getHeaderLayoutCount());
                    }
                });
            }
        }
        return this;
    }

    public Object getAssociatedObject() {
        return this.associatedObject;
    }

    public HashSet<Integer> getChildClickViewIds() {
        return this.childClickViewIds;
    }

    @Deprecated
    public View getConvertView() {
        return this.convertView;
    }

    public HashSet<Integer> getItemChildLongClickViewIds() {
        return this.itemChildLongClickViewIds;
    }

    public Set<Integer> getNestViews() {
        return this.nestViews;
    }

    public <T extends View> T getView(@IdRes int i) {
        T t = (T) this.views.get(i);
        if (t == null) {
            T t2 = (T) this.itemView.findViewById(i);
            this.views.put(i, t2);
            return t2;
        }
        return t;
    }

    public BaseViewHolder linkify(@IdRes int i) {
        TextView textView = (TextView) getView(i);
        if (textView != null) {
            Linkify.addLinks(textView, 15);
        }
        return this;
    }

    public BaseViewHolder setAdapter(@IdRes int i, Adapter adapter) {
        AdapterView adapterView = (AdapterView) getView(i);
        if (adapterView != null) {
            adapterView.setAdapter(adapter);
        }
        return this;
    }

    public BaseViewHolder setAlpha(@IdRes int i, float f) {
        getView(i).setAlpha(f);
        return this;
    }

    public void setAssociatedObject(Object obj) {
        this.associatedObject = obj;
    }

    public BaseViewHolder setBackgroundColor(@IdRes int i, @ColorInt int i2) {
        View view = getView(i);
        if (view != null) {
            view.setBackgroundColor(i2);
        }
        return this;
    }

    public BaseViewHolder setBackgroundRes(@IdRes int i, @DrawableRes int i2) {
        View view = getView(i);
        if (view != null) {
            view.setBackgroundResource(i2);
        }
        return this;
    }

    public BaseViewHolder setChecked(@IdRes int i, boolean z) {
        View view = getView(i);
        if (view instanceof Checkable) {
            ((Checkable) view).setChecked(z);
        }
        return this;
    }

    public BaseViewHolder setEnabled(@IdRes int i, boolean z) {
        View view = getView(i);
        if (view != null) {
            view.setEnabled(z);
        }
        return this;
    }

    public BaseViewHolder setGone(@IdRes int i, boolean z) {
        View view = getView(i);
        if (view != null) {
            view.setVisibility(z ? 0 : 8);
        }
        return this;
    }

    public BaseViewHolder setImageBitmap(@IdRes int i, Bitmap bitmap) {
        ImageView imageView = (ImageView) getView(i);
        if (imageView != null) {
            imageView.setImageBitmap(bitmap);
        }
        return this;
    }

    public BaseViewHolder setImageDrawable(@IdRes int i, Drawable drawable) {
        ImageView imageView = (ImageView) getView(i);
        if (imageView != null) {
            imageView.setImageDrawable(drawable);
        }
        return this;
    }

    public BaseViewHolder setImageResource(@IdRes int i, @DrawableRes int i2) {
        ImageView imageView = (ImageView) getView(i);
        if (imageView != null) {
            imageView.setImageResource(i2);
        }
        return this;
    }

    public BaseViewHolder setMax(@IdRes int i, int i2) {
        ProgressBar progressBar = (ProgressBar) getView(i);
        if (progressBar != null) {
            progressBar.setMax(i2);
        }
        return this;
    }

    public BaseViewHolder setNestView(@IdRes int... iArr) {
        for (int i : iArr) {
            this.nestViews.add(Integer.valueOf(i));
        }
        addOnClickListener(iArr);
        addOnLongClickListener(iArr);
        return this;
    }

    public BaseViewHolder setOnCheckedChangeListener(@IdRes int i, CompoundButton.OnCheckedChangeListener onCheckedChangeListener) {
        CompoundButton compoundButton = (CompoundButton) getView(i);
        if (compoundButton != null) {
            compoundButton.setOnCheckedChangeListener(onCheckedChangeListener);
        }
        return this;
    }

    @Deprecated
    public BaseViewHolder setOnClickListener(@IdRes int i, View.OnClickListener onClickListener) {
        View view = getView(i);
        if (view != null) {
            view.setOnClickListener(onClickListener);
        }
        return this;
    }

    @Deprecated
    public BaseViewHolder setOnItemClickListener(@IdRes int i, AdapterView.OnItemClickListener onItemClickListener) {
        AdapterView adapterView = (AdapterView) getView(i);
        if (adapterView != null) {
            adapterView.setOnItemClickListener(onItemClickListener);
        }
        return this;
    }

    public BaseViewHolder setOnItemLongClickListener(@IdRes int i, AdapterView.OnItemLongClickListener onItemLongClickListener) {
        AdapterView adapterView = (AdapterView) getView(i);
        if (adapterView != null) {
            adapterView.setOnItemLongClickListener(onItemLongClickListener);
        }
        return this;
    }

    public BaseViewHolder setOnItemSelectedClickListener(@IdRes int i, AdapterView.OnItemSelectedListener onItemSelectedListener) {
        AdapterView adapterView = (AdapterView) getView(i);
        if (adapterView != null) {
            adapterView.setOnItemSelectedListener(onItemSelectedListener);
        }
        return this;
    }

    @Deprecated
    public BaseViewHolder setOnLongClickListener(@IdRes int i, View.OnLongClickListener onLongClickListener) {
        View view = getView(i);
        if (view != null) {
            view.setOnLongClickListener(onLongClickListener);
        }
        return this;
    }

    @Deprecated
    public BaseViewHolder setOnTouchListener(@IdRes int i, View.OnTouchListener onTouchListener) {
        View view = getView(i);
        if (view != null) {
            view.setOnTouchListener(onTouchListener);
        }
        return this;
    }

    public BaseViewHolder setProgress(@IdRes int i, int i2) {
        ProgressBar progressBar = (ProgressBar) getView(i);
        if (progressBar != null) {
            progressBar.setProgress(i2);
        }
        return this;
    }

    public BaseViewHolder setRating(@IdRes int i, float f) {
        RatingBar ratingBar = (RatingBar) getView(i);
        if (ratingBar != null) {
            ratingBar.setRating(f);
        }
        return this;
    }

    public BaseViewHolder setTag(@IdRes int i, Object obj) {
        View view = getView(i);
        if (view != null) {
            view.setTag(obj);
        }
        return this;
    }

    public BaseViewHolder setText(@IdRes int i, CharSequence charSequence) {
        TextView textView = (TextView) getView(i);
        if (textView != null && charSequence != null) {
            textView.setText(charSequence);
        }
        return this;
    }

    public BaseViewHolder setTextColor(@IdRes int i, @ColorInt int i2) {
        TextView textView = (TextView) getView(i);
        if (textView != null) {
            textView.setTextColor(i2);
        }
        return this;
    }

    public BaseViewHolder setTypeface(@IdRes int i, Typeface typeface) {
        TextView textView = (TextView) getView(i);
        if (textView != null) {
            textView.setTypeface(typeface);
            textView.setPaintFlags(textView.getPaintFlags() | 128);
        }
        return this;
    }

    public BaseViewHolder setVisible(@IdRes int i, boolean z) {
        View view = getView(i);
        if (view != null) {
            view.setVisibility(z ? 0 : 4);
        }
        return this;
    }

    public BaseViewHolder setAdapter(BaseQuickAdapter baseQuickAdapter) {
        this.adapter = baseQuickAdapter;
        return this;
    }

    public BaseViewHolder setProgress(@IdRes int i, int i2, int i3) {
        ProgressBar progressBar = (ProgressBar) getView(i);
        if (progressBar != null) {
            progressBar.setMax(i3);
            progressBar.setProgress(i2);
        }
        return this;
    }

    public BaseViewHolder setRating(@IdRes int i, float f, int i2) {
        RatingBar ratingBar = (RatingBar) getView(i);
        if (ratingBar != null) {
            ratingBar.setMax(i2);
            ratingBar.setRating(f);
        }
        return this;
    }

    public BaseViewHolder setTag(@IdRes int i, int i2, Object obj) {
        View view = getView(i);
        if (view != null) {
            view.setTag(i2, obj);
        }
        return this;
    }

    public BaseViewHolder setText(@IdRes int i, @StringRes int i2) {
        TextView textView = (TextView) getView(i);
        if (textView != null) {
            textView.setText(i2);
        }
        return this;
    }

    public BaseViewHolder setTypeface(Typeface typeface, int... iArr) {
        for (int i : iArr) {
            TextView textView = (TextView) getView(i);
            if (textView != null) {
                textView.setTypeface(typeface);
                textView.setPaintFlags(textView.getPaintFlags() | 128);
            }
        }
        return this;
    }
}
