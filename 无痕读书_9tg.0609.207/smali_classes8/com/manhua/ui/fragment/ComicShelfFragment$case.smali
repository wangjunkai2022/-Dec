.class public Lcom/manhua/ui/fragment/ComicShelfFragment$case;
.super Ljava/lang/Object;
.source "ComicShelfFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/manhua/ui/fragment/ComicShelfFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/manhua/ui/fragment/ComicShelfFragment;


# direct methods
.method public constructor <init>(Lcom/manhua/ui/fragment/ComicShelfFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/manhua/ui/fragment/ComicShelfFragment$case;->do:Lcom/manhua/ui/fragment/ComicShelfFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/manhua/ui/fragment/ComicShelfFragment$case;->do:Lcom/manhua/ui/fragment/ComicShelfFragment;

    .line 2
    iget-object v1, v0, Lcom/manhua/ui/fragment/ComicShelfFragment;->mPtrClassicFrameLayout:Lcom/chanven/lib/cptr/PtrClassicFrameLayout;

    if-eqz v1, :cond_0

    .line 3
    new-instance v2, Lcom/manhua/ui/fragment/ComicShelfFragment$if;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3}, Lcom/manhua/ui/fragment/ComicShelfFragment$if;-><init>(Lcom/manhua/ui/fragment/ComicShelfFragment;Z)V

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
