.class public Lcom/biquge/ebook/app/ui/fragment/LocalWebShareFragment$do$do;
.super Ljava/lang/Object;
.source "LocalWebShareFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biquge/ebook/app/ui/fragment/LocalWebShareFragment$do;->do(Lcom/apk/ss;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/biquge/ebook/app/ui/fragment/LocalWebShareFragment$do;


# direct methods
.method public constructor <init>(Lcom/biquge/ebook/app/ui/fragment/LocalWebShareFragment$do;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/ui/fragment/LocalWebShareFragment$do$do;->do:Lcom/biquge/ebook/app/ui/fragment/LocalWebShareFragment$do;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/LocalWebShareFragment$do$do;->do:Lcom/biquge/ebook/app/ui/fragment/LocalWebShareFragment$do;

    iget-object v0, v0, Lcom/biquge/ebook/app/ui/fragment/LocalWebShareFragment$do;->do:Lcom/biquge/ebook/app/ui/fragment/LocalWebShareFragment;

    .line 2
    iget-object v1, v0, Lcom/biquge/ebook/app/ui/fragment/LocalWebShareFragment;->mPtrClassicFrameLayout:Lcom/chanven/lib/cptr/PtrClassicFrameLayout;

    if-eqz v1, :cond_0

    .line 3
    new-instance v2, Lcom/apk/xb;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3}, Lcom/apk/xb;-><init>(Lcom/biquge/ebook/app/ui/fragment/LocalWebShareFragment;Z)V

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
