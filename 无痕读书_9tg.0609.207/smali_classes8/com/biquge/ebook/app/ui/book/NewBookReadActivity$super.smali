.class public Lcom/biquge/ebook/app/ui/book/NewBookReadActivity$super;
.super Ljava/lang/Object;
.source "NewBookReadActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;


# direct methods
.method public constructor <init>(Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity$super;->do:Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity$super;->do:Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;

    iget-object v0, v0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->mMenuView:Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;->static(Z)V

    return-void
.end method
