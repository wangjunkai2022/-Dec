package com.apk;

import android.graphics.Canvas;
import android.graphics.ColorMatrix;
import android.graphics.Matrix;
import android.graphics.Path;
import android.graphics.PointF;
import android.graphics.Region;
import android.graphics.drawable.GradientDrawable;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.apk.d;
import com.apk.y9;
import com.biquge.ebook.app.ad.ads.AdViewRectangle;
import com.biquge.ebook.app.ui.book.NewBookReadActivity;
import com.biquge.ebook.app.widget.BookContentTextView;
import java.lang.ref.WeakReference;
import kimi.wuhends.ebooks.R;

/* compiled from: SimulationPageAnim.java */
/* loaded from: classes8.dex */
public class aa extends x9 {

    /* renamed from: a  reason: collision with root package name */
    public final PointF f11098a;

    /* renamed from: abstract  reason: not valid java name */
    public int f61abstract;
    public PointF b;
    public float c;

    /* renamed from: continue  reason: not valid java name */
    public int f62continue;
    public final Matrix d;
    public final float[] e;
    public boolean f;
    public final float g;
    public GradientDrawable h;
    public GradientDrawable i;

    /* renamed from: implements  reason: not valid java name */
    public PointF f63implements;

    /* renamed from: instanceof  reason: not valid java name */
    public final PointF f64instanceof;

    /* renamed from: interface  reason: not valid java name */
    public final PointF f65interface;
    public GradientDrawable j;
    public GradientDrawable k;
    public final Path l;
    public int m;
    public boolean n;
    public int o;

    /* renamed from: private  reason: not valid java name */
    public final Cdo f66private;

    /* renamed from: protected  reason: not valid java name */
    public final PointF f67protected;

    /* renamed from: strictfp  reason: not valid java name */
    public final Path f68strictfp;

    /* renamed from: synchronized  reason: not valid java name */
    public final PointF f69synchronized;

    /* renamed from: transient  reason: not valid java name */
    public final PointF f70transient;

    /* renamed from: volatile  reason: not valid java name */
    public final Path f71volatile;

    /* compiled from: SimulationPageAnim.java */
    /* renamed from: com.apk.aa$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public static class Cdo extends Handler {

        /* renamed from: do  reason: not valid java name */
        public final WeakReference<aa> f72do;

