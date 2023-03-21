package com.apk;

import android.content.Context;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.apk.b40;
import java.util.List;
import kimi.wuhends.ebooks.R;
/* compiled from: IndicatorAdapter.java */
/* loaded from: classes8.dex */
public class nz extends b40.Cif {

    /* renamed from: case  reason: not valid java name */
    public int f3319case = eg.m587catch(18.0f);

    /* renamed from: else  reason: not valid java name */
    public int f3320else = eg.m587catch(16.0f);

    /* renamed from: for  reason: not valid java name */
    public int f3321for;

    /* renamed from: if  reason: not valid java name */
    public Context f3322if;

    /* renamed from: new  reason: not valid java name */
    public List<String> f3323new;

    /* renamed from: try  reason: not valid java name */
    public String[] f3324try;

    public nz(Context context, String[] strArr, int i) {
        this.f3322if = context;
        this.f3324try = strArr;
        this.f3321for = i;
    }

    @Override // com.apk.b40.Cif
    /* renamed from: do */
    public int mo148do() {
        List<String> list = this.f3323new;
        if (list != null) {
            return list.size();
        }
        return this.f3324try.length;
    }

    @Override // com.apk.b40.Cif
    /* renamed from: if */
    public View mo150if(int i, View view, ViewGroup viewGroup) {
        if (view == null) {
            view = LayoutInflater.from(this.f3322if).inflate(R.layout.view_tab_top, viewGroup, false);
        }
        TextView textView = (TextView) view;
        String[] strArr = this.f3324try;
        if (strArr != null) {
            if (strArr.length > 0 && !TextUtils.isEmpty(strArr[0])) {
                int i2 = this.f3321for;
                if (i2 != 0) {
                    textView.setWidth(i2);
                } else {
                    textView.setWidth((this.f3324try[i].length() * this.f3319case) + this.f3320else);
                }
            } else {
                textView.setWidth(this.f3321for);
            }
            String[] strArr2 = this.f3324try;
            if (strArr2 != null) {
                textView.setText(strArr2[i]);
            }
        } else {
            List<String> list = this.f3323new;
            if (list != null) {
                if (list.size() > 0) {
                    int i3 = this.f3321for;
                    if (i3 != 0) {
                        textView.setWidth(i3);
                    } else {
                        textView.setWidth((this.f3323new.get(i).length() * this.f3319case) + this.f3320else);
                    }
                } else {
                    textView.setWidth(this.f3321for);
                }
                List<String> list2 = this.f3323new;
                if (list2 != null) {
                    textView.setText(list2.get(i));
                }
            }
        }
        return view;
    }

    public nz(Context context, List<String> list, int i) {
        this.f3322if = context;
        this.f3323new = list;
        this.f3321for = i;
    }
}
