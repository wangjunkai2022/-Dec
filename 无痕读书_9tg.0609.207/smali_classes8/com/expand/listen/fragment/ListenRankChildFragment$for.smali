.class public Lcom/expand/listen/fragment/ListenRankChildFragment$for;
.super Ljava/lang/Object;
.source "ListenRankChildFragment.java"

# interfaces
.implements Lcom/chad/library/adapter/base/BaseQuickAdapter$RequestLoadMoreListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/expand/listen/fragment/ListenRankChildFragment;->initData()V
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
    iput-object p1, p0, Lcom/expand/listen/fragment/ListenRankChildFragment$for;->do:Lcom/expand/listen/fragment/ListenRankChildFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadMoreRequested()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/expand/listen/fragment/ListenRankChildFragment$for;->do:Lcom/expand/listen/fragment/ListenRankChildFragment;

    invoke-static {v0}, Lcom/expand/listen/fragment/ListenRankChildFragment;->f(Lcom/expand/listen/fragment/ListenRankChildFragment;)V

    return-void
.end method
