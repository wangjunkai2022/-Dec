package com.apk;

import android.animation.FloatEvaluator;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.PorterDuff;
import android.graphics.drawable.BitmapDrawable;
import android.renderscript.Allocation;
import android.renderscript.Element;
import android.renderscript.RenderScript;
import android.renderscript.ScriptIntrinsicBlur;
import android.view.View;

/* compiled from: BlurAnimator.java */
/* loaded from: classes8.dex */
public class av extends cv {

    /* renamed from: for  reason: not valid java name */
    public Bitmap f178for;

    /* renamed from: new  reason: not valid java name */
    public boolean f179new;

    public av(View view) {
        super(view);
        new FloatEvaluator();
        this.f179new = false;
    }

    @Override // com.apk.cv
    /* renamed from: do  reason: not valid java name */
    public void mo114do() {
    }

    @Override // com.apk.cv
    /* renamed from: for  reason: not valid java name */
    public void mo115for() {
        RenderScript renderScript;
        Context context = this.f790do.getContext();
        Bitmap bitmap = this.f178for;
        try {
            renderScript = RenderScript.create(context);
        } catch (Throwable th) {
            th = th;
            renderScript = null;
        }
        try {
            renderScript.setMessageHandler(new RenderScript.RSMessageHandler());
            Allocation createFromBitmap = Allocation.createFromBitmap(renderScript, bitmap, Allocation.MipmapControl.MIPMAP_NONE, 1);
            Allocation createTyped = Allocation.createTyped(renderScript, createFromBitmap.getType());
            ScriptIntrinsicBlur create = ScriptIntrinsicBlur.create(renderScript, Element.U8_4(renderScript));
            create.setInput(createFromBitmap);
            create.setRadius(25.0f);
            create.forEach(createTyped);
            createTyped.copyTo(bitmap);
            renderScript.destroy();
            BitmapDrawable bitmapDrawable = new BitmapDrawable(this.f790do.getResources(), bitmap);
            if (this.f179new) {
                bitmapDrawable.setColorFilter(zu.f6265new, PorterDuff.Mode.SRC_OVER);
            }
            this.f790do.setBackground(bitmapDrawable);
        } catch (Throwable th2) {
            th = th2;
            if (renderScript != null) {
                renderScript.destroy();
            }
            throw th;
        }
    }

    @Override // com.apk.cv
    /* renamed from: if  reason: not valid java name */
    public void mo116if() {
    }
}
