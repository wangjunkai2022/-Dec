package com.apk;

import android.content.Context;
import android.content.ContextWrapper;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import com.apk.cq0;
import java.lang.ref.WeakReference;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
import org.litepal.parser.LitePalParser;
import skin.support.annotation.NonNull;
/* compiled from: SkinCompatDelegate.java */
/* loaded from: classes7.dex */
public class bq0 implements LayoutInflater.Factory2 {

    /* renamed from: do  reason: not valid java name */
    public final Context f443do;

    /* renamed from: for  reason: not valid java name */
    public List<WeakReference<js0>> f444for = new CopyOnWriteArrayList();

    /* renamed from: if  reason: not valid java name */
    public cq0 f445if;

    public bq0(Context context) {
        this.f443do = context;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: do  reason: not valid java name */
    public View m267do(View view, String str, @NonNull Context context, @NonNull AttributeSet attributeSet) {
        if (this.f445if == null) {
            this.f445if = new cq0();
        }
        for (eq0 eq0Var : yp0.f6038class.f6048try) {
            Context mo91do = eq0Var.mo91do(this.f443do, view, attributeSet);
            if (mo91do != null) {
                context = mo91do;
            }
        }
        cq0 cq0Var = this.f445if;
        View view2 = null;
        if (cq0Var != null) {
            Iterator<dq0> it = yp0.f6038class.f6042else.iterator();
            View view3 = null;
            while (it.hasNext() && (view3 = it.next().mo92if(context, str, attributeSet)) == null) {
            }
            if (view3 == null) {
                Iterator<dq0> it2 = yp0.f6038class.f6040case.iterator();
                view3 = null;
                while (it2.hasNext() && (view3 = it2.next().mo92if(context, str, attributeSet)) == null) {
                }
            }
            if (view3 == null) {
                if ("view".equals(str)) {
                    str = attributeSet.getAttributeValue(null, LitePalParser.ATTR_CLASS);
                }
                try {
                    cq0Var.f745do[0] = context;
                    cq0Var.f745do[1] = attributeSet;
                    if (-1 == str.indexOf(46)) {
                        int i = 0;
                        while (true) {
                            if (i >= cq0.f743new.length) {
                                break;
                            }
                            View m393do = cq0Var.m393do(context, str, cq0.f743new[i]);
                            if (m393do != null) {
                                Object[] objArr = cq0Var.f745do;
                                objArr[0] = 0;
                                objArr[1] = 0;
                                view2 = m393do;
                                cq0Var = objArr;
                                break;
                            }
                            i++;
                        }
                    } else {
                        View m393do2 = cq0Var.m393do(context, str, null);
                        Object[] objArr2 = cq0Var.f745do;
                        objArr2[0] = 0;
                        objArr2[1] = 0;
                        view2 = m393do2;
                        cq0Var = objArr2;
                    }
                } catch (Exception unused) {
                } finally {
                    Object[] objArr3 = cq0Var.f745do;
                    objArr3[0] = view2;
                    objArr3[1] = view2;
                }
                view3 = view2;
            }
            if (view3 != null) {
                Context context2 = view3.getContext();
                if ((context2 instanceof ContextWrapper) && view3.hasOnClickListeners()) {
                    TypedArray obtainStyledAttributes = context2.obtainStyledAttributes(attributeSet, cq0.f741for);
                    String string = obtainStyledAttributes.getString(0);
                    if (string != null) {
                        view3.setOnClickListener(new cq0.Cdo(view3, string));
                    }
                    obtainStyledAttributes.recycle();
                }
            }
            return view3;
        }
        throw null;
    }

    @Override // android.view.LayoutInflater.Factory2
    public View onCreateView(View view, String str, Context context, AttributeSet attributeSet) {
        View m267do = m267do(view, str, context, attributeSet);
        if (m267do == null) {
            return null;
        }
        if (m267do instanceof js0) {
            this.f444for.add(new WeakReference<>((js0) m267do));
        }
        return m267do;
    }

    @Override // android.view.LayoutInflater.Factory
    public View onCreateView(String str, Context context, AttributeSet attributeSet) {
        View m267do = m267do(null, str, context, attributeSet);
        if (m267do == null) {
            return null;
        }
        if (m267do instanceof js0) {
            this.f444for.add(new WeakReference<>((js0) m267do));
        }
        return m267do;
    }
}
