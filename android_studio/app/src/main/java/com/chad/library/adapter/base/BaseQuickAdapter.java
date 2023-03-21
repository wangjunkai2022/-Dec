package com.chad.library.adapter.base;

import android.animation.Animator;
import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.animation.Interpolator;
import android.view.animation.LinearInterpolator;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import androidx.annotation.IdRes;
import androidx.annotation.IntRange;
import androidx.annotation.LayoutRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.widget.ActivityChooserView;
import androidx.recyclerview.widget.DiffUtil;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.StaggeredGridLayoutManager;
import com.chad.library.adapter.base.BaseViewHolder;
import com.chad.library.adapter.base.animation.AlphaInAnimation;
import com.chad.library.adapter.base.animation.BaseAnimation;
import com.chad.library.adapter.base.animation.ScaleInAnimation;
import com.chad.library.adapter.base.animation.SlideInBottomAnimation;
import com.chad.library.adapter.base.animation.SlideInLeftAnimation;
import com.chad.library.adapter.base.animation.SlideInRightAnimation;
import com.chad.library.adapter.base.diff.BaseQuickAdapterListUpdateCallback;
import com.chad.library.adapter.base.diff.BaseQuickDiffCallback;
import com.chad.library.adapter.base.entity.IExpandable;
import com.chad.library.adapter.base.loadmore.LoadMoreView;
import com.chad.library.adapter.base.loadmore.SimpleLoadMoreView;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.reflect.Constructor;
import java.lang.reflect.GenericSignatureFormatError;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.MalformedParameterizedTypeException;
import java.lang.reflect.Modifier;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

/* loaded from: classes8.dex */
public abstract class BaseQuickAdapter<T, K extends BaseViewHolder> extends RecyclerView.Adapter<K> {
    public static final int ALPHAIN = 1;
    public static final int EMPTY_VIEW = 1365;
    public static final int FOOTER_VIEW = 819;
    public static final int HEADER_VIEW = 273;
    public static final int LOADING_VIEW = 546;
    public static final int SCALEIN = 2;
    public static final int SLIDEIN_BOTTOM = 3;
    public static final int SLIDEIN_LEFT = 4;
    public static final int SLIDEIN_RIGHT = 5;
    public static final String TAG = "BaseQuickAdapter";
    public boolean footerViewAsFlow;
    public boolean headerViewAsFlow;
    public Context mContext;
    public BaseAnimation mCustomAnimation;
    public List<T> mData;
    public int mDuration;
    public FrameLayout mEmptyLayout;
    public boolean mEnableLoadMoreEndClick;
    public boolean mFirstOnlyEnable;
    public boolean mFootAndEmptyEnable;
    public LinearLayout mFooterLayout;
    public boolean mHeadAndEmptyEnable;
    public LinearLayout mHeaderLayout;
    public Interpolator mInterpolator;
    public boolean mIsUseEmpty;
    public int mLastPosition;
    public LayoutInflater mLayoutInflater;
    public int mLayoutResId;
    public boolean mLoadMoreEnable;
    public LoadMoreView mLoadMoreView;
    public boolean mLoading;
    public boolean mNextLoadEnable;
    public OnItemChildClickListener mOnItemChildClickListener;
    public OnItemChildLongClickListener mOnItemChildLongClickListener;
    public OnItemClickListener mOnItemClickListener;
    public OnItemLongClickListener mOnItemLongClickListener;
    public boolean mOpenAnimationEnable;
    public int mPreLoadNumber;
    public RecyclerView mRecyclerView;
    public RequestLoadMoreListener mRequestLoadMoreListener;
    public BaseAnimation mSelectAnimation;
    public SpanSizeLookup mSpanSizeLookup;
    public int mStartUpFetchPosition;
    public boolean mUpFetchEnable;
    public UpFetchListener mUpFetchListener;
    public boolean mUpFetching;

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes8.dex */
    public @interface AnimationType {
    }

    /* loaded from: classes8.dex */
    public interface OnItemChildClickListener {
        void onItemChildClick(BaseQuickAdapter baseQuickAdapter, View view, int i);
    }

    /* loaded from: classes8.dex */
    public interface OnItemChildLongClickListener {
        boolean onItemChildLongClick(BaseQuickAdapter baseQuickAdapter, View view, int i);
    }

    /* loaded from: classes8.dex */
    public interface OnItemClickListener {
        void onItemClick(BaseQuickAdapter baseQuickAdapter, View view, int i);
    }

    /* loaded from: classes8.dex */
    public interface OnItemLongClickListener {
        boolean onItemLongClick(BaseQuickAdapter baseQuickAdapter, View view, int i);
    }

    /* loaded from: classes8.dex */
    public interface RequestLoadMoreListener {
        void onLoadMoreRequested();
    }

    /* loaded from: classes8.dex */
    public interface SpanSizeLookup {
        int getSpanSize(GridLayoutManager gridLayoutManager, int i);
    }

    /* loaded from: classes8.dex */
    public interface UpFetchListener {
        void onUpFetch();
    }

    public BaseQuickAdapter(@LayoutRes int i, @Nullable List<T> list) {
        this.mNextLoadEnable = false;
        this.mLoadMoreEnable = false;
        this.mLoading = false;
        this.mLoadMoreView = new SimpleLoadMoreView();
        this.mEnableLoadMoreEndClick = false;
        this.mFirstOnlyEnable = true;
        this.mOpenAnimationEnable = false;
        this.mInterpolator = new LinearInterpolator();
        this.mDuration = 300;
        this.mLastPosition = -1;
        this.mSelectAnimation = new AlphaInAnimation();
        this.mIsUseEmpty = true;
        this.mPreLoadNumber = 1;
        this.mStartUpFetchPosition = 1;
        this.mData = list == null ? new ArrayList<>() : list;
        if (i != 0) {
            this.mLayoutResId = i;
        }
    }

    private void addAnimation(RecyclerView.ViewHolder viewHolder) {
        if (this.mOpenAnimationEnable) {
            if (!this.mFirstOnlyEnable || viewHolder.getLayoutPosition() > this.mLastPosition) {
                BaseAnimation baseAnimation = this.mCustomAnimation;
                if (baseAnimation == null) {
                    baseAnimation = this.mSelectAnimation;
                }
                for (Animator animator : baseAnimation.getAnimators(viewHolder.itemView)) {
                    startAnim(animator, viewHolder.getLayoutPosition());
                }
                this.mLastPosition = viewHolder.getLayoutPosition();
            }
        }
    }

