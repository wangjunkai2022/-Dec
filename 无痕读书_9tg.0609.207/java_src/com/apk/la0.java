package com.apk;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.text.Editable;
import android.text.SpannableString;
import android.text.TextPaint;
import android.text.TextUtils;
import android.text.style.ClickableSpan;
import android.text.style.ImageSpan;
import android.view.View;
import androidx.annotation.NonNull;
import com.tr.comment.sdk.R$color;
import com.tr.comment.sdk.bean.TrCommentBean;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
/* compiled from: MoonUtils.java */
/* loaded from: classes7.dex */
public class la0 {

    /* renamed from: do  reason: not valid java name */
    public static final Pattern f2774do = Pattern.compile("<a.*?>.*?</a>");

    /* compiled from: MoonUtils.java */
    /* renamed from: com.apk.la0$do  reason: invalid class name */
    /* loaded from: classes7.dex */
    public static class Cdo extends ClickableSpan {

        /* renamed from: do  reason: not valid java name */
        public int f2775do;

        /* renamed from: for  reason: not valid java name */
        public String f2776for;

        /* renamed from: if  reason: not valid java name */
        public int f2777if;

        /* renamed from: new  reason: not valid java name */
        public String f2778new;

        public Cdo(String str, String str2) {
            this.f2778new = str;
            this.f2776for = str2;
        }

