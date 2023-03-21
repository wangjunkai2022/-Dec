.class public Lcom/manhua/ui/fragment/ComicRankBookFragment$for;
.super Ljava/lang/Object;
.source "ComicRankBookFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/manhua/ui/fragment/ComicRankBookFragment;->j(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/manhua/ui/fragment/ComicRankBookFragment;


# direct methods
.method public constructor <init>(Lcom/manhua/ui/fragment/ComicRankBookFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/manhua/ui/fragment/ComicRankBookFragment$for;->do:Lcom/manhua/ui/fragment/ComicRankBookFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/manhua/ui/fragment/ComicRankBookFragment$for;->do:Lcom/manhua/ui/fragment/ComicRankBookFragment;

    iget-object v0, v0, Lcom/manhua/ui/fragment/ComicRankBookFragment;->mPtrClassicFrameLayout:Lcom/chanven/lib/cptr/PtrClassicFrameLayout;

    invoke-virtual {v0}, Lcom/apk/ss;->if()V

    return-void
.end method
