package com.apk;

import android.graphics.Paint;
import android.graphics.Typeface;
import com.biquge.ebook.app.bean.NewReadFont;
import org.litepal.LitePal;

/* compiled from: PaintManager.java */
/* loaded from: classes8.dex */
public class ca {

    /* renamed from: break  reason: not valid java name */
    public static ca f540break;

    /* renamed from: case  reason: not valid java name */
    public int f541case;

    /* renamed from: do  reason: not valid java name */
    public final Paint f542do;

    /* renamed from: else  reason: not valid java name */
    public float f543else;

    /* renamed from: for  reason: not valid java name */
    public final Paint f544for;

    /* renamed from: goto  reason: not valid java name */
    public float f545goto;

    /* renamed from: if  reason: not valid java name */
    public final Paint f546if;

    /* renamed from: this  reason: not valid java name */
    public final gg<String, Float> f548this = new gg<>();

    /* renamed from: new  reason: not valid java name */
    public int f547new = g2.m908break();

    /* renamed from: try  reason: not valid java name */
    public float f549try = eg.m585break(g2.m910catch());

    public ca() {
        Paint paint = new Paint(1);
        this.f542do = paint;
        paint.setAntiAlias(true);
        this.f542do.setTextSize(this.f547new);
        Paint paint2 = new Paint(1);
        this.f546if = paint2;
        paint2.setAntiAlias(true);
        this.f546if.setTextSize(eg.m587catch(12.0f));
        this.f546if.setColor(this.f541case);
        Paint paint3 = new Paint(1);
        this.f544for = paint3;
        paint3.setAntiAlias(true);
        this.f544for.setTypeface(Typeface.DEFAULT_BOLD);
        this.f544for.setTextSize(eg.m587catch(28.5f));
        this.f544for.setColor(this.f541case);
        NewReadFont newReadFont = (NewReadFont) LitePal.where("url = ?", tt.m2620do("refresh_read_font_url", "default_font_url")).findFirst(NewReadFont.class);
        if (newReadFont != null) {
            m316for(newReadFont.getLocalPath());
        }
    }

    /* renamed from: do  reason: not valid java name */
    public static ca m315do() {
        if (f540break == null) {
            synchronized (ca.class) {
                if (f540break == null) {
                    f540break = new ca();
                }
            }
        }
        return f540break;
    }

    /* renamed from: for  reason: not valid java name */
    public void m316for(String str) {
        if (Cgoto.m1024volatile(str)) {
            try {
                this.f542do.setTypeface(Typeface.createFromFile(str));
                this.f546if.setTypeface(Typeface.createFromFile(str));
                this.f544for.setTypeface(Typeface.createFromFile(str));
                return;
            } catch (Exception e) {
                e.printStackTrace();
                this.f542do.setTypeface(Typeface.DEFAULT);
                this.f546if.setTypeface(Typeface.DEFAULT);
                this.f544for.setTypeface(Typeface.DEFAULT);
                tt.f4763do.putString("refresh_read_font_url", "default_font_url");
                return;
            }
        }
        this.f542do.setTypeface(Typeface.DEFAULT);
        this.f546if.setTypeface(Typeface.DEFAULT);
        this.f544for.setTypeface(Typeface.DEFAULT);
        tt.f4763do.putString("refresh_read_font_url", "default_font_url");
    }

    /* renamed from: if  reason: not valid java name */
    public float m317if(String str) {
        try {
            gg<String, Float> ggVar = this.f548this;
            ggVar.m957do();
            if (ggVar.f1563if.containsKey(str)) {
                return this.f548this.get(str).floatValue();
            }
            return 0.0f;
        } catch (Exception e) {
            e.printStackTrace();
            return 0.0f;
        }
    }

    /* renamed from: new  reason: not valid java name */
    public void m318new() {
        this.f549try = eg.m585break(g2.m910catch());
    }

    /* renamed from: try  reason: not valid java name */
    public void m319try(int i) {
        this.f541case = i;
        this.f542do.setColor(i);
        this.f546if.setColor(this.f541case);
        this.f544for.setColor(this.f541case);
    }
}