    private void autoLoadMore(int i) {
        if (getLoadMoreViewCount() != 0 && i >= getItemCount() - this.mPreLoadNumber && this.mLoadMoreView.getLoadMoreStatus() == 1) {
            this.mLoadMoreView.setLoadMoreStatus(2);
            if (this.mLoading) {
                return;
            }
            this.mLoading = true;
            if (getRecyclerView() != null) {
                getRecyclerView().post(new Runnable() { // from class: com.chad.library.adapter.base.BaseQuickAdapter.7
                    @Override // java.lang.Runnable
                    public void run() {
                        if (BaseQuickAdapter.this.mRequestLoadMoreListener != null) {
                            BaseQuickAdapter.this.mRequestLoadMoreListener.onLoadMoreRequested();
                        }
                    }
                });
                return;
            }
            RequestLoadMoreListener requestLoadMoreListener = this.mRequestLoadMoreListener;
            if (requestLoadMoreListener != null) {
                requestLoadMoreListener.onLoadMoreRequested();
            }
        }
    }

    private void autoUpFetch(int i) {
        UpFetchListener upFetchListener;
        if (!isUpFetchEnable() || isUpFetching() || i > this.mStartUpFetchPosition || (upFetchListener = this.mUpFetchListener) == null) {
            return;
        }
        upFetchListener.onUpFetch();
    }

    private void checkNotNull() {
        if (getRecyclerView() == null) {
            throw new IllegalStateException("please bind recyclerView first!");
        }
    }

    private void compatibilityDataSizeChanged(int i) {
        List<T> list = this.mData;
        if ((list == null ? 0 : list.size()) == i) {
            notifyDataSetChanged();
        }
    }

