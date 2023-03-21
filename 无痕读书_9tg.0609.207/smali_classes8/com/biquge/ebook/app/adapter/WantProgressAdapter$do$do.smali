.class public Lcom/biquge/ebook/app/adapter/WantProgressAdapter$do$do;
.super Lcom/apk/c1;
.source "WantProgressAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biquge/ebook/app/adapter/WantProgressAdapter$do;->onItemChildClick(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/apk/c1<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic do:Z

.field public final synthetic for:Lcom/biquge/ebook/app/adapter/WantProgressAdapter$do;

.field public final synthetic if:Lcom/biquge/ebook/app/bean/WantBookBean$WantProgressBean;


# direct methods
.method public constructor <init>(Lcom/biquge/ebook/app/adapter/WantProgressAdapter$do;ZLcom/biquge/ebook/app/bean/WantBookBean$WantProgressBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/adapter/WantProgressAdapter$do$do;->for:Lcom/biquge/ebook/app/adapter/WantProgressAdapter$do;

    iput-boolean p2, p0, Lcom/biquge/ebook/app/adapter/WantProgressAdapter$do$do;->do:Z

    iput-object p3, p0, Lcom/biquge/ebook/app/adapter/WantProgressAdapter$do$do;->if:Lcom/biquge/ebook/app/bean/WantBookBean$WantProgressBean;

    invoke-direct {p0}, Lcom/apk/c1;-><init>()V

    return-void
.end method


# virtual methods
.method public doInBackground()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/biquge/ebook/app/adapter/WantProgressAdapter$do$do;->do:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/biquge/ebook/app/adapter/WantProgressAdapter$do$do;->if:Lcom/biquge/ebook/app/bean/WantBookBean$WantProgressBean;

    invoke-virtual {v0}, Lcom/biquge/ebook/app/bean/WantBookBean$WantProgressBean;->getBookId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/apk/v3;->throw(Ljava/lang/String;Z)Lcom/biquge/ebook/app/bean/Book;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3
    invoke-static {v0, v1}, Lcom/apk/n2;->u(Lcom/biquge/ebook/app/bean/Book;Z)V

    .line 4
    invoke-static {}, Lcom/apk/ze;->V()V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/biquge/ebook/app/adapter/WantProgressAdapter$do$do;->if:Lcom/biquge/ebook/app/bean/WantBookBean$WantProgressBean;

    invoke-virtual {v0}, Lcom/biquge/ebook/app/bean/WantBookBean$WantProgressBean;->getBookId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/apk/z2;->super(Ljava/lang/String;Z)Lcom/manhua/data/bean/ComicBean;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 6
    invoke-static {v0, v1}, Lcom/apk/mu;->w(Lcom/manhua/data/bean/ComicBean;Z)V

    .line 7
    invoke-static {}, Lcom/apk/ze;->V()V

    .line 8
    :cond_1
    :goto_0
    invoke-super {p0}, Lcom/apk/c1;->doInBackground()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/apk/c1;->onPostExecute(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Lcom/biquge/ebook/app/adapter/WantProgressAdapter$do$do;->for:Lcom/biquge/ebook/app/adapter/WantProgressAdapter$do;

    iget-object p1, p1, Lcom/biquge/ebook/app/adapter/WantProgressAdapter$do;->for:Lcom/biquge/ebook/app/adapter/WantProgressAdapter;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method
