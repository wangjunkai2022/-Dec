.class public Lcom/manhua/adapter/ComicRecyclerViewAdapter$do;
.super Ljava/lang/Object;
.source "ComicRecyclerViewAdapter.java"

# interfaces
.implements Lcom/apk/j1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/manhua/adapter/ComicRecyclerViewAdapter;->do(ZLcom/biquge/ebook/app/bean/BookChapter;Lcom/manhua/ui/widget/ComicImageLayout;Landroid/widget/TextView;Landroid/widget/ProgressBar;Landroid/widget/LinearLayout;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/manhua/ui/widget/ComicImageLayout;

.field public final synthetic for:Landroid/widget/TextView;

.field public final synthetic if:Landroid/widget/LinearLayout;

.field public final synthetic new:Landroid/widget/ProgressBar;


# direct methods
.method public constructor <init>(Lcom/manhua/adapter/ComicRecyclerViewAdapter;Lcom/manhua/ui/widget/ComicImageLayout;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/ProgressBar;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/manhua/adapter/ComicRecyclerViewAdapter$do;->do:Lcom/manhua/ui/widget/ComicImageLayout;

    iput-object p3, p0, Lcom/manhua/adapter/ComicRecyclerViewAdapter$do;->if:Landroid/widget/LinearLayout;

    iput-object p4, p0, Lcom/manhua/adapter/ComicRecyclerViewAdapter$do;->for:Landroid/widget/TextView;

    iput-object p5, p0, Lcom/manhua/adapter/ComicRecyclerViewAdapter$do;->new:Landroid/widget/ProgressBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public do()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/manhua/adapter/ComicRecyclerViewAdapter$do;->do:Lcom/manhua/ui/widget/ComicImageLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/manhua/adapter/ComicRecyclerViewAdapter$do;->do:Lcom/manhua/ui/widget/ComicImageLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/manhua/adapter/ComicRecyclerViewAdapter$do;->if:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_1

    .line 4
    iget-object v0, p0, Lcom/manhua/adapter/ComicRecyclerViewAdapter$do;->if:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/manhua/adapter/ComicRecyclerViewAdapter$do;->for:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-eq v0, v1, :cond_2

    .line 6
    iget-object v0, p0, Lcom/manhua/adapter/ComicRecyclerViewAdapter$do;->for:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 7
    :cond_2
    iget-object v0, p0, Lcom/manhua/adapter/ComicRecyclerViewAdapter$do;->new:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v0

    if-eq v0, v1, :cond_3

    .line 8
    iget-object v0, p0, Lcom/manhua/adapter/ComicRecyclerViewAdapter$do;->new:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_3
    return-void
.end method

.method public if()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/manhua/adapter/ComicRecyclerViewAdapter$do;->do:Lcom/manhua/ui/widget/ComicImageLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/manhua/adapter/ComicRecyclerViewAdapter$do;->do:Lcom/manhua/ui/widget/ComicImageLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/manhua/adapter/ComicRecyclerViewAdapter$do;->if:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/manhua/adapter/ComicRecyclerViewAdapter$do;->if:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/manhua/adapter/ComicRecyclerViewAdapter$do;->for:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_2

    .line 6
    iget-object v0, p0, Lcom/manhua/adapter/ComicRecyclerViewAdapter$do;->for:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 7
    :cond_2
    iget-object v0, p0, Lcom/manhua/adapter/ComicRecyclerViewAdapter$do;->new:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v0

    if-eq v0, v1, :cond_3

    .line 8
    iget-object v0, p0, Lcom/manhua/adapter/ComicRecyclerViewAdapter$do;->new:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_3
    return-void
.end method
