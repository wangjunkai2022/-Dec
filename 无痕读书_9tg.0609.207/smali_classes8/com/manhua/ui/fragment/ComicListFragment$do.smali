.class public Lcom/manhua/ui/fragment/ComicListFragment$do;
.super Ljava/lang/Object;
.source "ComicListFragment.java"

# interfaces
.implements Lcom/apk/b40$new;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/manhua/ui/fragment/ComicListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/manhua/ui/fragment/ComicListFragment;


# direct methods
.method public constructor <init>(Lcom/manhua/ui/fragment/ComicListFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/manhua/ui/fragment/ComicListFragment$do;->do:Lcom/manhua/ui/fragment/ComicListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public do(Landroid/view/View;II)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/manhua/ui/fragment/ComicListFragment$do;->do:Lcom/manhua/ui/fragment/ComicListFragment;

    iget-object p1, p1, Lcom/manhua/ui/fragment/ComicListFragment;->mSexIView:Lcom/shizhefei/view/indicator/ScrollIndicatorView;

    invoke-virtual {p1}, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->getCurrentItem()I

    move-result p1

    const/4 p2, 0x1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 2
    :goto_0
    iget-object p3, p0, Lcom/manhua/ui/fragment/ComicListFragment$do;->do:Lcom/manhua/ui/fragment/ComicListFragment;

    .line 3
    iget-object p3, p3, Lcom/manhua/ui/fragment/ComicListFragment;->do:Lcom/manhua/ui/fragment/ComicListChildFragment;

    if-eqz p3, :cond_1

    .line 4
    iput-boolean p1, p3, Lcom/manhua/ui/fragment/ComicListChildFragment;->new:Z

    .line 5
    invoke-virtual {p3, p2}, Lcom/manhua/ui/fragment/ComicListChildFragment;->i(Z)V

    .line 6
    :cond_1
    iget-object p3, p0, Lcom/manhua/ui/fragment/ComicListFragment$do;->do:Lcom/manhua/ui/fragment/ComicListFragment;

    .line 7
    iget-object p3, p3, Lcom/manhua/ui/fragment/ComicListFragment;->if:Lcom/manhua/ui/fragment/ComicListChildFragment;

    if-eqz p3, :cond_2

    .line 8
    iput-boolean p1, p3, Lcom/manhua/ui/fragment/ComicListChildFragment;->new:Z

    .line 9
    invoke-virtual {p3, p2}, Lcom/manhua/ui/fragment/ComicListChildFragment;->i(Z)V

    .line 10
    :cond_2
    iget-object p3, p0, Lcom/manhua/ui/fragment/ComicListFragment$do;->do:Lcom/manhua/ui/fragment/ComicListFragment;

    .line 11
    iget-object p3, p3, Lcom/manhua/ui/fragment/ComicListFragment;->for:Lcom/manhua/ui/fragment/ComicListChildFragment;

    if-eqz p3, :cond_3

    .line 12
    iput-boolean p1, p3, Lcom/manhua/ui/fragment/ComicListChildFragment;->new:Z

    .line 13
    invoke-virtual {p3, p2}, Lcom/manhua/ui/fragment/ComicListChildFragment;->i(Z)V

    .line 14
    :cond_3
    iget-object p3, p0, Lcom/manhua/ui/fragment/ComicListFragment$do;->do:Lcom/manhua/ui/fragment/ComicListFragment;

    .line 15
    iget-object p3, p3, Lcom/manhua/ui/fragment/ComicListFragment;->new:Lcom/manhua/ui/fragment/ComicListChildFragment;

    if-eqz p3, :cond_4

    .line 16
    iput-boolean p1, p3, Lcom/manhua/ui/fragment/ComicListChildFragment;->new:Z

    .line 17
    invoke-virtual {p3, p2}, Lcom/manhua/ui/fragment/ComicListChildFragment;->i(Z)V

    :cond_4
    return-void
.end method
