.class public Lcom/apk/xb;
.super Ljava/lang/Object;
.source "LocalWebShareFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic do:Z

.field public final synthetic if:Lcom/biquge/ebook/app/ui/fragment/LocalWebShareFragment;


# direct methods
.method public constructor <init>(Lcom/biquge/ebook/app/ui/fragment/LocalWebShareFragment;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/xb;->if:Lcom/biquge/ebook/app/ui/fragment/LocalWebShareFragment;

    iput-boolean p2, p0, Lcom/apk/xb;->do:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/apk/xb;->if:Lcom/biquge/ebook/app/ui/fragment/LocalWebShareFragment;

    iget-object v0, v0, Lcom/biquge/ebook/app/ui/fragment/LocalWebShareFragment;->mPtrClassicFrameLayout:Lcom/chanven/lib/cptr/PtrClassicFrameLayout;

    if-eqz v0, :cond_1

    .line 2
    iget-boolean v1, p0, Lcom/apk/xb;->do:Z

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/apk/ss;->if()V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {v0}, Lcom/apk/ss;->break()V

    :cond_1
    :goto_0
    return-void
.end method
