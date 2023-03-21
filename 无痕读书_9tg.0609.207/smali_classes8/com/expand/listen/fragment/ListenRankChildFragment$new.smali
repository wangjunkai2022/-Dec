.class public Lcom/expand/listen/fragment/ListenRankChildFragment$new;
.super Ljava/lang/Object;
.source "ListenRankChildFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/expand/listen/fragment/ListenRankChildFragment;->l(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/expand/listen/fragment/ListenRankChildFragment;


# direct methods
.method public constructor <init>(Lcom/expand/listen/fragment/ListenRankChildFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/expand/listen/fragment/ListenRankChildFragment$new;->do:Lcom/expand/listen/fragment/ListenRankChildFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/expand/listen/fragment/ListenRankChildFragment$new;->do:Lcom/expand/listen/fragment/ListenRankChildFragment;

    iget-object v0, v0, Lcom/expand/listen/fragment/ListenRankChildFragment;->mPtrClassicFrameLayout:Lcom/chanven/lib/cptr/PtrClassicFrameLayout;

    const/4 v1, 0x1

    .line 2
    iput-byte v1, v0, Lcom/apk/ss;->do:B

    .line 3
    invoke-virtual {v0}, Lcom/apk/ss;->if()V

    return-void
.end method
