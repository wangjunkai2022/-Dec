.class public Lcom/biquge/ebook/app/ui/fragment/LocalWebShareFragment$do;
.super Ljava/lang/Object;
.source "LocalWebShareFragment.java"

# interfaces
.implements Lcom/apk/ts;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biquge/ebook/app/ui/fragment/LocalWebShareFragment;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/biquge/ebook/app/ui/fragment/LocalWebShareFragment;


# direct methods
.method public constructor <init>(Lcom/biquge/ebook/app/ui/fragment/LocalWebShareFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/ui/fragment/LocalWebShareFragment$do;->do:Lcom/biquge/ebook/app/ui/fragment/LocalWebShareFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public do(Lcom/apk/ss;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/fragment/LocalWebShareFragment$do;->do:Lcom/biquge/ebook/app/ui/fragment/LocalWebShareFragment;

    iget-object v0, p1, Lcom/biquge/ebook/app/ui/fragment/LocalWebShareFragment;->mPtrClassicFrameLayout:Lcom/chanven/lib/cptr/PtrClassicFrameLayout;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/biquge/ebook/app/ui/fragment/LocalWebShareFragment;->h()V

    .line 3
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/fragment/LocalWebShareFragment$do;->do:Lcom/biquge/ebook/app/ui/fragment/LocalWebShareFragment;

    iget-object p1, p1, Lcom/biquge/ebook/app/ui/fragment/LocalWebShareFragment;->mPtrClassicFrameLayout:Lcom/chanven/lib/cptr/PtrClassicFrameLayout;

    new-instance v0, Lcom/biquge/ebook/app/ui/fragment/LocalWebShareFragment$do$do;

    invoke-direct {v0, p0}, Lcom/biquge/ebook/app/ui/fragment/LocalWebShareFragment$do$do;-><init>(Lcom/biquge/ebook/app/ui/fragment/LocalWebShareFragment$do;)V

    const-wide/16 v1, 0x7d0

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public if(Lcom/apk/ss;Landroid/view/View;Landroid/view/View;)Z
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/fragment/LocalWebShareFragment$do;->do:Lcom/biquge/ebook/app/ui/fragment/LocalWebShareFragment;

    iget-object p1, p1, Lcom/biquge/ebook/app/ui/fragment/LocalWebShareFragment;->mScrollView:Landroid/widget/ScrollView;

    invoke-static {p1}, Lcom/apk/eg;->case(Landroid/view/View;)Z

    move-result p1

    return p1
.end method
