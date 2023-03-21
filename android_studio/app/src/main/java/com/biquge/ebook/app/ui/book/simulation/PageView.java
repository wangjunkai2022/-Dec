package com.biquge.ebook.app.ui.book.simulation;

import android.app.Activity;
import android.content.Context;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.apk.aa;
import com.apk.h2;
import com.apk.i1;
import com.apk.r0;
import com.apk.u;
import com.apk.x9;
import com.apk.y9;
import com.apk.z9;
import com.biquge.ebook.app.ui.book.NewBookReadActivity;
import com.biquge.ebook.app.widget.BookContentTextView;
import com.biquge.ebook.app.widget.BookPageTextView;
import com.biquge.ebook.app.widget.BookTitleTextView;
import java.io.File;
import kimi.wuhends.ebooks.R;

/* loaded from: classes8.dex */
public class PageView extends FrameLayout {

    /* renamed from: break  reason: not valid java name */
    public boolean f7164break;

    /* renamed from: case  reason: not valid java name */
    public final y9.Cif f7165case;

    /* renamed from: catch  reason: not valid java name */
    public Cif f7166catch;

    /* renamed from: class  reason: not valid java name */
    public boolean f7167class;

    /* renamed from: const  reason: not valid java name */
    public final GestureDetector f7168const;

    /* renamed from: do  reason: not valid java name */
    public int f7169do;

    /* renamed from: else  reason: not valid java name */
    public boolean f7170else;

    /* renamed from: final  reason: not valid java name */
    public int f7171final;

    /* renamed from: for  reason: not valid java name */
    public boolean f7172for;

    /* renamed from: goto  reason: not valid java name */
    public boolean f7173goto;

    /* renamed from: if  reason: not valid java name */
    public int f7174if;

    /* renamed from: new  reason: not valid java name */
    public h2 f7175new;

    /* renamed from: super  reason: not valid java name */
    public int f7176super;

    /* renamed from: this  reason: not valid java name */
    public boolean f7177this;

    /* renamed from: try  reason: not valid java name */
    public y9 f7178try;

    /* renamed from: com.biquge.ebook.app.ui.book.simulation.PageView$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cdo implements y9.Cif {
        public Cdo() {
        }

        /* renamed from: do  reason: not valid java name */
        public boolean m3360do(boolean z) {
            h2 h2Var;
            PageView pageView = PageView.this;
            boolean z2 = false;
            pageView.f7177this = false;
            if (z) {
                Cif cif = pageView.f7166catch;
                if (cif != null) {
                    NewBookReadActivity.Cif cif2 = (NewBookReadActivity.Cif) cif;
                    if (r0.m2199catch().f3156extends) {
                        NewBookReadActivity.this.F(true, false);
                    } else {
                        z2 = true;
                    }
                    if (z2 && (h2Var = pageView.f7175new) != null) {
                        z2 = h2Var.L();
                    }
                }
                pageView.f7170else = z2;
            }
            return PageView.this.f7170else;
        }

