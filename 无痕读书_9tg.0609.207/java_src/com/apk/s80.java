package com.apk;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import androidx.annotation.NonNull;
import androidx.collection.SparseArrayCompat;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.StaggeredGridLayoutManager;
import java.util.ArrayList;
import java.util.List;
/* compiled from: BaseAdapter.java */
/* loaded from: classes7.dex */
public abstract class s80<T> extends RecyclerView.Adapter<RecyclerView.ViewHolder> {

    /* renamed from: break  reason: not valid java name */
    public View f4297break;

    /* renamed from: case  reason: not valid java name */
    public boolean f4298case;

    /* renamed from: catch  reason: not valid java name */
    public View f4299catch;

    /* renamed from: class  reason: not valid java name */
    public RelativeLayout f4300class;

    /* renamed from: const  reason: not valid java name */
    public boolean f4301const;

    /* renamed from: else  reason: not valid java name */
    public boolean f4303else;

    /* renamed from: final  reason: not valid java name */
    public boolean f4304final;

    /* renamed from: for  reason: not valid java name */
    public Context f4305for;

    /* renamed from: goto  reason: not valid java name */
    public View f4306goto;

    /* renamed from: if  reason: not valid java name */
    public u90 f4307if;

    /* renamed from: new  reason: not valid java name */
    public List<T> f4308new;

    /* renamed from: this  reason: not valid java name */
    public View f4310this;

    /* renamed from: try  reason: not valid java name */
    public boolean f4311try;

    /* renamed from: do  reason: not valid java name */
    public SparseArrayCompat<View> f4302do = new SparseArrayCompat<>();

    /* renamed from: super  reason: not valid java name */
    public boolean f4309super = true;

    /* compiled from: BaseAdapter.java */
    /* renamed from: com.apk.s80$do  reason: invalid class name */
    /* loaded from: classes7.dex */
    public class Cdo extends GridLayoutManager.SpanSizeLookup {

        /* renamed from: do  reason: not valid java name */
        public final /* synthetic */ GridLayoutManager f4312do;

        public Cdo(GridLayoutManager gridLayoutManager) {
            this.f4312do = gridLayoutManager;
        }

        @Override // androidx.recyclerview.widget.GridLayoutManager.SpanSizeLookup
        public int getSpanSize(int i) {
            if (!s80.this.m2388class(i)) {
                if (!(i < s80.this.m2389const())) {
                    return 1;
                }
            }
            return this.f4312do.getSpanCount();
        }
    }

    public s80(Context context, List<T> list, boolean z) {
        this.f4305for = context;
        this.f4308new = list == null ? new ArrayList<>() : list;
        this.f4311try = z;
    }

    /* renamed from: if  reason: not valid java name */
    public static int m2383if(s80 s80Var, RecyclerView.LayoutManager layoutManager) {
        if (s80Var != null) {
            if (layoutManager instanceof LinearLayoutManager) {
                return ((LinearLayoutManager) layoutManager).findLastVisibleItemPosition();
            }
            if (layoutManager instanceof StaggeredGridLayoutManager) {
                int[] findLastVisibleItemPositions = ((StaggeredGridLayoutManager) layoutManager).findLastVisibleItemPositions(null);
                int i = findLastVisibleItemPositions[0];
                for (int i2 : findLastVisibleItemPositions) {
                    if (i2 > i) {
                        i = i2;
                    }
                }
                return i;
            }
            return -1;
        }
        throw null;
    }

    /* renamed from: throw  reason: not valid java name */
    public static void m2384throw(s80 s80Var) {
        u90 u90Var;
        if (s80Var.f4301const || s80Var.f4300class.getChildAt(0) != s80Var.f4306goto || s80Var.f4304final || (u90Var = s80Var.f4307if) == null) {
            return;
        }
        s80Var.f4304final = true;
        u90Var.a(false);
    }

    /* renamed from: break  reason: not valid java name */
    public void m2385break(List<T> list) {
        if (this.f4311try) {
            if (this.f4301const) {
                this.f4301const = false;
            }
            this.f4304final = false;
            this.f4297break = null;
            this.f4299catch = null;
        }
        this.f4308new.clear();
        this.f4308new.addAll(list);
        notifyDataSetChanged();
    }

    /* renamed from: case  reason: not valid java name */
    public void m2386case(T t, int i) {
        if (i > this.f4308new.size() || i < 0) {
            return;
        }
        this.f4308new.add(i, t);
        notifyItemInserted(m2389const() + i);
        notifyItemRangeChanged(m2389const() + i, this.f4308new.size() - i);
    }

    /* renamed from: catch  reason: not valid java name */
    public boolean m2387catch(int i) {
        return (i == 100003 || i == 100002 || i == 100004 || i == 100005 || i >= 200000) ? false : true;
    }

    /* renamed from: class  reason: not valid java name */
    public final boolean m2388class(int i) {
        return this.f4311try && i >= getItemCount() - 1;
    }

    /* renamed from: const  reason: not valid java name */
    public int m2389const() {
        if (this.f4309super) {
            return this.f4302do.size();
        }
        return 0;
    }

    /* renamed from: do */
    public abstract int mo1185do(int i, T t);

