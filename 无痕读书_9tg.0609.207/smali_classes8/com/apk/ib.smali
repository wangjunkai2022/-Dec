.class public Lcom/apk/ib;
.super Ljava/lang/Object;
.source "BookStoreCategoryFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic do:Lcom/biquge/ebook/app/ui/fragment/BookStoreCategoryFragment;


# direct methods
.method public constructor <init>(Lcom/biquge/ebook/app/ui/fragment/BookStoreCategoryFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/ib;->do:Lcom/biquge/ebook/app/ui/fragment/BookStoreCategoryFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/apk/ib;->do:Lcom/biquge/ebook/app/ui/fragment/BookStoreCategoryFragment;

    iget-object v0, v0, Lcom/biquge/ebook/app/ui/fragment/BookStoreCategoryFragment;->mPtrClassicFrameLayout:Lcom/chanven/lib/cptr/PtrClassicFrameLayout;

    const/4 v1, 0x1

    .line 2
    iput-byte v1, v0, Lcom/apk/ss;->do:B

    .line 3
    invoke-virtual {v0}, Lcom/apk/ss;->if()V

    return-void
.end method
