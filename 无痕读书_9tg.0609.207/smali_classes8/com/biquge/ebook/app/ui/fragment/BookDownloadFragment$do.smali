.class public Lcom/biquge/ebook/app/ui/fragment/BookDownloadFragment$do;
.super Ljava/lang/Object;
.source "BookDownloadFragment.java"

# interfaces
.implements Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemChildClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biquge/ebook/app/ui/fragment/BookDownloadFragment;->initData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/biquge/ebook/app/ui/fragment/BookDownloadFragment;


# direct methods
.method public constructor <init>(Lcom/biquge/ebook/app/ui/fragment/BookDownloadFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/ui/fragment/BookDownloadFragment$do;->do:Lcom/biquge/ebook/app/ui/fragment/BookDownloadFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemChildClick(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    .line 1
    invoke-static {}, Lcom/apk/o0;->else()Lcom/apk/o0;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 2
    sget-object p1, Lcom/biquge/ebook/app/app/AppService;->do:Lcom/apk/gg;

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1}, Lcom/apk/gg;->size()I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-lez p1, :cond_1

    const/4 p2, 0x1

    :cond_1
    if-eqz p2, :cond_2

    const p1, 0x7f10012f

    .line 4
    invoke-static {p1}, Lcom/hjq/toast/ToastUtils;->show(I)V

    return-void

    .line 5
    :cond_2
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/fragment/BookDownloadFragment$do;->do:Lcom/biquge/ebook/app/ui/fragment/BookDownloadFragment;

    invoke-static {p1, p3}, Lcom/biquge/ebook/app/ui/fragment/BookDownloadFragment;->access$000(Lcom/biquge/ebook/app/ui/fragment/BookDownloadFragment;I)V

    return-void

    :cond_3
    const/4 p1, 0x0

    .line 6
    throw p1
.end method
