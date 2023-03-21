.class public Lcom/biquge/ebook/app/ui/fragment/ShareLogFragment_ViewBinding$do;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "ShareLogFragment_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biquge/ebook/app/ui/fragment/ShareLogFragment_ViewBinding;-><init>(Lcom/biquge/ebook/app/ui/fragment/ShareLogFragment;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/biquge/ebook/app/ui/fragment/ShareLogFragment;


# direct methods
.method public constructor <init>(Lcom/biquge/ebook/app/ui/fragment/ShareLogFragment_ViewBinding;Lcom/biquge/ebook/app/ui/fragment/ShareLogFragment;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/biquge/ebook/app/ui/fragment/ShareLogFragment_ViewBinding$do;->do:Lcom/biquge/ebook/app/ui/fragment/ShareLogFragment;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/fragment/ShareLogFragment_ViewBinding$do;->do:Lcom/biquge/ebook/app/ui/fragment/ShareLogFragment;

    if-eqz p1, :cond_0

    .line 2
    new-instance v0, Lcom/apk/b1;

    invoke-direct {v0}, Lcom/apk/b1;-><init>()V

    new-instance v1, Lcom/apk/dc;

    invoke-direct {v1, p1}, Lcom/apk/dc;-><init>(Lcom/biquge/ebook/app/ui/fragment/ShareLogFragment;)V

    invoke-virtual {v0, v1}, Lcom/apk/b1;->do(Lcom/apk/c1;)Lcom/apk/b1;

    return-void

    :cond_0
    const/4 p1, 0x0

    throw p1
.end method
