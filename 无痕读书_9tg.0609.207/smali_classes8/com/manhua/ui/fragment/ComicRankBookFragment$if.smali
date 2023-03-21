.class public Lcom/manhua/ui/fragment/ComicRankBookFragment$if;
.super Ljava/lang/Object;
.source "ComicRankBookFragment.java"

# interfaces
.implements Lcom/chad/library/adapter/base/BaseQuickAdapter$RequestLoadMoreListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/manhua/ui/fragment/ComicRankBookFragment;->initData()V
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
    iput-object p1, p0, Lcom/manhua/ui/fragment/ComicRankBookFragment$if;->do:Lcom/manhua/ui/fragment/ComicRankBookFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadMoreRequested()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/manhua/ui/fragment/ComicRankBookFragment$if;->do:Lcom/manhua/ui/fragment/ComicRankBookFragment;

    invoke-static {v0}, Lcom/manhua/ui/fragment/ComicRankBookFragment;->a(Lcom/manhua/ui/fragment/ComicRankBookFragment;)V

    return-void
.end method
