.class public Lcom/manhua/ui/fragment/ComicUpdateFragment$for;
.super Ljava/lang/Object;
.source "ComicUpdateFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/manhua/ui/fragment/ComicUpdateFragment;->i(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/manhua/ui/fragment/ComicUpdateFragment;


# direct methods
.method public constructor <init>(Lcom/manhua/ui/fragment/ComicUpdateFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/manhua/ui/fragment/ComicUpdateFragment$for;->do:Lcom/manhua/ui/fragment/ComicUpdateFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/manhua/ui/fragment/ComicUpdateFragment$for;->do:Lcom/manhua/ui/fragment/ComicUpdateFragment;

    iget-object v0, v0, Lcom/manhua/ui/fragment/ComicUpdateFragment;->mPtrClassicFrameLayout:Lcom/chanven/lib/cptr/PtrClassicFrameLayout;

    invoke-virtual {v0}, Lcom/apk/ss;->if()V

    return-void
.end method
