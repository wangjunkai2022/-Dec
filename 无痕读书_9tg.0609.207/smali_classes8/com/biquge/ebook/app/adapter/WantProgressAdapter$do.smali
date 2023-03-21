.class public Lcom/biquge/ebook/app/adapter/WantProgressAdapter$do;
.super Ljava/lang/Object;
.source "WantProgressAdapter.java"

# interfaces
.implements Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemChildClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biquge/ebook/app/adapter/WantProgressAdapter;-><init>(Landroid/app/Activity;Lcom/apk/hf;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/apk/hf;

.field public final synthetic for:Lcom/biquge/ebook/app/adapter/WantProgressAdapter;

.field public final synthetic if:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Lcom/biquge/ebook/app/adapter/WantProgressAdapter;Lcom/apk/hf;Landroid/app/Activity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/adapter/WantProgressAdapter$do;->for:Lcom/biquge/ebook/app/adapter/WantProgressAdapter;

    iput-object p2, p0, Lcom/biquge/ebook/app/adapter/WantProgressAdapter$do;->do:Lcom/apk/hf;

    iput-object p3, p0, Lcom/biquge/ebook/app/adapter/WantProgressAdapter$do;->if:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemChildClick(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/biquge/ebook/app/adapter/WantProgressAdapter$do;->for:Lcom/biquge/ebook/app/adapter/WantProgressAdapter;

    invoke-virtual {p1, p3}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/biquge/ebook/app/bean/WantBookBean$WantProgressBean;

    if-eqz p1, :cond_3

    .line 2
    invoke-virtual {p1}, Lcom/biquge/ebook/app/bean/WantBookBean$WantProgressBean;->getBookId()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/apk/n2;->f(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_3

    .line 3
    iget-object p2, p0, Lcom/biquge/ebook/app/adapter/WantProgressAdapter$do;->do:Lcom/apk/hf;

    sget-object p3, Lcom/apk/hf;->do:Lcom/apk/hf;

    const/4 v0, 0x0

    if-ne p2, p3, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-eqz p2, :cond_1

    .line 4
    iget-object p3, p0, Lcom/biquge/ebook/app/adapter/WantProgressAdapter$do;->if:Landroid/app/Activity;

    invoke-static {p3, v0}, Lcom/apk/n2;->try(Landroid/content/Context;Z)Z

    move-result p3

    if-eqz p3, :cond_2

    return-void

    .line 5
    :cond_1
    iget-object p3, p0, Lcom/biquge/ebook/app/adapter/WantProgressAdapter$do;->if:Landroid/app/Activity;

    invoke-static {p3, v0}, Lcom/apk/mu;->case(Landroid/content/Context;Z)Z

    move-result p3

    if-eqz p3, :cond_2

    return-void

    .line 6
    :cond_2
    new-instance p3, Lcom/apk/b1;

    invoke-direct {p3}, Lcom/apk/b1;-><init>()V

    iget-object v0, p0, Lcom/biquge/ebook/app/adapter/WantProgressAdapter$do;->if:Landroid/app/Activity;

    invoke-virtual {p3, v0}, Lcom/apk/b1;->if(Landroid/content/Context;)Lcom/apk/b1;

    new-instance v0, Lcom/biquge/ebook/app/adapter/WantProgressAdapter$do$do;

    invoke-direct {v0, p0, p2, p1}, Lcom/biquge/ebook/app/adapter/WantProgressAdapter$do$do;-><init>(Lcom/biquge/ebook/app/adapter/WantProgressAdapter$do;ZLcom/biquge/ebook/app/bean/WantBookBean$WantProgressBean;)V

    invoke-virtual {p3, v0}, Lcom/apk/b1;->do(Lcom/apk/c1;)Lcom/apk/b1;

    :cond_3
    return-void
.end method
