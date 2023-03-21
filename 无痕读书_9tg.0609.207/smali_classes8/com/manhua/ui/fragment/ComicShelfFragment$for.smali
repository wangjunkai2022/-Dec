.class public Lcom/manhua/ui/fragment/ComicShelfFragment$for;
.super Ljava/lang/Object;
.source "ComicShelfFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/manhua/ui/fragment/ComicShelfFragment;->v(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Z

.field public final synthetic if:Lcom/manhua/ui/fragment/ComicShelfFragment;


# direct methods
.method public constructor <init>(Lcom/manhua/ui/fragment/ComicShelfFragment;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/manhua/ui/fragment/ComicShelfFragment$for;->if:Lcom/manhua/ui/fragment/ComicShelfFragment;

    iput-boolean p2, p0, Lcom/manhua/ui/fragment/ComicShelfFragment$for;->do:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/manhua/ui/fragment/ComicShelfFragment$for;->if:Lcom/manhua/ui/fragment/ComicShelfFragment;

    iget-object v0, v0, Lcom/manhua/ui/fragment/ComicShelfFragment;->mPtrClassicFrameLayout:Lcom/chanven/lib/cptr/PtrClassicFrameLayout;

    if-eqz v0, :cond_0

    .line 2
    iget-boolean v1, p0, Lcom/manhua/ui/fragment/ComicShelfFragment$for;->do:Z

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setEnabled(Z)V

    :cond_0
    return-void
.end method
