.class public Lcom/apk/xa;
.super Ljava/lang/Object;
.source "BookSearchFragment.java"

# interfaces
.implements Lcom/chad/library/adapter/base/BaseQuickAdapter$RequestLoadMoreListener;


# instance fields
.field public final synthetic do:Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;


# direct methods
.method public constructor <init>(Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/xa;->do:Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadMoreRequested()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/apk/xa;->do:Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;

    invoke-static {v0}, Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;->j(Lcom/biquge/ebook/app/ui/fragment/BookSearchFragment;)V

    return-void
.end method
