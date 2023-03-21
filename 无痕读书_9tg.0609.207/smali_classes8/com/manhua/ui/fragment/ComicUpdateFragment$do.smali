.class public Lcom/manhua/ui/fragment/ComicUpdateFragment$do;
.super Ljava/lang/Object;
.source "ComicUpdateFragment.java"

# interfaces
.implements Lcom/apk/ts;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/manhua/ui/fragment/ComicUpdateFragment;->initView()V
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
    iput-object p1, p0, Lcom/manhua/ui/fragment/ComicUpdateFragment$do;->do:Lcom/manhua/ui/fragment/ComicUpdateFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public do(Lcom/apk/ss;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/manhua/ui/fragment/ComicUpdateFragment$do;->do:Lcom/manhua/ui/fragment/ComicUpdateFragment;

    invoke-static {p1}, Lcom/manhua/ui/fragment/ComicUpdateFragment;->synchronized(Lcom/manhua/ui/fragment/ComicUpdateFragment;)V

    return-void
.end method

.method public if(Lcom/apk/ss;Landroid/view/View;Landroid/view/View;)Z
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/manhua/ui/fragment/ComicUpdateFragment$do;->do:Lcom/manhua/ui/fragment/ComicUpdateFragment;

    iget-object p1, p1, Lcom/manhua/ui/fragment/ComicUpdateFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {p1}, Lcom/apk/eg;->case(Landroid/view/View;)Z

    move-result p1

    return p1
.end method
