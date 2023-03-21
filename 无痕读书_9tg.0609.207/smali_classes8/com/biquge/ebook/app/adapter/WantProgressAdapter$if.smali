.class public Lcom/biquge/ebook/app/adapter/WantProgressAdapter$if;
.super Ljava/lang/Object;
.source "WantProgressAdapter.java"

# interfaces
.implements Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemClickListener;


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
    iput-object p1, p0, Lcom/biquge/ebook/app/adapter/WantProgressAdapter$if;->for:Lcom/biquge/ebook/app/adapter/WantProgressAdapter;

    iput-object p2, p0, Lcom/biquge/ebook/app/adapter/WantProgressAdapter$if;->do:Lcom/apk/hf;

    iput-object p3, p0, Lcom/biquge/ebook/app/adapter/WantProgressAdapter$if;->if:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/biquge/ebook/app/adapter/WantProgressAdapter$if;->for:Lcom/biquge/ebook/app/adapter/WantProgressAdapter;

    invoke-virtual {p1, p3}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/biquge/ebook/app/bean/WantBookBean$WantProgressBean;

    if-eqz p1, :cond_1

    .line 2
    invoke-virtual {p1}, Lcom/biquge/ebook/app/bean/WantBookBean$WantProgressBean;->getThreshold()I

    move-result p2

    const/16 p3, 0x64

    if-ne p2, p3, :cond_1

    .line 3
    iget-object p2, p0, Lcom/biquge/ebook/app/adapter/WantProgressAdapter$if;->do:Lcom/apk/hf;

    sget-object p3, Lcom/apk/hf;->do:Lcom/apk/hf;

    const-string v0, ""

    if-ne p2, p3, :cond_0

    .line 4
    iget-object p2, p0, Lcom/biquge/ebook/app/adapter/WantProgressAdapter$if;->if:Landroid/app/Activity;

    .line 5
    invoke-virtual {p1}, Lcom/biquge/ebook/app/bean/WantBookBean$WantProgressBean;->getBookId()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1}, Lcom/biquge/ebook/app/bean/WantBookBean$WantProgressBean;->getBookName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1, v0}, Lcom/apk/n2;->catch(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/biquge/ebook/app/bean/Book;

    move-result-object p1

    .line 6
    invoke-static {p2, p1}, Lcom/biquge/ebook/app/ui/activity/BookDetailActivity;->o(Landroid/content/Context;Lcom/biquge/ebook/app/bean/Book;)V

    goto :goto_0

    .line 7
    :cond_0
    iget-object p2, p0, Lcom/biquge/ebook/app/adapter/WantProgressAdapter$if;->if:Landroid/app/Activity;

    .line 8
    invoke-virtual {p1}, Lcom/biquge/ebook/app/bean/WantBookBean$WantProgressBean;->getBookId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v0, v0}, Lcom/apk/mu;->final(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/manhua/data/bean/ComicBean;

    move-result-object p1

    .line 9
    invoke-static {p2, p1}, Lcom/manhua/ui/activity/ComicDetailActivity;->n(Landroid/content/Context;Lcom/manhua/data/bean/ComicBean;)V

    :cond_1
    :goto_0
    return-void
.end method