    private K createGenericKInstance(Class cls, View view) {
        try {
            if (cls.isMemberClass() && !Modifier.isStatic(cls.getModifiers())) {
                Constructor<T> declaredConstructor = cls.getDeclaredConstructor(getClass(), View.class);
                declaredConstructor.setAccessible(true);
                return (K) declaredConstructor.newInstance(this, view);
            }
            Constructor<T> declaredConstructor2 = cls.getDeclaredConstructor(View.class);
            declaredConstructor2.setAccessible(true);
            return (K) declaredConstructor2.newInstance(view);
        } catch (IllegalAccessException e) {
            e.printStackTrace();
            return null;
        } catch (InstantiationException e2) {
            e2.printStackTrace();
            return null;
        } catch (NoSuchMethodException e3) {
            e3.printStackTrace();
            return null;
        } catch (InvocationTargetException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    private IExpandable getExpandableItem(int i) {
        T item = getItem(i);
        if (isExpandable(item)) {
            return (IExpandable) item;
        }
        return null;
    }

    private int getFooterViewPosition() {
        int i = 1;
        if (getEmptyViewCount() == 1) {
            if (this.mHeadAndEmptyEnable && getHeaderLayoutCount() != 0) {
                i = 2;
            }
            if (this.mFootAndEmptyEnable) {
                return i;
            }
            return -1;
        }
        return this.mData.size() + getHeaderLayoutCount();
    }

    private int getHeaderViewPosition() {
        return (getEmptyViewCount() != 1 || this.mHeadAndEmptyEnable) ? 0 : -1;
    }

    private Class getInstancedGenericKClass(Class cls) {
        Type[] actualTypeArguments;
        try {
            Type genericSuperclass = cls.getGenericSuperclass();
            if (genericSuperclass instanceof ParameterizedType) {
                for (Type type : ((ParameterizedType) genericSuperclass).getActualTypeArguments()) {
                    if (type instanceof Class) {
                        Class cls2 = (Class) type;
                        if (BaseViewHolder.class.isAssignableFrom(cls2)) {
                            return cls2;
                        }
                    } else if (type instanceof ParameterizedType) {
                        Type rawType = ((ParameterizedType) type).getRawType();
                        if ((rawType instanceof Class) && BaseViewHolder.class.isAssignableFrom((Class) rawType)) {
                            return (Class) rawType;
                        }
                    } else {
                        continue;
                    }
                }
                return null;
            }
            return null;
        } catch (TypeNotPresentException e) {
            e.printStackTrace();
            return null;
        } catch (GenericSignatureFormatError e2) {
            e2.printStackTrace();
            return null;
        } catch (MalformedParameterizedTypeException e3) {
            e3.printStackTrace();
            return null;
        }
    }

    private int getItemPosition(T t) {
        List<T> list;
        if (t == null || (list = this.mData) == null || list.isEmpty()) {
            return -1;
        }
        return this.mData.indexOf(t);
    }

    private K getLoadingView(ViewGroup viewGroup) {
        K createBaseViewHolder = createBaseViewHolder(getItemView(this.mLoadMoreView.getLayoutId(), viewGroup));
        createBaseViewHolder.itemView.setOnClickListener(new View.OnClickListener() { // from class: com.chad.library.adapter.base.BaseQuickAdapter.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (BaseQuickAdapter.this.mLoadMoreView.getLoadMoreStatus() == 3) {
                    BaseQuickAdapter.this.notifyLoadMoreToLoading();
                }
                if (BaseQuickAdapter.this.mEnableLoadMoreEndClick && BaseQuickAdapter.this.mLoadMoreView.getLoadMoreStatus() == 4) {
                    BaseQuickAdapter.this.notifyLoadMoreToLoading();
                }
            }
        });
        return createBaseViewHolder;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getTheBiggestNumber(int[] iArr) {
        int i = -1;
        if (iArr != null && iArr.length != 0) {
            for (int i2 : iArr) {
                if (i2 > i) {
                    i = i2;
                }
            }
        }
        return i;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isFullScreen(LinearLayoutManager linearLayoutManager) {
        return (linearLayoutManager.findLastCompletelyVisibleItemPosition() + 1 == getItemCount() && linearLayoutManager.findFirstCompletelyVisibleItemPosition() == 0) ? false : true;
    }

    private void openLoadMore(RequestLoadMoreListener requestLoadMoreListener) {
        this.mRequestLoadMoreListener = requestLoadMoreListener;
        this.mNextLoadEnable = true;
        this.mLoadMoreEnable = true;
        this.mLoading = false;
    }

    private int recursiveCollapse(@IntRange(from = 0) int i) {
        T item = getItem(i);
        if (item == null || !isExpandable(item)) {
            return 0;
        }
        IExpandable iExpandable = (IExpandable) item;
        if (iExpandable.isExpanded()) {
            ArrayList arrayList = new ArrayList();
            int level = iExpandable.getLevel();
            int size = this.mData.size();
            for (int i2 = i + 1; i2 < size; i2++) {
                T t = this.mData.get(i2);
                if ((t instanceof IExpandable) && ((IExpandable) t).getLevel() <= level) {
                    break;
                }
                arrayList.add(t);
            }
            this.mData.removeAll(arrayList);
            return arrayList.size();
        }
        return 0;
    }

    private int recursiveExpand(int i, @NonNull List list) {
        int size = list.size();
        int size2 = (list.size() + i) - 1;
        int size3 = list.size() - 1;
        while (size3 >= 0) {
            if (list.get(size3) instanceof IExpandable) {
                IExpandable iExpandable = (IExpandable) list.get(size3);
                if (iExpandable.isExpanded() && hasSubItems(iExpandable)) {
                    List<T> subItems = iExpandable.getSubItems();
                    int i2 = size2 + 1;
                    this.mData.addAll(i2, subItems);
                    size += recursiveExpand(i2, subItems);
                }
            }
            size3--;
            size2--;
        }
        return size;
    }

    private void setRecyclerView(RecyclerView recyclerView) {
        this.mRecyclerView = recyclerView;
    }

    @Deprecated
    public void add(@IntRange(from = 0) int i, @NonNull T t) {
        addData(i, (int) t);
    }

    public void addData(@IntRange(from = 0) int i, @NonNull T t) {
        this.mData.add(i, t);
        notifyItemInserted(getHeaderLayoutCount() + i);
        compatibilityDataSizeChanged(1);
    }

    public int addFooterView(View view) {
        return addFooterView(view, -1, 1);
    }

    public int addHeaderView(View view) {
        return addHeaderView(view, -1);
    }

    public void bindToRecyclerView(RecyclerView recyclerView) {
        if (getRecyclerView() != recyclerView) {
            setRecyclerView(recyclerView);
            getRecyclerView().setAdapter(this);
            return;
        }
        throw new IllegalStateException("Don't bind twice");
    }

    public void bindViewClickListener(final K k) {
        if (k == null) {
            return;
        }
        View view = k.itemView;
        if (getOnItemClickListener() != null) {
            view.setOnClickListener(new View.OnClickListener() { // from class: com.chad.library.adapter.base.BaseQuickAdapter.5
                @Override // android.view.View.OnClickListener
                public void onClick(View view2) {
                    int adapterPosition = k.getAdapterPosition();
                    if (adapterPosition == -1) {
                        return;
                    }
                    BaseQuickAdapter.this.setOnItemClick(view2, adapterPosition - BaseQuickAdapter.this.getHeaderLayoutCount());
                }
            });
        }
        if (getOnItemLongClickListener() != null) {
            view.setOnLongClickListener(new View.OnLongClickListener() { // from class: com.chad.library.adapter.base.BaseQuickAdapter.6
                @Override // android.view.View.OnLongClickListener
                public boolean onLongClick(View view2) {
                    int adapterPosition = k.getAdapterPosition();
                    if (adapterPosition == -1) {
                        return false;
                    }
                    return BaseQuickAdapter.this.setOnItemLongClick(view2, adapterPosition - BaseQuickAdapter.this.getHeaderLayoutCount());
                }
            });
        }
    }

    public void closeLoadAnimation() {
        this.mOpenAnimationEnable = false;
    }

    public int collapse(@IntRange(from = 0) int i, boolean z, boolean z2) {
        int headerLayoutCount = i - getHeaderLayoutCount();
        IExpandable expandableItem = getExpandableItem(headerLayoutCount);
        if (expandableItem == null) {
            return 0;
        }
        int recursiveCollapse = recursiveCollapse(headerLayoutCount);
        expandableItem.setExpanded(false);
        if (z2) {
            if (z) {
                notifyItemChanged(i);
                notifyItemRangeRemoved(i + 1, recursiveCollapse);
            } else {
                notifyDataSetChanged();
            }
        }
        return recursiveCollapse;
    }

    public abstract void convert(@NonNull K k, T t);

    public void convertPayloads(@NonNull K k, T t, @NonNull List<Object> list) {
    }

    public K createBaseViewHolder(ViewGroup viewGroup, int i) {
        return createBaseViewHolder(getItemView(i, viewGroup));
    }

    public void disableLoadMoreIfNotFullPage() {
        checkNotNull();
        disableLoadMoreIfNotFullPage(getRecyclerView());
    }

    public void enableLoadMoreEndClick(boolean z) {
        this.mEnableLoadMoreEndClick = z;
    }

    public int expand(@IntRange(from = 0) int i, boolean z, boolean z2) {
        int headerLayoutCount = i - getHeaderLayoutCount();
        IExpandable expandableItem = getExpandableItem(headerLayoutCount);
        int i2 = 0;
        if (expandableItem == null) {
            return 0;
        }
        if (!hasSubItems(expandableItem)) {
            expandableItem.setExpanded(true);
            notifyItemChanged(i);
            return 0;
        }
        if (!expandableItem.isExpanded()) {
            List<T> subItems = expandableItem.getSubItems();
            int i3 = headerLayoutCount + 1;
            this.mData.addAll(i3, subItems);
            i2 = 0 + recursiveExpand(i3, subItems);
            expandableItem.setExpanded(true);
        }
        if (z2) {
            if (z) {
                notifyItemChanged(i);
                notifyItemRangeInserted(i + 1, i2);
            } else {
                notifyDataSetChanged();
            }
        }
        return i2;
    }

    public int expandAll(int i, boolean z, boolean z2) {
        T item;
        int headerLayoutCount = i - getHeaderLayoutCount();
        IExpandable expandableItem = getExpandableItem(headerLayoutCount);
        if (expandableItem == null) {
            return 0;
        }
        if (!hasSubItems(expandableItem)) {
            expandableItem.setExpanded(true);
            notifyItemChanged(i);
            return 0;
        }
        int i2 = headerLayoutCount + 1;
        T item2 = i2 < this.mData.size() ? getItem(i2) : null;
        int expand = expand(i, false, false);
        while (i2 < this.mData.size() && ((item = getItem(i2)) == null || !item.equals(item2))) {
            if (isExpandable(item)) {
                expand = expand(getHeaderLayoutCount() + i2, false, false) + expand;
            }
            i2++;
        }
        if (z2) {
            if (z) {
                notifyItemChanged(i);
                notifyItemRangeInserted(i + 1, expand);
            } else {
                notifyDataSetChanged();
            }
        }
        return expand;
    }

    @NonNull
    public List<T> getData() {
        return this.mData;
    }

    public int getDefItemViewType(int i) {
        return super.getItemViewType(i);
    }

    public View getEmptyView() {
        return this.mEmptyLayout;
    }

    public int getEmptyViewCount() {
        FrameLayout frameLayout = this.mEmptyLayout;
        return (frameLayout == null || frameLayout.getChildCount() == 0 || !this.mIsUseEmpty || this.mData.size() != 0) ? 0 : 1;
    }

    public LinearLayout getFooterLayout() {
        return this.mFooterLayout;
    }

    public int getFooterLayoutCount() {
        LinearLayout linearLayout = this.mFooterLayout;
        return (linearLayout == null || linearLayout.getChildCount() == 0) ? 0 : 1;
    }

    @Deprecated
    public int getFooterViewsCount() {
        return getFooterLayoutCount();
    }

    public LinearLayout getHeaderLayout() {
        return this.mHeaderLayout;
    }

    public int getHeaderLayoutCount() {
        LinearLayout linearLayout = this.mHeaderLayout;
        return (linearLayout == null || linearLayout.getChildCount() == 0) ? 0 : 1;
    }

    @Deprecated
    public int getHeaderViewsCount() {
        return getHeaderLayoutCount();
    }

    @Nullable
    public T getItem(@IntRange(from = 0) int i) {
        if (i < 0 || i >= this.mData.size()) {
            return null;
        }
        return this.mData.get(i);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        int i = 1;
        if (1 != getEmptyViewCount()) {
            return getLoadMoreViewCount() + getFooterLayoutCount() + this.mData.size() + getHeaderLayoutCount();
        }
        if (this.mHeadAndEmptyEnable && getHeaderLayoutCount() != 0) {
            i = 2;
        }
        return (!this.mFootAndEmptyEnable || getFooterLayoutCount() == 0) ? i : i + 1;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public long getItemId(int i) {
        return i;
    }

    public View getItemView(@LayoutRes int i, ViewGroup viewGroup) {
        return this.mLayoutInflater.inflate(i, viewGroup, false);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemViewType(int i) {
        if (getEmptyViewCount() == 1) {
            boolean z = this.mHeadAndEmptyEnable && getHeaderLayoutCount() != 0;
            if (i != 0) {
                return i != 1 ? i != 2 ? EMPTY_VIEW : FOOTER_VIEW : z ? EMPTY_VIEW : FOOTER_VIEW;
            } else if (z) {
                return 273;
            } else {
                return EMPTY_VIEW;
            }
        }
        int headerLayoutCount = getHeaderLayoutCount();
        if (i < headerLayoutCount) {
            return 273;
        }
        int i2 = i - headerLayoutCount;
        int size = this.mData.size();
        if (i2 < size) {
            return getDefItemViewType(i2);
        }
        return i2 - size < getFooterLayoutCount() ? FOOTER_VIEW : LOADING_VIEW;
    }

    public int getLoadMoreViewCount() {
        if (this.mRequestLoadMoreListener == null || !this.mLoadMoreEnable) {
            return 0;
        }
        return ((this.mNextLoadEnable || !this.mLoadMoreView.isLoadEndMoreGone()) && this.mData.size() != 0) ? 1 : 0;
    }

    public int getLoadMoreViewPosition() {
        return getFooterLayoutCount() + this.mData.size() + getHeaderLayoutCount();
    }

    @Nullable
    public final OnItemChildClickListener getOnItemChildClickListener() {
        return this.mOnItemChildClickListener;
    }

    @Nullable
    public final OnItemChildLongClickListener getOnItemChildLongClickListener() {
        return this.mOnItemChildLongClickListener;
    }

    public final OnItemClickListener getOnItemClickListener() {
        return this.mOnItemClickListener;
    }

    public final OnItemLongClickListener getOnItemLongClickListener() {
        return this.mOnItemLongClickListener;
    }

    public int getParentPosition(@NonNull T t) {
        int itemPosition = getItemPosition(t);
        if (itemPosition == -1) {
            return -1;
        }
        int level = t instanceof IExpandable ? ((IExpandable) t).getLevel() : ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED;
        if (level == 0) {
            return itemPosition;
        }
        if (level == -1) {
            return -1;
        }
        while (itemPosition >= 0) {
            T t2 = this.mData.get(itemPosition);
            if (t2 instanceof IExpandable) {
                IExpandable iExpandable = (IExpandable) t2;
                if (iExpandable.getLevel() >= 0 && iExpandable.getLevel() < level) {
                    return itemPosition;
                }
            }
            itemPosition--;
        }
        return -1;
    }

    public RecyclerView getRecyclerView() {
        return this.mRecyclerView;
    }

    @Nullable
    public View getViewByPosition(int i, @IdRes int i2) {
        checkNotNull();
        return getViewByPosition(getRecyclerView(), i, i2);
    }

    public boolean hasSubItems(IExpandable iExpandable) {
        List<T> subItems;
        return (iExpandable == null || (subItems = iExpandable.getSubItems()) == null || subItems.size() <= 0) ? false : true;
    }

    public boolean isExpandable(T t) {
        return t instanceof IExpandable;
    }

    public void isFirstOnly(boolean z) {
        this.mFirstOnlyEnable = z;
    }

    public boolean isFixedViewType(int i) {
        return i == 1365 || i == 273 || i == 819 || i == 546;
    }

    public boolean isFooterViewAsFlow() {
        return this.footerViewAsFlow;
    }

    public boolean isHeaderViewAsFlow() {
        return this.headerViewAsFlow;
    }

    public boolean isLoadMoreEnable() {
        return this.mLoadMoreEnable;
    }

    public boolean isLoading() {
        return this.mLoading;
    }

    public boolean isUpFetchEnable() {
        return this.mUpFetchEnable;
    }

    public boolean isUpFetching() {
        return this.mUpFetching;
    }

    public void isUseEmpty(boolean z) {
        this.mIsUseEmpty = z;
    }

    public void loadMoreComplete() {
        if (getLoadMoreViewCount() == 0) {
            return;
        }
        this.mLoading = false;
        this.mNextLoadEnable = true;
        this.mLoadMoreView.setLoadMoreStatus(1);
        notifyItemChanged(getLoadMoreViewPosition());
    }

    public void loadMoreEnd() {
        loadMoreEnd(false);
    }

    public void loadMoreFail() {
        if (getLoadMoreViewCount() == 0) {
            return;
        }
        this.mLoading = false;
        this.mLoadMoreView.setLoadMoreStatus(3);
        notifyItemChanged(getLoadMoreViewPosition());
    }

    public void notifyLoadMoreToLoading() {
        if (this.mLoadMoreView.getLoadMoreStatus() == 2) {
            return;
        }
        this.mLoadMoreView.setLoadMoreStatus(1);
        notifyItemChanged(getLoadMoreViewPosition());
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onAttachedToRecyclerView(@NonNull RecyclerView recyclerView) {
        super.onAttachedToRecyclerView(recyclerView);
        RecyclerView.LayoutManager layoutManager = recyclerView.getLayoutManager();
        if (layoutManager instanceof GridLayoutManager) {
            final GridLayoutManager gridLayoutManager = (GridLayoutManager) layoutManager;
            final GridLayoutManager.SpanSizeLookup spanSizeLookup = gridLayoutManager.getSpanSizeLookup();
            gridLayoutManager.setSpanSizeLookup(new GridLayoutManager.SpanSizeLookup() { // from class: com.chad.library.adapter.base.BaseQuickAdapter.4
                @Override // androidx.recyclerview.widget.GridLayoutManager.SpanSizeLookup
                public int getSpanSize(int i) {
                    int itemViewType = BaseQuickAdapter.this.getItemViewType(i);
                    if (itemViewType == 273 && BaseQuickAdapter.this.isHeaderViewAsFlow()) {
                        return 1;
                    }
                    if (itemViewType == 819 && BaseQuickAdapter.this.isFooterViewAsFlow()) {
                        return 1;
                    }
                    return BaseQuickAdapter.this.mSpanSizeLookup == null ? BaseQuickAdapter.this.isFixedViewType(itemViewType) ? gridLayoutManager.getSpanCount() : spanSizeLookup.getSpanSize(i) : BaseQuickAdapter.this.isFixedViewType(itemViewType) ? gridLayoutManager.getSpanCount() : BaseQuickAdapter.this.mSpanSizeLookup.getSpanSize(gridLayoutManager, i - BaseQuickAdapter.this.getHeaderLayoutCount());
                }
            });
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public /* bridge */ /* synthetic */ void onBindViewHolder(@NonNull RecyclerView.ViewHolder viewHolder, int i) {
        onBindViewHolder((BaseQuickAdapter<T, K>) ((BaseViewHolder) viewHolder), i);
    }

    public K onCreateDefViewHolder(ViewGroup viewGroup, int i) {
        return createBaseViewHolder(viewGroup, this.mLayoutResId);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public /* bridge */ /* synthetic */ void onViewAttachedToWindow(@NonNull RecyclerView.ViewHolder viewHolder) {
        onViewAttachedToWindow((BaseQuickAdapter<T, K>) ((BaseViewHolder) viewHolder));
    }

    public void openLoadAnimation(int i) {
        this.mOpenAnimationEnable = true;
        this.mCustomAnimation = null;
        if (i == 1) {
            this.mSelectAnimation = new AlphaInAnimation();
        } else if (i == 2) {
            this.mSelectAnimation = new ScaleInAnimation();
        } else if (i == 3) {
            this.mSelectAnimation = new SlideInBottomAnimation();
        } else if (i == 4) {
            this.mSelectAnimation = new SlideInLeftAnimation();
        } else if (i != 5) {
        } else {
            this.mSelectAnimation = new SlideInRightAnimation();
        }
    }

    public final void refreshNotifyItemChanged(int i) {
        notifyItemChanged(getHeaderLayoutCount() + i);
    }

    public void remove(@IntRange(from = 0) int i) {
        this.mData.remove(i);
        int headerLayoutCount = getHeaderLayoutCount() + i;
        notifyItemRemoved(headerLayoutCount);
        compatibilityDataSizeChanged(0);
        notifyItemRangeChanged(headerLayoutCount, this.mData.size() - headerLayoutCount);
    }

    public void removeAllFooterView() {
        if (getFooterLayoutCount() == 0) {
            return;
        }
        this.mFooterLayout.removeAllViews();
        int footerViewPosition = getFooterViewPosition();
        if (footerViewPosition != -1) {
            notifyItemRemoved(footerViewPosition);
        }
    }

    public void removeAllHeaderView() {
        if (getHeaderLayoutCount() == 0) {
            return;
        }
        this.mHeaderLayout.removeAllViews();
        int headerViewPosition = getHeaderViewPosition();
        if (headerViewPosition != -1) {
            notifyItemRemoved(headerViewPosition);
        }
    }

    public void removeFooterView(View view) {
        int footerViewPosition;
        if (getFooterLayoutCount() == 0) {
            return;
        }
        this.mFooterLayout.removeView(view);
        if (this.mFooterLayout.getChildCount() != 0 || (footerViewPosition = getFooterViewPosition()) == -1) {
            return;
        }
        notifyItemRemoved(footerViewPosition);
    }

    public void removeHeaderView(View view) {
        int headerViewPosition;
        if (getHeaderLayoutCount() == 0) {
            return;
        }
        this.mHeaderLayout.removeView(view);
        if (this.mHeaderLayout.getChildCount() != 0 || (headerViewPosition = getHeaderViewPosition()) == -1) {
            return;
        }
        notifyItemRemoved(headerViewPosition);
    }

    public void replaceData(@NonNull Collection<? extends T> collection) {
        List<T> list = this.mData;
        if (collection != list) {
            list.clear();
            this.mData.addAll(collection);
        }
        notifyDataSetChanged();
    }

    @Deprecated
    public void setAutoLoadMoreSize(int i) {
        setPreLoadNumber(i);
    }

    public void setData(@IntRange(from = 0) int i, @NonNull T t) {
        this.mData.set(i, t);
        notifyItemChanged(getHeaderLayoutCount() + i);
    }

    public void setDuration(int i) {
        this.mDuration = i;
    }

    public void setEmptyView(int i, ViewGroup viewGroup) {
        setEmptyView(LayoutInflater.from(viewGroup.getContext()).inflate(i, viewGroup, false));
    }

    public void setEnableLoadMore(boolean z) {
        int loadMoreViewCount = getLoadMoreViewCount();
        this.mLoadMoreEnable = z;
        int loadMoreViewCount2 = getLoadMoreViewCount();
        if (loadMoreViewCount == 1) {
            if (loadMoreViewCount2 == 0) {
                notifyItemRemoved(getLoadMoreViewPosition());
            }
        } else if (loadMoreViewCount2 == 1) {
            this.mLoadMoreView.setLoadMoreStatus(1);
            notifyItemInserted(getLoadMoreViewPosition());
        }
    }

    public int setFooterView(View view) {
        return setFooterView(view, 0, 1);
    }

    public void setFooterViewAsFlow(boolean z) {
        this.footerViewAsFlow = z;
    }

    public void setFullSpan(RecyclerView.ViewHolder viewHolder) {
        if (viewHolder.itemView.getLayoutParams() instanceof StaggeredGridLayoutManager.LayoutParams) {
            ((StaggeredGridLayoutManager.LayoutParams) viewHolder.itemView.getLayoutParams()).setFullSpan(true);
        }
    }

    public void setHeaderAndEmpty(boolean z) {
        setHeaderFooterEmpty(z, false);
    }

    public void setHeaderFooterEmpty(boolean z, boolean z2) {
        this.mHeadAndEmptyEnable = z;
        this.mFootAndEmptyEnable = z2;
    }

    public int setHeaderView(View view) {
        return setHeaderView(view, 0, 1);
    }

    public void setHeaderViewAsFlow(boolean z) {
        this.headerViewAsFlow = z;
    }

    public void setLoadMoreView(LoadMoreView loadMoreView) {
        this.mLoadMoreView = loadMoreView;
    }

    public void setNewData(@Nullable List<T> list) {
        if (list == null) {
            list = new ArrayList<>();
        }
        this.mData = list;
        if (this.mRequestLoadMoreListener != null) {
            this.mNextLoadEnable = true;
            this.mLoadMoreEnable = true;
            this.mLoading = false;
            this.mLoadMoreView.setLoadMoreStatus(1);
        }
        this.mLastPosition = -1;
        notifyDataSetChanged();
    }

    public void setNewDiffData(@NonNull BaseQuickDiffCallback<T> baseQuickDiffCallback) {
        setNewDiffData((BaseQuickDiffCallback) baseQuickDiffCallback, false);
    }

    public void setNotDoAnimationCount(int i) {
        this.mLastPosition = i;
    }

    public void setOnItemChildClickListener(OnItemChildClickListener onItemChildClickListener) {
        this.mOnItemChildClickListener = onItemChildClickListener;
    }

    public void setOnItemChildLongClickListener(OnItemChildLongClickListener onItemChildLongClickListener) {
        this.mOnItemChildLongClickListener = onItemChildLongClickListener;
    }

    public void setOnItemClick(View view, int i) {
        getOnItemClickListener().onItemClick(this, view, i);
    }

    public void setOnItemClickListener(@Nullable OnItemClickListener onItemClickListener) {
        this.mOnItemClickListener = onItemClickListener;
    }

    public boolean setOnItemLongClick(View view, int i) {
        return getOnItemLongClickListener().onItemLongClick(this, view, i);
    }

    public void setOnItemLongClickListener(OnItemLongClickListener onItemLongClickListener) {
        this.mOnItemLongClickListener = onItemLongClickListener;
    }

    @Deprecated
    public void setOnLoadMoreListener(RequestLoadMoreListener requestLoadMoreListener) {
        openLoadMore(requestLoadMoreListener);
    }

    public void setPreLoadNumber(int i) {
        if (i > 1) {
            this.mPreLoadNumber = i;
        }
    }

    public void setSpanSizeLookup(SpanSizeLookup spanSizeLookup) {
        this.mSpanSizeLookup = spanSizeLookup;
    }

    public void setStartUpFetchPosition(int i) {
        this.mStartUpFetchPosition = i;
    }

    public void setUpFetchEnable(boolean z) {
        this.mUpFetchEnable = z;
    }

    public void setUpFetchListener(UpFetchListener upFetchListener) {
        this.mUpFetchListener = upFetchListener;
    }

    public void setUpFetching(boolean z) {
        this.mUpFetching = z;
    }

    public void startAnim(Animator animator, int i) {
        animator.setDuration(this.mDuration).start();
        animator.setInterpolator(this.mInterpolator);
    }

    public int addFooterView(View view, int i) {
        return addFooterView(view, i, 1);
    }

    public int addHeaderView(View view, int i) {
        return addHeaderView(view, i, 1);
    }

    public K createBaseViewHolder(View view) {
        K createGenericKInstance;
        Class cls = null;
        for (Class<?> cls2 = getClass(); cls == null && cls2 != null; cls2 = cls2.getSuperclass()) {
            cls = getInstancedGenericKClass(cls2);
        }
        if (cls == null) {
            createGenericKInstance = (K) new BaseViewHolder(view);
        } else {
            createGenericKInstance = createGenericKInstance(cls, view);
        }
        return createGenericKInstance != null ? createGenericKInstance : (K) new BaseViewHolder(view);
    }

    public void loadMoreEnd(boolean z) {
        if (getLoadMoreViewCount() == 0) {
            return;
        }
        this.mLoading = false;
        this.mNextLoadEnable = false;
        this.mLoadMoreView.setLoadMoreEndGone(z);
        if (z) {
            notifyItemRemoved(getLoadMoreViewPosition());
            return;
        }
        this.mLoadMoreView.setLoadMoreStatus(4);
        notifyItemChanged(getLoadMoreViewPosition());
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public /* bridge */ /* synthetic */ void onBindViewHolder(@NonNull RecyclerView.ViewHolder viewHolder, int i, @NonNull List list) {
        onBindViewHolder((BaseQuickAdapter<T, K>) ((BaseViewHolder) viewHolder), i, (List<Object>) list);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    @NonNull
    public K onCreateViewHolder(@NonNull ViewGroup viewGroup, int i) {
        K createBaseViewHolder;
        Context context = viewGroup.getContext();
        this.mContext = context;
        this.mLayoutInflater = LayoutInflater.from(context);
        if (i == 273) {
            ViewParent parent = this.mHeaderLayout.getParent();
            if (parent instanceof ViewGroup) {
                ((ViewGroup) parent).removeView(this.mHeaderLayout);
            }
            createBaseViewHolder = createBaseViewHolder(this.mHeaderLayout);
        } else if (i == 546) {
            createBaseViewHolder = getLoadingView(viewGroup);
        } else if (i == 819) {
            ViewParent parent2 = this.mFooterLayout.getParent();
            if (parent2 instanceof ViewGroup) {
                ((ViewGroup) parent2).removeView(this.mFooterLayout);
            }
            createBaseViewHolder = createBaseViewHolder(this.mFooterLayout);
        } else if (i != 1365) {
            createBaseViewHolder = onCreateDefViewHolder(viewGroup, i);
            bindViewClickListener(createBaseViewHolder);
        } else {
            ViewParent parent3 = this.mEmptyLayout.getParent();
            if (parent3 instanceof ViewGroup) {
                ((ViewGroup) parent3).removeView(this.mEmptyLayout);
            }
            createBaseViewHolder = createBaseViewHolder(this.mEmptyLayout);
        }
        createBaseViewHolder.setAdapter(this);
        return createBaseViewHolder;
    }

    public void onViewAttachedToWindow(@NonNull K k) {
        super.onViewAttachedToWindow((BaseQuickAdapter<T, K>) k);
        int itemViewType = k.getItemViewType();
        if (itemViewType != 1365 && itemViewType != 273 && itemViewType != 819 && itemViewType != 546) {
            addAnimation(k);
        } else {
            setFullSpan(k);
        }
    }

    public final void refreshNotifyItemChanged(int i, @Nullable Object obj) {
        notifyItemChanged(getHeaderLayoutCount() + i, obj);
    }

    public int setFooterView(View view, int i) {
        return setFooterView(view, i, 1);
    }

    public int setHeaderView(View view, int i) {
        return setHeaderView(view, i, 1);
    }

    public void setNewDiffData(@NonNull BaseQuickDiffCallback<T> baseQuickDiffCallback, boolean z) {
        if (getEmptyViewCount() == 1) {
            setNewData(baseQuickDiffCallback.getNewList());
            return;
        }
        baseQuickDiffCallback.setOldList(getData());
        DiffUtil.calculateDiff(baseQuickDiffCallback, z).dispatchUpdatesTo(new BaseQuickAdapterListUpdateCallback(this));
        this.mData = baseQuickDiffCallback.getNewList();
    }

    public void setOnLoadMoreListener(RequestLoadMoreListener requestLoadMoreListener, RecyclerView recyclerView) {
        openLoadMore(requestLoadMoreListener);
        if (getRecyclerView() == null) {
            setRecyclerView(recyclerView);
        }
    }

    public int addFooterView(View view, int i, int i2) {
        int footerViewPosition;
        if (this.mFooterLayout == null) {
            LinearLayout linearLayout = new LinearLayout(view.getContext());
            this.mFooterLayout = linearLayout;
            if (i2 == 1) {
                linearLayout.setOrientation(1);
                this.mFooterLayout.setLayoutParams(new ViewGroup.LayoutParams(-1, -2));
            } else {
                linearLayout.setOrientation(0);
                this.mFooterLayout.setLayoutParams(new ViewGroup.LayoutParams(-2, -1));
            }
        }
        int childCount = this.mFooterLayout.getChildCount();
        if (i < 0 || i > childCount) {
            i = childCount;
        }
        this.mFooterLayout.addView(view, i);
        if (this.mFooterLayout.getChildCount() == 1 && (footerViewPosition = getFooterViewPosition()) != -1) {
            notifyItemInserted(footerViewPosition);
        }
        return i;
    }

    public int addHeaderView(View view, int i, int i2) {
        int headerViewPosition;
        if (this.mHeaderLayout == null) {
            LinearLayout linearLayout = new LinearLayout(view.getContext());
            this.mHeaderLayout = linearLayout;
            if (i2 == 1) {
                linearLayout.setOrientation(1);
                this.mHeaderLayout.setLayoutParams(new ViewGroup.LayoutParams(-1, -2));
            } else {
                linearLayout.setOrientation(0);
                this.mHeaderLayout.setLayoutParams(new ViewGroup.LayoutParams(-2, -1));
            }
        }
        int childCount = this.mHeaderLayout.getChildCount();
        if (i < 0 || i > childCount) {
            i = childCount;
        }
        this.mHeaderLayout.addView(view, i);
        if (this.mHeaderLayout.getChildCount() == 1 && (headerViewPosition = getHeaderViewPosition()) != -1) {
            notifyItemInserted(headerViewPosition);
        }
        return i;
    }

    public void disableLoadMoreIfNotFullPage(RecyclerView recyclerView) {
        RecyclerView.LayoutManager layoutManager;
        setEnableLoadMore(false);
        if (recyclerView == null || (layoutManager = recyclerView.getLayoutManager()) == null) {
            return;
        }
        if (layoutManager instanceof LinearLayoutManager) {
            final LinearLayoutManager linearLayoutManager = (LinearLayoutManager) layoutManager;
            recyclerView.postDelayed(new Runnable() { // from class: com.chad.library.adapter.base.BaseQuickAdapter.1
                @Override // java.lang.Runnable
                public void run() {
                    if (BaseQuickAdapter.this.isFullScreen(linearLayoutManager)) {
                        BaseQuickAdapter.this.setEnableLoadMore(true);
                    }
                }
            }, 50L);
        } else if (layoutManager instanceof StaggeredGridLayoutManager) {
            final StaggeredGridLayoutManager staggeredGridLayoutManager = (StaggeredGridLayoutManager) layoutManager;
            recyclerView.postDelayed(new Runnable() { // from class: com.chad.library.adapter.base.BaseQuickAdapter.2
                @Override // java.lang.Runnable
                public void run() {
                    int[] iArr = new int[staggeredGridLayoutManager.getSpanCount()];
                    staggeredGridLayoutManager.findLastCompletelyVisibleItemPositions(iArr);
                    if (BaseQuickAdapter.this.getTheBiggestNumber(iArr) + 1 != BaseQuickAdapter.this.getItemCount()) {
                        BaseQuickAdapter.this.setEnableLoadMore(true);
                    }
                }
            }, 50L);
        }
    }

    @Nullable
    public View getViewByPosition(RecyclerView recyclerView, int i, @IdRes int i2) {
        BaseViewHolder baseViewHolder;
        if (recyclerView == null || (baseViewHolder = (BaseViewHolder) recyclerView.findViewHolderForLayoutPosition(i)) == null) {
            return null;
        }
        return baseViewHolder.getView(i2);
    }

    public void onBindViewHolder(@NonNull K k, int i) {
        autoUpFetch(i);
        autoLoadMore(i);
        int itemViewType = k.getItemViewType();
        if (itemViewType != 273) {
            if (itemViewType == 546) {
                this.mLoadMoreView.convert(k);
            } else if (itemViewType == 819 || itemViewType == 1365) {
            } else {
                convert(k, getItem(i - getHeaderLayoutCount()));
            }
        }
    }

    @Deprecated
    public void setEmptyView(int i) {
        checkNotNull();
        setEmptyView(i, getRecyclerView());
    }

    public int setFooterView(View view, int i, int i2) {
        LinearLayout linearLayout = this.mFooterLayout;
        if (linearLayout != null && linearLayout.getChildCount() > i) {
            this.mFooterLayout.removeViewAt(i);
            this.mFooterLayout.addView(view, i);
            return i;
        }
        return addFooterView(view, i, i2);
    }

    public int setHeaderView(View view, int i, int i2) {
        LinearLayout linearLayout = this.mHeaderLayout;
        if (linearLayout != null && linearLayout.getChildCount() > i) {
            this.mHeaderLayout.removeViewAt(i);
            this.mHeaderLayout.addView(view, i);
            return i;
        }
        return addHeaderView(view, i, i2);
    }

    public void addData(@NonNull T t) {
        this.mData.add(t);
        notifyItemInserted(getHeaderLayoutCount() + this.mData.size());
        compatibilityDataSizeChanged(1);
    }

    public void setEmptyView(View view) {
        boolean z;
        int itemCount = getItemCount();
        int i = 0;
        if (this.mEmptyLayout == null) {
            this.mEmptyLayout = new FrameLayout(view.getContext());
            ViewGroup.LayoutParams layoutParams = new ViewGroup.LayoutParams(-1, -1);
            ViewGroup.LayoutParams layoutParams2 = view.getLayoutParams();
            if (layoutParams2 != null) {
                layoutParams.width = layoutParams2.width;
                layoutParams.height = layoutParams2.height;
            }
            this.mEmptyLayout.setLayoutParams(layoutParams);
            z = true;
        } else {
            z = false;
        }
        this.mEmptyLayout.removeAllViews();
        this.mEmptyLayout.addView(view);
        this.mIsUseEmpty = true;
        if (z && getEmptyViewCount() == 1) {
            if (this.mHeadAndEmptyEnable && getHeaderLayoutCount() != 0) {
                i = 1;
            }
            if (getItemCount() > itemCount) {
                notifyItemInserted(i);
            } else {
                notifyDataSetChanged();
            }
        }
    }

    public void addData(@IntRange(from = 0) int i, @NonNull Collection<? extends T> collection) {
        this.mData.addAll(i, collection);
        notifyItemRangeInserted(getHeaderLayoutCount() + i, collection.size());
        compatibilityDataSizeChanged(collection.size());
    }

    public int collapse(@IntRange(from = 0) int i) {
        return collapse(i, true, true);
    }

    public void onBindViewHolder(@NonNull K k, int i, @NonNull List<Object> list) {
        if (list.isEmpty()) {
            onBindViewHolder((BaseQuickAdapter<T, K>) k, i);
            return;
        }
        autoUpFetch(i);
        autoLoadMore(i);
        int itemViewType = k.getItemViewType();
        if (itemViewType != 273) {
            if (itemViewType == 546) {
                this.mLoadMoreView.convert(k);
            } else if (itemViewType == 819 || itemViewType == 1365) {
            } else {
                convertPayloads(k, getItem(i - getHeaderLayoutCount()), list);
            }
        }
    }

    public void openLoadAnimation(BaseAnimation baseAnimation) {
        this.mOpenAnimationEnable = true;
        this.mCustomAnimation = baseAnimation;
    }

    public void setNewDiffData(@NonNull DiffUtil.DiffResult diffResult, @NonNull List<T> list) {
        if (getEmptyViewCount() == 1) {
            setNewData(list);
            return;
        }
        diffResult.dispatchUpdatesTo(new BaseQuickAdapterListUpdateCallback(this));
        this.mData = list;
    }

    public int collapse(@IntRange(from = 0) int i, boolean z) {
        return collapse(i, z, true);
    }

    public void addData(@NonNull Collection<? extends T> collection) {
        this.mData.addAll(collection);
        notifyItemRangeInserted(getHeaderLayoutCount() + (this.mData.size() - collection.size()), collection.size());
        compatibilityDataSizeChanged(collection.size());
    }

    public void openLoadAnimation() {
        this.mOpenAnimationEnable = true;
    }

    public int expand(@IntRange(from = 0) int i, boolean z) {
        return expand(i, z, true);
    }

    public int expand(@IntRange(from = 0) int i) {
        return expand(i, true, true);
    }

    public int expandAll(int i, boolean z) {
        return expandAll(i, true, !z);
    }

    public BaseQuickAdapter(@Nullable List<T> list) {
        this(0, list);
    }

    public void expandAll() {
        for (int headerLayoutCount = getHeaderLayoutCount() + (this.mData.size() - 1); headerLayoutCount >= getHeaderLayoutCount(); headerLayoutCount--) {
            expandAll(headerLayoutCount, false, false);
        }
    }

    public BaseQuickAdapter(@LayoutRes int i) {
        this(i, null);
    }
}