        @Override // android.text.style.ClickableSpan
        public void onClick(View view) {
            try {
                if (!TextUtils.isEmpty(this.f2776for) && TextUtils.isEmpty(Uri.parse(this.f2776for).getScheme())) {
                    this.f2776for = "http://" + this.f2776for;
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }

        @Override // android.text.style.ClickableSpan, android.text.style.CharacterStyle
        public void updateDrawState(TextPaint textPaint) {
            super.updateDrawState(textPaint);
            textPaint.setUnderlineText(true);
        }
    }

    /* compiled from: MoonUtils.java */
    /* renamed from: com.apk.la0$for  reason: invalid class name */
    /* loaded from: classes7.dex */
    public static class Cfor extends ClickableSpan {
        @Override // android.text.style.ClickableSpan
        public void onClick(View view) {
        }

        @Override // android.text.style.ClickableSpan, android.text.style.CharacterStyle
        public void updateDrawState(TextPaint textPaint) {
            super.updateDrawState(textPaint);
            textPaint.setColor(k40.m1444do(R$color.tr_sdk_comment_4f6883));
            textPaint.setUnderlineText(false);
        }
    }

    /* compiled from: MoonUtils.java */
    /* renamed from: com.apk.la0$if  reason: invalid class name */
    /* loaded from: classes7.dex */
    public static class Cif extends ImageSpan {
        public Cif(@NonNull Drawable drawable, int i) {
            super(drawable, i);
        }

        @Override // android.text.style.DynamicDrawableSpan, android.text.style.ReplacementSpan
        public void draw(@NonNull Canvas canvas, CharSequence charSequence, int i, int i2, float f, int i3, int i4, int i5, @NonNull Paint paint) {
            try {
                Drawable drawable = getDrawable();
                Paint.FontMetricsInt fontMetricsInt = paint.getFontMetricsInt();
                canvas.save();
                canvas.translate(f, ((((fontMetricsInt.descent + i4) + i4) + fontMetricsInt.ascent) / 2) - (drawable.getBounds().bottom / 2));
                drawable.draw(canvas);
                canvas.restore();
            } catch (Exception unused) {
            }
        }

        @Override // android.text.style.DynamicDrawableSpan, android.text.style.ReplacementSpan
        public int getSize(Paint paint, CharSequence charSequence, int i, int i2, Paint.FontMetricsInt fontMetricsInt) {
            Rect bounds = getDrawable().getBounds();
            if (fontMetricsInt != null) {
                Paint.FontMetricsInt fontMetricsInt2 = paint.getFontMetricsInt();
                int i3 = fontMetricsInt2.bottom - fontMetricsInt2.top;
                int i4 = (bounds.bottom - bounds.top) / 2;
                int i5 = i3 / 4;
                int i6 = i4 - i5;
                int i7 = -(i4 + i5);
                fontMetricsInt.ascent = i7;
                fontMetricsInt.top = i7;
                fontMetricsInt.bottom = i6;
                fontMetricsInt.descent = i6;
            }
            return bounds.right;
        }
    }

    /* renamed from: do  reason: not valid java name */
    public static Drawable m1615do(Context context, String str, float f) {
        BitmapDrawable bitmapDrawable;
        ga0 ga0Var = ha0.f1820for.get(str);
        if (ga0Var == null || TextUtils.isEmpty(ga0Var.f1539do)) {
            bitmapDrawable = null;
        } else {
            Bitmap bitmap = ha0.f1822new.get(ga0Var.f1541if);
            if (bitmap == null) {
                Bitmap decodeResource = BitmapFactory.decodeResource(context.getResources(), ga0Var.f1540for);
                int m1461super = k40.m1461super(35.0f);
                bitmap = Bitmap.createScaledBitmap(decodeResource, m1461super, m1461super, true);
            }
            bitmapDrawable = new BitmapDrawable(context.getResources(), bitmap);
        }
        if (bitmapDrawable != null) {
            bitmapDrawable.setBounds(0, 0, (int) (bitmapDrawable.getIntrinsicWidth() * f), (int) (bitmapDrawable.getIntrinsicHeight() * f));
        }
        return bitmapDrawable;
    }

    /* renamed from: for  reason: not valid java name */
    public static String m1616for(String str, TrCommentBean trCommentBean) {
        if (trCommentBean != null) {
            String m1618new = m1618new(" //@", trCommentBean.getContent());
            StringBuilder m1025while = Cgoto.m1025while(str, " //@");
            m1025while.append(trCommentBean.getUserName());
            m1025while.append("：");
            m1025while.append(m1618new);
            return m1025while.toString();
        }
        return str;
    }

    /* renamed from: if  reason: not valid java name */
    public static SpannableString m1617if(Context context, String str) {
        int end;
        int indexOf;
        int indexOf2;
        int indexOf3;
        ArrayList arrayList = new ArrayList();
        if (TextUtils.isEmpty(str)) {
            str = "";
        }
        Matcher matcher = f2774do.matcher(str);
        while (matcher.find()) {
            int start = matcher.start();
            String substring = str.substring(start, matcher.end());
            String str2 = null;
            String substring2 = (!substring.toLowerCase().contains("href") || (indexOf3 = substring.indexOf("\"", (indexOf2 = (indexOf = substring.indexOf("\"")) + 1))) <= indexOf) ? null : substring.substring(indexOf2, indexOf3);
            int indexOf4 = substring.indexOf(">");
            int indexOf5 = substring.indexOf("<", indexOf4);
            if (indexOf5 > indexOf4) {
                str2 = substring.substring(indexOf4 + 1, indexOf5);
            }
            Cdo cdo = new Cdo(str2, substring2);
            str = str.substring(0, start) + cdo.f2778new + str.substring(end);
            cdo.f2775do = start;
            cdo.f2777if = cdo.f2778new.length() + start;
            arrayList.add(cdo);
            matcher = f2774do.matcher(str);
        }
        SpannableString spannableString = new SpannableString(str);
        Matcher matcher2 = ha0.f1818do.matcher(str);
        while (matcher2.find()) {
            int start2 = matcher2.start();
            int end2 = matcher2.end();
            Drawable m1615do = m1615do(context, str.substring(start2, end2), 0.6f);
            if (m1615do != null) {
                spannableString.setSpan(new Cif(m1615do, 0), start2, end2, 33);
            }
        }
        Matcher matcher3 = ha0.f1819else.matcher(str);
        while (matcher3.find()) {
            spannableString.setSpan(new Cfor(), matcher3.start(), matcher3.end(), 33);
        }
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            Cdo cdo2 = (Cdo) it.next();
            spannableString.setSpan(cdo2, cdo2.f2775do, cdo2.f2777if, 33);
        }
        return spannableString;
    }

    /* renamed from: new  reason: not valid java name */
    public static String m1618new(String str, String str2) {
        return (TextUtils.isEmpty(str2) || !str2.contains(str)) ? str2 : str2.substring(0, str2.indexOf(str));
    }

    /* renamed from: try  reason: not valid java name */
    public static void m1619try(Context context, Editable editable, int i, int i2) {
        int i3;
        if (i2 <= 0 || editable.length() < (i3 = i2 + i)) {
            return;
        }
        Matcher matcher = ha0.f1818do.matcher(editable.subSequence(i, i3));
        while (matcher.find()) {
            int start = matcher.start() + i;
            int end = matcher.end() + i;
            Drawable m1615do = m1615do(context, editable.subSequence(start, end).toString(), 0.6f);
            if (m1615do != null) {
                editable.setSpan(new Cif(m1615do, 0), start, end, 33);
            }
        }
    }
}
