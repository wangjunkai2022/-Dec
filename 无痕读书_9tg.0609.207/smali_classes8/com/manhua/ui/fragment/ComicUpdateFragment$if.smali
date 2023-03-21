.class public Lcom/manhua/ui/fragment/ComicUpdateFragment$if;
.super Ljava/lang/Object;
.source "ComicUpdateFragment.java"

# interfaces
.implements Lcom/chad/library/adapter/base/BaseQuickAdapter$RequestLoadMoreListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/manhua/ui/fragment/ComicUpdateFragment;->initData()V
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
    iput-object p1, p0, Lcom/manhua/ui/fragment/ComicUpdateFragment$if;->do:Lcom/manhua/ui/fragment/ComicUpdateFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadMoreRequested()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/manhua/ui/fragment/ComicUpdateFragment$if;->do:Lcom/manhua/ui/fragment/ComicUpdateFragment;

    invoke-static {v0}, Lcom/manhua/ui/fragment/ComicUpdateFragment;->a(Lcom/manhua/ui/fragment/ComicUpdateFragment;)V

    return-void
.end method
