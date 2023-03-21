.class public Lcom/manhua/ui/fragment/ComicListChildFragment$do;
.super Ljava/lang/Object;
.source "ComicListChildFragment.java"

# interfaces
.implements Lcom/apk/ts;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/manhua/ui/fragment/ComicListChildFragment;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/manhua/ui/fragment/ComicListChildFragment;


# direct methods
.method public constructor <init>(Lcom/manhua/ui/fragment/ComicListChildFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/manhua/ui/fragment/ComicListChildFragment$do;->do:Lcom/manhua/ui/fragment/ComicListChildFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public do(Lcom/apk/ss;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/manhua/ui/fragment/ComicListChildFragment$do;->do:Lcom/manhua/ui/fragment/ComicListChildFragment;

    invoke-static {p1}, Lcom/manhua/ui/fragment/ComicListChildFragment;->synchronized(Lcom/manhua/ui/fragment/ComicListChildFragment;)V

    return-void
.end method

.method public if(Lcom/apk/ss;Landroid/view/View;Landroid/view/View;)Z
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/manhua/ui/fragment/ComicListChildFragment$do;->do:Lcom/manhua/ui/fragment/ComicListChildFragment;

    iget-object p1, p1, Lcom/manhua/ui/fragment/ComicListChildFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {p1}, Lcom/apk/eg;->case(Landroid/view/View;)Z

    move-result p1

    return p1
.end method
