package com.apk;

import android.content.Context;
import android.content.res.TypedArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.animation.LinearInterpolator;
import android.view.animation.RotateAnimation;
import android.widget.FrameLayout;
import android.widget.TextView;
import com.biquge.ebook.app.R$styleable;
import com.biquge.ebook.app.widget.AppProgressBar;
import kimi.wuhends.ebooks.R;
/* compiled from: PtrClassicDefaultHeader.java */
/* loaded from: classes8.dex */
public class rs extends FrameLayout implements us {

    /* renamed from: case  reason: not valid java name */
    public AppProgressBar f4195case;

    /* renamed from: do  reason: not valid java name */
    public int f4196do;

    /* renamed from: for  reason: not valid java name */
    public RotateAnimation f4197for;

    /* renamed from: if  reason: not valid java name */
    public RotateAnimation f4198if;

    /* renamed from: new  reason: not valid java name */
    public TextView f4199new;

    /* renamed from: try  reason: not valid java name */
    public View f4200try;

    public rs(Context context) {
        super(context);
        this.f4196do = 150;
        TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(null, R$styleable.PtrClassicHeader, 0, 0);
        if (obtainStyledAttributes != null) {
            this.f4196do = obtainStyledAttributes.getInt(0, this.f4196do);
        }
        RotateAnimation rotateAnimation = new RotateAnimation(0.0f, -180.0f, 1, 0.5f, 1, 0.5f);
        this.f4198if = rotateAnimation;
        rotateAnimation.setInterpolator(new LinearInterpolator());
        this.f4198if.setDuration(this.f4196do);
        this.f4198if.setFillAfter(true);
        RotateAnimation rotateAnimation2 = new RotateAnimation(-180.0f, 0.0f, 1, 0.5f, 1, 0.5f);
        this.f4197for = rotateAnimation2;
        rotateAnimation2.setInterpolator(new LinearInterpolator());
        this.f4197for.setDuration(this.f4196do);
        this.f4197for.setFillAfter(true);
        View inflate = LayoutInflater.from(getContext()).inflate(R.layout.cube_ptr_classic_default_header, this);
        this.f4200try = inflate.findViewById(R.id.ptr_classic_header_rotate_view);
        this.f4199new = (TextView) inflate.findViewById(R.id.ptr_classic_header_rotate_view_header_title);
        this.f4195case = (AppProgressBar) inflate.findViewById(R.id.ptr_classic_header_rotate_view_progressbar);
        m2351case();
        this.f4195case.setVisibility(4);
    }

    /* renamed from: case  reason: not valid java name */
    public final void m2351case() {
        this.f4200try.clearAnimation();
        this.f4200try.setVisibility(4);
    }

    @Override // com.apk.us
    /* renamed from: do  reason: not valid java name */
    public void mo2352do(ss ssVar) {
        m2351case();
        this.f4195case.setVisibility(4);
    }

    @Override // com.apk.us
    /* renamed from: for  reason: not valid java name */
    public void mo2353for(ss ssVar) {
        this.f4195case.setVisibility(4);
        this.f4200try.setVisibility(0);
        this.f4199new.setVisibility(0);
        if (ssVar.f4564this) {
            this.f4199new.setText(getResources().getString(R.string.cube_ptr_pull_down_to_refresh));
        } else {
            this.f4199new.setText(getResources().getString(R.string.cube_ptr_pull_down));
        }
    }

    @Override // com.apk.us
    /* renamed from: if  reason: not valid java name */
    public void mo2354if(ss ssVar, boolean z, byte b, xs xsVar) {
        int offsetToRefresh = ssVar.getOffsetToRefresh();
        int i = xsVar.f5800try;
        int i2 = xsVar.f5789case;
        if (i < offsetToRefresh && i2 >= offsetToRefresh) {
            if (z && b == 2) {
                this.f4199new.setVisibility(0);
                if (ssVar.f4564this) {
                    this.f4199new.setText(getResources().getString(R.string.cube_ptr_pull_down_to_refresh));
                } else {
                    this.f4199new.setText(getResources().getString(R.string.cube_ptr_pull_down));
                }
                View view = this.f4200try;
                if (view != null) {
                    view.clearAnimation();
                    this.f4200try.startAnimation(this.f4197for);
                }
            }
        } else if (i <= offsetToRefresh || i2 > offsetToRefresh || !z || b != 2) {
        } else {
            if (!ssVar.f4564this) {
                this.f4199new.setVisibility(0);
                this.f4199new.setText(R.string.cube_ptr_release_to_refresh);
            }
            View view2 = this.f4200try;
            if (view2 != null) {
                view2.clearAnimation();
                this.f4200try.startAnimation(this.f4198if);
            }
        }
    }

    @Override // com.apk.us
    /* renamed from: new  reason: not valid java name */
    public void mo2355new(ss ssVar) {
        m2351case();
        this.f4195case.setVisibility(4);
        this.f4199new.setVisibility(0);
        this.f4199new.setText(getResources().getString(R.string.cube_ptr_refresh_complete));
    }

    @Override // com.apk.us
    /* renamed from: try  reason: not valid java name */
    public void mo2356try(ss ssVar) {
        m2351case();
        this.f4195case.setVisibility(0);
        this.f4199new.setVisibility(0);
        this.f4199new.setText(R.string.cube_ptr_refreshing);
    }
}