        public Cdo(aa aaVar) {
            super(Looper.getMainLooper());
            this.f72do = new WeakReference<>(aaVar);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            super.handleMessage(message);
            WeakReference<aa> weakReference = this.f72do;
            if (weakReference != null) {
                try {
                    if (message.what == 1101) {
                        if (weakReference.get() != null) {
                            aa aaVar = this.f72do.get();
                            ViewGroup viewGroup = aaVar.f5498native;
                            aaVar.f5498native = aaVar.f5500public;
                            aaVar.f5500public = viewGroup;
                        }
                    } else if (message.what == 1102) {
                        if (weakReference.get() != null) {
                            this.f72do.get().m29break();
                        }
                    } else if (message.what == 1103 && weakReference.get() != null) {
                        this.f72do.get().f5889super = false;
                    }
                } catch (Exception unused) {
                }
            }
        }
    }

    public aa(int i, int i2, ViewGroup viewGroup, y9.Cif cif) {
        super(i, i2, viewGroup, cif);
        this.f61abstract = 1;
        this.f62continue = 1;
        this.f65interface = new PointF();
        this.f67protected = new PointF();
        this.f70transient = new PointF();
        this.f63implements = new PointF();
        this.f64instanceof = new PointF();
        this.f69synchronized = new PointF();
        this.f11098a = new PointF();
        this.b = new PointF();
        this.e = new float[]{0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 1.0f};
        this.f68strictfp = new Path();
        this.f71volatile = new Path();
        this.l = new Path();
        this.g = (float) Math.hypot(this.f5892try, this.f5878case);
        int[] iArr = {-10066330, 6710886};
        GradientDrawable gradientDrawable = new GradientDrawable(GradientDrawable.Orientation.RIGHT_LEFT, iArr);
        this.i = gradientDrawable;
        gradientDrawable.setGradientType(0);
        GradientDrawable gradientDrawable2 = new GradientDrawable(GradientDrawable.Orientation.LEFT_RIGHT, iArr);
        this.h = gradientDrawable2;
        gradientDrawable2.setGradientType(0);
        int[] iArr2 = {1343295761, 6710886};
        GradientDrawable gradientDrawable3 = new GradientDrawable(GradientDrawable.Orientation.LEFT_RIGHT, iArr2);
        this.j = gradientDrawable3;
        gradientDrawable3.setGradientType(0);
        GradientDrawable gradientDrawable4 = new GradientDrawable(GradientDrawable.Orientation.RIGHT_LEFT, iArr2);
        this.k = gradientDrawable4;
        gradientDrawable4.setGradientType(0);
        new ColorMatrix().set(new float[]{1.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 1.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 1.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 1.0f, 0.0f});
        this.d = new Matrix();
        this.f5881const = 0.01f;
        this.f5884final = 0.01f;
        this.f66private = new Cdo(this);
    }

    /* renamed from: class  reason: not valid java name */
    public static PointF m28class(PointF pointF, PointF pointF2, PointF pointF3, PointF pointF4) {
        PointF pointF5 = new PointF();
        float f = pointF2.y;
        float f2 = pointF.y;
        float f3 = pointF2.x;
        float f4 = pointF.x;
        float f5 = (f - f2) / (f3 - f4);
        float f6 = ((f * f4) - (f2 * f3)) / (f4 - f3);
        float f7 = pointF4.y;
        float f8 = pointF3.y;
        float f9 = pointF4.x;
        float f10 = pointF3.x;
        float f11 = ((((f7 * f10) - (f8 * f9)) / (f10 - f9)) - f6) / (f5 - ((f7 - f8) / (f9 - f10)));
        pointF5.x = f11;
        pointF5.y = (f5 * f11) + f6;
        return pointF5;
    }

    /* renamed from: break  reason: not valid java name */
    public void m29break() {
        h2 h2Var;
        TextView textView;
        ViewGroup viewGroup = this.f5498native;
        if (viewGroup != null) {
            try {
                if (viewGroup.getChildCount() > 0) {
                    View childAt = viewGroup.getChildAt(0);
                    if (childAt != null) {
                        if ("AD".equals(childAt.getTag())) {
                            viewGroup.removeAllViews();
                        } else {
                            BookContentTextView bookContentTextView = (BookContentTextView) childAt.findViewById(R.id.item_read_content_view);
                            if (bookContentTextView != null) {
                                int childCount = bookContentTextView.getChildCount();
                                for (int i = 0; i < childCount; i++) {
                                    View childAt2 = bookContentTextView.getChildAt(i);
                                    if (childAt2 instanceof tg) {
                                        childAt2.setVisibility(8);
                                    }
                                }
                            }
                        }
                        if (this.f5893while == null || (h2Var = NewBookReadActivity.this.f6921catch) == null || (textView = h2Var.t) == null) {
                            return;
                        }
                        h2Var.m1060break(textView);
                    }
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    /* renamed from: case  reason: not valid java name */
    public final void m30case() {
        float f = this.f5881const;
        int i = this.f61abstract;
        float f2 = (f + i) / 2.0f;
        float f3 = this.f5884final;
        int i2 = this.f62continue;
        float f4 = (f3 + i2) / 2.0f;
        PointF pointF = this.f67protected;
        pointF.x = f2 - (((i2 - f4) * (i2 - f4)) / (i - f2));
        pointF.y = i2;
        PointF pointF2 = this.f69synchronized;
        pointF2.x = i;
        if (i2 - f4 == 0.0f) {
            pointF2.y = f4 - (((i - f2) * (i - f2)) / 0.1f);
        } else {
            pointF2.y = f4 - (((i - f2) * (i - f2)) / (i2 - f4));
        }
        PointF pointF3 = this.f65interface;
        float f5 = this.f67protected.x;
        float f6 = f5 - ((this.f61abstract - f5) / 2.0f);
        pointF3.x = f6;
        pointF3.y = this.f62continue;
        float f7 = this.f5881const;
        if (f7 > 0.0f) {
            int i3 = this.f5892try;
            if (f7 < i3 && (f6 < 0.0f || f6 > i3)) {
                PointF pointF4 = this.f65interface;
                float f8 = pointF4.x;
                if (f8 < 0.0f) {
                    pointF4.x = this.f5892try - f8;
                }
                float abs = Math.abs(this.f61abstract - this.f5881const);
                float abs2 = Math.abs(this.f61abstract - ((this.f5892try * abs) / this.f65interface.x));
                this.f5881const = abs2;
                float abs3 = Math.abs(this.f62continue - ((Math.abs(this.f62continue - this.f5884final) * Math.abs(this.f61abstract - abs2)) / abs));
                this.f5884final = abs3;
                float f9 = this.f5881const;
                int i4 = this.f61abstract;
                float f10 = (f9 + i4) / 2.0f;
                int i5 = this.f62continue;
                float f11 = (abs3 + i5) / 2.0f;
                PointF pointF5 = this.f67protected;
                pointF5.x = f10 - (((i5 - f11) * (i5 - f11)) / (i4 - f10));
                pointF5.y = i5;
                PointF pointF6 = this.f69synchronized;
                pointF6.x = i4;
                if (i5 - f11 == 0.0f) {
                    pointF6.y = f11 - (((i4 - f10) * (i4 - f10)) / 0.1f);
                } else {
                    pointF6.y = f11 - (((i4 - f10) * (i4 - f10)) / (i5 - f11));
                }
                PointF pointF7 = this.f65interface;
                float f12 = this.f67protected.x;
                pointF7.x = f12 - ((this.f61abstract - f12) / 2.0f);
            }
        }
        PointF pointF8 = this.f64instanceof;
        int i6 = this.f61abstract;
        pointF8.x = i6;
        float f13 = this.f69synchronized.y;
        int i7 = this.f62continue;
        pointF8.y = f13 - ((i7 - f13) / 2.0f);
        this.c = (float) Math.hypot(this.f5881const - i6, this.f5884final - i7);
        this.f63implements = m28class(new PointF(this.f5881const, this.f5884final), this.f67protected, this.f65interface, this.f64instanceof);
        PointF m28class = m28class(new PointF(this.f5881const, this.f5884final), this.f69synchronized, this.f65interface, this.f64instanceof);
        this.b = m28class;
        PointF pointF9 = this.f70transient;
        PointF pointF10 = this.f65interface;
        float f14 = pointF10.x;
        PointF pointF11 = this.f67protected;
        float f15 = (pointF11.x * 2.0f) + f14;
        PointF pointF12 = this.f63implements;
        pointF9.x = (f15 + pointF12.x) / 4.0f;
        pointF9.y = (((pointF11.y * 2.0f) + pointF10.y) + pointF12.y) / 4.0f;
        PointF pointF13 = this.f11098a;
        PointF pointF14 = this.f64instanceof;
        float f16 = pointF14.x;
        PointF pointF15 = this.f69synchronized;
        pointF13.x = (((pointF15.x * 2.0f) + f16) + m28class.x) / 4.0f;
        pointF13.y = (((pointF15.y * 2.0f) + pointF14.y) + m28class.y) / 4.0f;
    }

    /* renamed from: catch  reason: not valid java name */
    public final void m31catch(Canvas canvas, View view) {
        int i;
        int i2;
        GradientDrawable gradientDrawable;
        this.f71volatile.reset();
        Path path = this.f71volatile;
        PointF pointF = this.f65interface;
        path.moveTo(pointF.x, pointF.y);
        Path path2 = this.f71volatile;
        PointF pointF2 = this.f70transient;
        path2.lineTo(pointF2.x, pointF2.y);
        Path path3 = this.f71volatile;
        PointF pointF3 = this.f11098a;
        path3.lineTo(pointF3.x, pointF3.y);
        Path path4 = this.f71volatile;
        PointF pointF4 = this.f64instanceof;
        path4.lineTo(pointF4.x, pointF4.y);
        this.f71volatile.lineTo(this.f61abstract, this.f62continue);
        this.f71volatile.close();
        float degrees = (float) Math.toDegrees(Math.atan2(this.f67protected.x - this.f61abstract, this.f69synchronized.y - this.f62continue));
        if (this.f) {
            float f = this.f65interface.x;
            i = (int) f;
            i2 = (int) ((this.c / 4.0f) + f);
            gradientDrawable = this.h;
        } else {
            float f2 = this.f65interface.x;
            i = (int) (f2 - (this.c / 4.0f));
            i2 = (int) f2;
            gradientDrawable = this.i;
        }
        canvas.save();
        try {
            canvas.clipPath(this.f68strictfp);
            canvas.clipPath(this.f71volatile, Region.Op.INTERSECT);
        } catch (Exception unused) {
        }
        canvas.save();
        view.draw(canvas);
        try {
            canvas.restore();
        } catch (Exception e) {
            e.printStackTrace();
        }
        PointF pointF5 = this.f65interface;
        canvas.rotate(degrees, pointF5.x, pointF5.y);
        float f3 = this.f65interface.y;
        gradientDrawable.setBounds(i, (int) f3, i2, (int) (this.g + f3));
        gradientDrawable.draw(canvas);
        try {
            canvas.restore();
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    /* renamed from: const  reason: not valid java name */
    public final void m32const(boolean z) {
        i1 i1Var;
        h2 h2Var;
        if (this.n != z && (i1Var = this.f5893while) != null && (h2Var = NewBookReadActivity.this.f6921catch) != null && h2Var.f1701throw != null) {
            d dVar = d.Cdo.f803do;
            WeakReference<AdViewRectangle> weakReference = dVar.f800do;
            if (weakReference != null && weakReference.get() != null) {
                dVar.f800do.get().setMove(z);
            }
            d dVar2 = d.Cdo.f803do;
            WeakReference<AdViewRectangle> weakReference2 = dVar2.f801for;
            if (weakReference2 != null && weakReference2.get() != null) {
                dVar2.f801for.get().setMove(z);
            }
        }
        this.n = z;
    }

    /* renamed from: else  reason: not valid java name */
    public final void m33else(Canvas canvas, View view) {
        try {
            this.f71volatile.reset();
            this.f71volatile.moveTo(this.f11098a.x, this.f11098a.y);
            this.f71volatile.lineTo(this.f70transient.x, this.f70transient.y);
            this.f71volatile.lineTo(this.f5881const, this.f5884final);
            this.f71volatile.close();
            canvas.save();
            canvas.clipPath(this.f71volatile, Region.Op.INTERSECT);
        } catch (Exception unused) {
        }
        float hypot = (float) Math.hypot(this.f61abstract - this.f67protected.x, this.f69synchronized.y - this.f62continue);
        float f = (this.f61abstract - this.f67protected.x) / hypot;
        float f2 = (this.f69synchronized.y - this.f62continue) / hypot;
        float[] fArr = this.e;
        float f3 = 2.0f * f;
        float f4 = 1.0f - (f * f3);
        fArr[0] = -f4;
        fArr[1] = f3 * f2;
        fArr[3] = fArr[1];
        fArr[4] = f4;
        this.d.reset();
        this.d.setValues(this.e);
        Matrix matrix = this.d;
        PointF pointF = this.f67protected;
        matrix.preTranslate(-pointF.x, -pointF.y);
        Matrix matrix2 = this.d;
        PointF pointF2 = this.f67protected;
        matrix2.postTranslate(pointF2.x, pointF2.y);
        canvas.setMatrix(this.d);
        view.draw(canvas);
    }

    @Override // com.apk.y9
    /* renamed from: for  reason: not valid java name */
    public void mo34for(y9.Cdo cdo) {
        this.f5888new = cdo;
        int ordinal = cdo.ordinal();
        if (ordinal == 1) {
            int i = this.f5892try;
            float f = this.f5879catch;
            if (i / 2 > f) {
                m38try(i - f);
            }
        } else if (ordinal != 2) {
        } else {
            float f2 = this.f5879catch;
            int i2 = this.f5892try;
            if (f2 > i2 / 2) {
                m38try(f2);
            } else {
                m38try(i2 - f2);
            }
        }
    }

    /* renamed from: goto  reason: not valid java name */
    public final void m35goto(Canvas canvas, View view) {
        this.f68strictfp.reset();
        Path path = this.f68strictfp;
        PointF pointF = this.f65interface;
        path.moveTo(pointF.x, pointF.y);
        Path path2 = this.f68strictfp;
        PointF pointF2 = this.f67protected;
        float f = pointF2.x;
        float f2 = pointF2.y;
        PointF pointF3 = this.f63implements;
        path2.quadTo(f, f2, pointF3.x, pointF3.y);
        this.f68strictfp.lineTo(this.f5881const, this.f5884final);
        Path path3 = this.f68strictfp;
        PointF pointF4 = this.b;
        path3.lineTo(pointF4.x, pointF4.y);
        Path path4 = this.f68strictfp;
        PointF pointF5 = this.f69synchronized;
        float f3 = pointF5.x;
        float f4 = pointF5.y;
        PointF pointF6 = this.f64instanceof;
        path4.quadTo(f3, f4, pointF6.x, pointF6.y);
        this.f68strictfp.lineTo(this.f61abstract, this.f62continue);
        this.f68strictfp.close();
        canvas.save();
        if (Build.VERSION.SDK_INT >= 28) {
            this.l.reset();
            this.l.moveTo(0.0f, 0.0f);
            this.l.lineTo(this.f5890this, 0.0f);
            this.l.lineTo(this.f5890this, this.f5877break);
            this.l.lineTo(0.0f, this.f5877break);
            this.l.close();
            this.l.op(this.f68strictfp, Path.Op.XOR);
            canvas.clipPath(this.l);
        } else {
            canvas.clipPath(this.f68strictfp, Region.Op.XOR);
        }
        view.draw(canvas);
        try {
            canvas.restore();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override // com.apk.y9
    /* renamed from: new  reason: not valid java name */
    public void mo36new(float f, float f2) {
        this.f5881const = f;
        this.f5884final = f2;
        int i = this.f5877break;
        if (this.f5880class < i / 2) {
            this.f5884final = i;
            return;
        }
        if (this.o == 0) {
            this.o = i / 20;
        }
        this.f5884final = this.f5877break - this.o;
    }

    /* renamed from: this  reason: not valid java name */
    public void m37this(Canvas canvas) {
        double atan2;
        double d;
        GradientDrawable gradientDrawable;
        int i;
        int i2;
        int i3;
        int i4;
        GradientDrawable gradientDrawable2;
        if (this.f) {
            PointF pointF = this.f67protected;
            atan2 = Math.atan2(pointF.y - this.f5884final, this.f5881const - pointF.x);
        } else {
            float f = this.f5884final;
            PointF pointF2 = this.f67protected;
            atan2 = Math.atan2(f - pointF2.y, this.f5881const - pointF2.x);
        }
        double d2 = 0.7853981633974483d - atan2;
        double sin = Math.sin(d2) * 35.35d;
        float cos = (float) (this.f5881const + (Math.cos(d2) * 35.35d));
        if (this.f) {
            d = this.f5884final + sin;
        } else {
            d = this.f5884final - sin;
        }
        float f2 = (float) d;
        this.f71volatile.reset();
        this.f71volatile.moveTo(cos, f2);
        this.f71volatile.lineTo(this.f5881const, this.f5884final);
        Path path = this.f71volatile;
        PointF pointF3 = this.f67protected;
        path.lineTo(pointF3.x, pointF3.y);
        Path path2 = this.f71volatile;
        PointF pointF4 = this.f65interface;
        path2.lineTo(pointF4.x, pointF4.y);
        this.f71volatile.close();
        canvas.save();
        try {
            if (Build.VERSION.SDK_INT >= 28) {
                this.l.reset();
                this.l.moveTo(0.0f, 0.0f);
                this.l.lineTo(this.f5890this, 0.0f);
                this.l.lineTo(this.f5890this, this.f5877break);
                this.l.lineTo(0.0f, this.f5877break);
                this.l.close();
                this.l.op(this.f68strictfp, Path.Op.XOR);
                canvas.clipPath(this.l);
            } else {
                canvas.clipPath(this.f68strictfp, Region.Op.XOR);
            }
            canvas.clipPath(this.f71volatile, Region.Op.INTERSECT);
        } catch (Exception unused) {
        }
        if (this.f) {
            i2 = (int) this.f67protected.x;
            i = i2 + 8;
            gradientDrawable = this.j;
        } else {
            float f3 = this.f67protected.x;
            gradientDrawable = this.k;
            i = ((int) f3) + 1;
            i2 = (int) (f3 - 8.0f);
        }
        float f4 = this.f5881const;
        PointF pointF5 = this.f67protected;
        PointF pointF6 = this.f67protected;
        canvas.rotate((float) Math.toDegrees(Math.atan2(f4 - pointF5.x, pointF5.y - this.f5884final)), pointF6.x, pointF6.y);
        float f5 = this.f67protected.y;
        gradientDrawable.setBounds(i2, (int) (f5 - this.g), i, (int) f5);
        gradientDrawable.draw(canvas);
        canvas.restore();
        this.f71volatile.reset();
        this.f71volatile.moveTo(cos, f2);
        this.f71volatile.lineTo(this.f5881const, this.f5884final);
        Path path3 = this.f71volatile;
        PointF pointF7 = this.f69synchronized;
        path3.lineTo(pointF7.x, pointF7.y);
        Path path4 = this.f71volatile;
        PointF pointF8 = this.f64instanceof;
        path4.lineTo(pointF8.x, pointF8.y);
        this.f71volatile.close();
        canvas.save();
        try {
            if (Build.VERSION.SDK_INT >= 28) {
                this.l.reset();
                this.l.moveTo(0.0f, 0.0f);
                this.l.lineTo(this.f5890this, 0.0f);
                this.l.lineTo(this.f5890this, this.f5877break);
                this.l.lineTo(0.0f, this.f5877break);
                this.l.close();
                this.l.op(this.f68strictfp, Path.Op.XOR);
                canvas.clipPath(this.l);
            } else {
                canvas.clipPath(this.f68strictfp, Region.Op.XOR);
            }
            canvas.clipPath(this.f71volatile, Region.Op.INTERSECT);
        } catch (Exception unused2) {
        }
        if (this.f) {
            float f6 = this.f69synchronized.y;
            i3 = (int) f6;
            i4 = (int) (f6 + 8.0f);
            gradientDrawable2 = this.j;
        } else {
            float f7 = this.f69synchronized.y;
            i3 = (int) (f7 - 8.0f);
            i4 = (int) (f7 + 1.0f);
            gradientDrawable2 = this.k;
        }
        PointF pointF9 = this.f69synchronized;
        float degrees = (float) Math.toDegrees(Math.atan2(pointF9.y - this.f5884final, pointF9.x - this.f5881const));
        PointF pointF10 = this.f69synchronized;
        canvas.rotate(degrees, pointF10.x, pointF10.y);
        float f8 = this.f69synchronized.y;
        if (f8 < 0.0f) {
            f8 -= this.f5878case;
        }
        int hypot = (int) Math.hypot(this.f69synchronized.x, f8);
        float f9 = this.g;
        if (hypot > f9) {
            float f10 = this.f69synchronized.x;
            gradientDrawable2.setBounds(((int) (f10 - 8.0f)) - hypot, i3, ((int) (f10 + f9)) - hypot, i4);
        } else {
            float f11 = this.f69synchronized.x;
            gradientDrawable2.setBounds((int) (f11 - f9), i3, (int) f11, i4);
        }
        gradientDrawable2.draw(canvas);
        canvas.restore();
    }

    /* renamed from: try  reason: not valid java name */
    public void m38try(float f) {
        int i = this.f5892try;
        boolean z = false;
        if (f <= i / 2) {
            this.f61abstract = 0;
        } else {
            this.f61abstract = i;
        }
        int i2 = this.f5877break;
        this.f62continue = i2;
        if ((this.f61abstract == 0 && i2 == this.f5878case) || (this.f61abstract == this.f5892try && this.f62continue == 0)) {
            z = true;
        }
        this.f = z;
    }
}