    /* renamed from: else  reason: not valid java name */
    public void m2390else(List<T> list) {
        this.f4304final = false;
        int size = this.f4308new.size();
        if (size > this.f4308new.size() || size < 0) {
            return;
        }
        this.f4308new.addAll(size, list);
        notifyItemRangeInserted(m2389const() + size, list.size());
        notifyItemRangeChanged(m2389const() + size, this.f4308new.size() - size);
    }

    /* renamed from: final  reason: not valid java name */
    public final boolean m2391final(int i) {
        return i < m2389const();
    }

    @NonNull
    /* renamed from: for  reason: not valid java name */
    public r80 m2392for(@NonNull ViewGroup viewGroup, int i) {
        r80 r80Var;
        if (this.f4309super && this.f4302do.get(i) != null) {
            return new r80(this.f4302do.get(i));
        }
        switch (i) {
            case 100002:
                if (this.f4300class == null) {
                    this.f4300class = new RelativeLayout(this.f4305for);
                }
                r80Var = new r80(this.f4300class);
                break;
            case 100003:
                r80Var = new r80(this.f4297break);
                break;
            case 100004:
                r80Var = new r80(new View(this.f4305for));
                break;
            case 100005:
                r80Var = new r80(this.f4299catch);
                break;
            default:
                return null;
        }
        return r80Var;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        int i = 1;
        if (!this.f4308new.isEmpty() || (this.f4297break == null && this.f4299catch == null)) {
            return m2389const() + this.f4308new.size() + ((!this.f4311try || this.f4308new.isEmpty()) ? 0 : 0);
        }
        return 1;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemViewType(int i) {
        if (this.f4308new.isEmpty()) {
            if (this.f4297break != null) {
                return 100003;
            }
            if (this.f4299catch != null) {
                return 100005;
            }
            if (this.f4309super) {
                if (i < m2389const()) {
                    return this.f4302do.keyAt(i);
                }
                return 100004;
            }
            return 100004;
        }
        if (this.f4309super) {
            if (i < m2389const()) {
                return this.f4302do.keyAt(i);
            }
        }
        if (m2388class(i)) {
            return 100002;
        }
        return mo1185do(i - m2389const(), this.f4308new.get(i - m2389const()));
    }

    /* renamed from: goto  reason: not valid java name */
    public int m2393goto() {
        return this.f4308new.size();
    }

    /* renamed from: import  reason: not valid java name */
    public void m2394import() {
        View view = this.f4306goto;
        if (view != null) {
            m2398try(view);
        }
        this.f4304final = false;
        this.f4301const = true;
        this.f4303else = false;
        this.f4308new.clear();
        notifyDataSetChanged();
    }

    /* renamed from: new  reason: not valid java name */
    public T m2395new(int i) {
        if (this.f4308new.isEmpty()) {
            return null;
        }
        return this.f4308new.get(i);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onAttachedToRecyclerView(RecyclerView recyclerView) {
        super.onAttachedToRecyclerView(recyclerView);
        RecyclerView.LayoutManager layoutManager = recyclerView.getLayoutManager();
        if (layoutManager instanceof GridLayoutManager) {
            GridLayoutManager gridLayoutManager = (GridLayoutManager) layoutManager;
            gridLayoutManager.setSpanSizeLookup(new Cdo(gridLayoutManager));
        }
        if (!this.f4311try || this.f4307if == null) {
            return;
        }
        recyclerView.addOnScrollListener(new t80(this, layoutManager));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onViewAttachedToWindow(RecyclerView.ViewHolder viewHolder) {
        ViewGroup.LayoutParams layoutParams;
        super.onViewAttachedToWindow(viewHolder);
        int layoutPosition = viewHolder.getLayoutPosition();
        if ((m2388class(layoutPosition) || m2391final(layoutPosition)) && (layoutParams = viewHolder.itemView.getLayoutParams()) != null) {
            if (m2388class(layoutPosition)) {
                layoutParams.width = -1;
            }
            if (layoutParams instanceof StaggeredGridLayoutManager.LayoutParams) {
                ((StaggeredGridLayoutManager.LayoutParams) layoutParams).setFullSpan(true);
            }
        }
    }

    /* renamed from: super  reason: not valid java name */
    public void m2396super() {
        m2398try(new View(this.f4305for));
    }

    /* renamed from: this  reason: not valid java name */
    public void m2397this(View view) {
        if (view == null) {
            return;
        }
        this.f4302do.put(m2389const() + 200000, view);
    }

    /* renamed from: try  reason: not valid java name */
    public final void m2398try(View view) {
        if (view == null) {
            return;
        }
        if (this.f4300class == null) {
            this.f4300class = new RelativeLayout(this.f4305for);
        }
        this.f4300class.removeAllViews();
        this.f4300class.addView(view, new RelativeLayout.LayoutParams(-1, -2));
    }

    /* renamed from: while  reason: not valid java name */
    public void m2399while(int i) {
        View inflate = i > 0 ? LayoutInflater.from(this.f4305for).inflate(i, (ViewGroup) null) : null;
        this.f4306goto = inflate;
        m2398try(inflate);
    }
}