        /* renamed from: if  reason: not valid java name */
        public boolean m3361if(boolean z) {
            h2 h2Var;
            PageView pageView = PageView.this;
            boolean z2 = false;
            pageView.f7177this = false;
            if (z) {
                Cif cif = pageView.f7166catch;
                if (cif != null) {
                    NewBookReadActivity.Cif cif2 = (NewBookReadActivity.Cif) cif;
                    if (r0.m2199catch().f3156extends) {
                        NewBookReadActivity.this.F(true, false);
                    } else {
                        z2 = true;
                    }
                    if (z2 && (h2Var = pageView.f7175new) != null) {
                        z2 = h2Var.M();
                    }
                }
                pageView.f7173goto = z2;
            }
            return PageView.this.f7173goto;
        }
    }

    /* renamed from: com.biquge.ebook.app.ui.book.simulation.PageView$if  reason: invalid class name */
    /* loaded from: classes8.dex */
    public interface Cif {
    }

    public PageView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        this.f7172for = true;
        this.f7165case = new Cdo();
        DisplayMetrics displayMetrics = getDisplayMetrics();
        this.f7169do = displayMetrics.widthPixels;
        this.f7174if = displayMetrics.heightPixels;
        this.f7168const = new GestureDetector(getContext().getApplicationContext(), new z9(this));
    }

    private DisplayMetrics getDisplayMetrics() {
        DisplayMetrics displayMetrics = new DisplayMetrics();
        ((Activity) getContext()).getWindowManager().getDefaultDisplay().getRealMetrics(displayMetrics);
        return displayMetrics;
    }

    @Override // android.view.View
    public void computeScroll() {
        y9 y9Var = this.f7178try;
        if (y9Var != null) {
            x9 x9Var = (x9) y9Var;
            if (x9Var.f5887if.computeScrollOffset()) {
                int currX = x9Var.f5887if.getCurrX();
                int currY = x9Var.f5887if.getCurrY();
                x9Var.mo36new(currX, currY);
                if (x9Var.f5887if.getFinalX() == currX && x9Var.f5887if.getFinalY() == currY) {
                    x9Var.f5496finally = false;
                }
                x9Var.f5882do.invalidate();
            }
        }
        super.computeScroll();
    }

    /* renamed from: do  reason: not valid java name */
    public void m3357do() {
        y9 y9Var = this.f7178try;
        if (y9Var instanceof x9) {
            x9 x9Var = (x9) y9Var;
            ViewGroup viewGroup = x9Var.f5498native;
            x9Var.f5498native = x9Var.f5500public;
            x9Var.f5500public = viewGroup;
        }
        h2 h2Var = this.f7175new;
        if (h2Var != null) {
            h2Var.r(getNextPage(), false);
        }
    }

    @Override // android.view.ViewGroup
    public boolean drawChild(Canvas canvas, View view, long j) {
        y9 y9Var = this.f7178try;
        if (y9Var != null) {
            x9 x9Var = (x9) y9Var;
            if (x9Var.f5496finally) {
                aa aaVar = (aa) x9Var;
                int i = aaVar.f5891throw;
                if (i != 0 && i != aaVar.m) {
                    canvas.drawColor(i);
                    aaVar.m = aaVar.f5891throw;
                }
                if (aaVar.f5888new == y9.Cdo.NEXT) {
                    if ("CurView".equals(view.getTag())) {
                        aaVar.m30case();
                        aaVar.m35goto(canvas, aaVar.f5498native);
                        aaVar.m31catch(canvas, aaVar.f5500public);
                        aaVar.m37this(canvas);
                        aaVar.m33else(canvas, aaVar.f5498native);
                    }
                } else {
                    aaVar.m30case();
                    aaVar.m35goto(canvas, aaVar.f5500public);
                    aaVar.m31catch(canvas, aaVar.f5498native);
                    aaVar.m37this(canvas);
                    aaVar.m33else(canvas, aaVar.f5500public);
                }
                aaVar.m32const(true);
            } else {
                aa aaVar2 = (aa) x9Var;
                if (aaVar2.f5501return) {
                    if ("CurView".equals(view.getTag())) {
                        aaVar2.f5498native.draw(canvas);
                        aa.Cdo cdo = aaVar2.f66private;
                        if (cdo != null) {
                            cdo.removeMessages(1101);
                            aaVar2.f66private.sendEmptyMessageDelayed(1101, 30L);
                        }
                    }
                } else if ("NextView".equals(view.getTag())) {
                    aaVar2.f5500public.draw(canvas);
                    aa.Cdo cdo2 = aaVar2.f66private;
                    if (cdo2 != null) {
                        cdo2.removeMessages(1102);
                        aaVar2.f66private.sendEmptyMessageDelayed(1102, 20L);
                    }
                }
                aaVar2.m32const(false);
            }
        }
        return true;
    }

    /* renamed from: for  reason: not valid java name */
    public void m3358for() {
        DisplayMetrics displayMetrics = getDisplayMetrics();
        int i = displayMetrics.widthPixels;
        this.f7169do = i;
        int i2 = displayMetrics.heightPixels;
        this.f7174if = i2;
        this.f7178try = null;
        this.f7178try = new aa(i, i2, this, this.f7165case);
    }

    public ViewGroup getCurPage() {
        y9 y9Var = this.f7178try;
        if (y9Var == null) {
            return null;
        }
        return ((x9) y9Var).f5498native;
    }

    public ViewGroup getNextPage() {
        y9 y9Var = this.f7178try;
        if (y9Var == null) {
            return null;
        }
        return ((x9) y9Var).f5500public;
    }

    /* renamed from: if  reason: not valid java name */
    public void m3359if() {
        invalidate();
        try {
            if (getCurPage() != null) {
                ((BookTitleTextView) getCurPage().findViewById(R.id.book_read_chapter_name_txt)).invalidate();
                ((BookContentTextView) getCurPage().findViewById(R.id.item_read_content_view)).invalidate();
                ((BookPageTextView) getCurPage().findViewById(R.id.book_read_slide_page_txt)).invalidate();
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        try {
            if (getCurPage() != null) {
                ((BookTitleTextView) getNextPage().findViewById(R.id.book_read_chapter_name_txt)).invalidate();
                ((BookContentTextView) getNextPage().findViewById(R.id.item_read_content_view)).invalidate();
                ((BookPageTextView) getNextPage().findViewById(R.id.book_read_slide_page_txt)).invalidate();
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        boolean z = true;
        if (action == 0) {
            this.f7171final = (int) motionEvent.getX();
            this.f7176super = (int) motionEvent.getY();
            this.f7164break = this.f7177this && this.f7178try.f5889super;
            Cif cif = this.f7166catch;
            if (cif != null) {
                NewBookReadActivity.Cif cif2 = (NewBookReadActivity.Cif) cif;
                if (!r0.m2199catch().f3156extends) {
                    NewBookReadActivity newBookReadActivity = NewBookReadActivity.this;
                    if (!newBookReadActivity.f6947transient.f7164break) {
                        if (newBookReadActivity.mMenuView.m3342native()) {
                            NewBookReadActivity.this.mMenuView.m3332const();
                        } else {
                            z = true ^ (!NewBookReadActivity.this.f6921catch.f1671break.f10215do);
                        }
                    }
                    z = false;
                }
                this.f7172for = z;
            }
            y9 y9Var = this.f7178try;
            if (y9Var != null) {
                y9Var.mo2987if(motionEvent);
            }
        } else if (action == 1) {
            this.f7164break = false;
        } else if (action == 2) {
            if (Math.abs(((int) motionEvent.getX()) - this.f7171final) > Math.abs(((int) motionEvent.getY()) - this.f7176super)) {
                return true;
            }
        }
        return false;
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        y9 y9Var;
        if (this.f7172for && !this.f7164break) {
            GestureDetector gestureDetector = this.f7168const;
            if ((gestureDetector == null || !gestureDetector.onTouchEvent(motionEvent)) && motionEvent.getAction() == 1 && this.f7167class && (y9Var = this.f7178try) != null) {
                y9Var.mo2987if(motionEvent);
            }
            return true;
        }
        return true;
    }

    public void setBgColor(int i) {
        try {
            this.f7178try.f5891throw = i;
            getCurPage().setBackgroundColor(i);
            getNextPage().setBackgroundColor(i);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void setBgImage(File file) {
        try {
            setBgColor(0);
            y9 y9Var = this.f7178try;
            BitmapFactory.decodeResource(getResources(), R.drawable.shape_default_head_bg);
            if (y9Var != null) {
                u.m2655static(file, getCurPage());
                u.m2655static(file, getNextPage());
                return;
            }
            throw null;
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void setBookReadPresenter(h2 h2Var) {
        this.f7175new = h2Var;
    }

    public void setOnDrawMoveListener(i1 i1Var) {
        y9 y9Var = this.f7178try;
        if (y9Var != null) {
            y9Var.f5893while = i1Var;
        }
    }

    public void setTouchListener(Cif cif) {
        this.f7166catch = cif;
    }
}
