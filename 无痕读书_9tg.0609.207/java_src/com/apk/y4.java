package com.apk;

import com.biquge.ebook.app.bean.Book;
/* compiled from: PublicPresenter.java */
/* loaded from: classes8.dex */
public class y4 extends c1<Book> {

    /* renamed from: do  reason: not valid java name */
    public final /* synthetic */ String f5855do;

    /* renamed from: for  reason: not valid java name */
    public final /* synthetic */ boolean f5856for;

    /* renamed from: if  reason: not valid java name */
    public final /* synthetic */ String f5857if;

    /* renamed from: new  reason: not valid java name */
    public final /* synthetic */ String f5858new;

    /* renamed from: try  reason: not valid java name */
    public final /* synthetic */ x4 f5859try;

    public y4(x4 x4Var, String str, String str2, boolean z, String str3) {
        this.f5859try = x4Var;
        this.f5855do = str;
        this.f5857if = str2;
        this.f5856for = z;
        this.f5858new = str3;
    }

    @Override // com.apk.c1
    public Book doInBackground() {
        Book book = new Book();
        book.setId(v3.m2763while(this.f5855do, this.f5857if));
        book.setName(this.f5855do);
        book.setAuthor(this.f5857if);
        return book;
    }

    @Override // com.apk.c1
    public void onPostExecute(Book book) {
        Book book2 = book;
        super.onPostExecute(book2);
        if (book2 != null) {
            this.f5859try.m2966abstract(book2, this.f5856for, this.f5858new);
        }
    }
}
