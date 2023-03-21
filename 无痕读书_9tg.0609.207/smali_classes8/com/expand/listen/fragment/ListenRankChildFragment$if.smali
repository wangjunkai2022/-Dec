.class public Lcom/expand/listen/fragment/ListenRankChildFragment$if;
.super Ljava/lang/Object;
.source "ListenRankChildFragment.java"

# interfaces
.implements Lcom/apk/ts;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/expand/listen/fragment/ListenRankChildFragment;->initView()V
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
    iput-object p1, p0, Lcom/expand/listen/fragment/ListenRankChildFragment$if;->do:Lcom/expand/listen/fragment/ListenRankChildFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public do(Lcom/apk/ss;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/expand/listen/fragment/ListenRankChildFragment$if;->do:Lcom/expand/listen/fragment/ListenRankChildFragment;

    invoke-static {p1}, Lcom/expand/listen/fragment/ListenRankChildFragment;->a(Lcom/expand/listen/fragment/ListenRankChildFragment;)V

    return-void
.end method

.method public if(Lcom/apk/ss;Landroid/view/View;Landroid/view/View;)Z
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/expand/listen/fragment/ListenRankChildFragment$if;->do:Lcom/expand/listen/fragment/ListenRankChildFragment;

    iget-object p1, p1, Lcom/expand/listen/fragment/ListenRankChildFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {p1}, Lcom/apk/eg;->case(Landroid/view/View;)Z

    move-result p1

    return p1
.end method
