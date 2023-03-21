package com.ss.android.download.api.model;

import android.content.Context;
import android.content.DialogInterface;
import android.graphics.drawable.Drawable;
import android.view.View;
/* loaded from: classes8.dex */
public class b {

    /* renamed from: a  reason: collision with root package name */
    public Context f11557a;
    public String b;
    public String c;
    public String d;
    public String e;
    public boolean f;
    public Drawable g;
    public InterfaceC0132b h;
    public View i;
    public int j;

    /* loaded from: classes8.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public View f11558a;
        public int b;
        public Context c;
        public String d;
        public String e;
        public String f;
        public String g;
        public boolean h;
        public Drawable i;
        public InterfaceC0132b j;

        public a(Context context) {
            this.c = context;
        }

        public a a(String str) {
            this.d = str;
            return this;
        }

        public a b(String str) {
            this.e = str;
            return this;
        }

        public a c(String str) {
            this.f = str;
            return this;
        }

        public a d(String str) {
            this.g = str;
            return this;
        }

        public a a(boolean z) {
            this.h = z;
            return this;
        }

        public a a(Drawable drawable) {
            this.i = drawable;
            return this;
        }

        public a a(InterfaceC0132b interfaceC0132b) {
            this.j = interfaceC0132b;
            return this;
        }

        public a a(int i) {
            this.b = i;
            return this;
        }

        public b a() {
            return new b(this);
        }
    }

    /* renamed from: com.ss.android.download.api.model.b$b  reason: collision with other inner class name */
    /* loaded from: classes8.dex */
    public interface InterfaceC0132b {
        void a(DialogInterface dialogInterface);

        void b(DialogInterface dialogInterface);

        void c(DialogInterface dialogInterface);
    }

    public b(a aVar) {
        this.f = true;
        this.f11557a = aVar.c;
        this.b = aVar.d;
        this.c = aVar.e;
        this.d = aVar.f;
        this.e = aVar.g;
        this.f = aVar.h;
        this.g = aVar.i;
        this.h = aVar.j;
        this.i = aVar.f11558a;
        this.j = aVar.b;
    }
}
