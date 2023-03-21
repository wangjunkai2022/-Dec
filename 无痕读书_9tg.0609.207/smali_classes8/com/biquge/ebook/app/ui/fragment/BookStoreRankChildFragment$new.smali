.class public Lcom/biquge/ebook/app/ui/fragment/BookStoreRankChildFragment$new;
.super Ljava/lang/Object;
.source "BookStoreRankChildFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biquge/ebook/app/ui/fragment/BookStoreRankChildFragment;->k(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/biquge/ebook/app/ui/fragment/BookStoreRankChildFragment;


# direct methods
.method public constructor <init>(Lcom/biquge/ebook/app/ui/fragment/BookStoreRankChildFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/ui/fragment/BookStoreRankChildFragment$new;->do:Lcom/biquge/ebook/app/ui/fragment/BookStoreRankChildFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/BookStoreRankChildFragment$new;->do:Lcom/biquge/ebook/app/ui/fragment/BookStoreRankChildFragment;

    iget-object v0, v0, Lcom/biquge/ebook/app/ui/fragment/BookStoreRankChildFragment;->mPtrClassicFrameLayout:Lcom/chanven/lib/cptr/PtrClassicFrameLayout;

    const/4 v1, 0x1

    .line 2
    iput-byte v1, v0, Lcom/apk/ss;->do:B

    .line 3
    invoke-virtual {v0}, Lcom/apk/ss;->if()V

    return-void
.end method
