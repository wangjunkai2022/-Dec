.class public Lcom/apk/lz$try;
.super Ljava/lang/Object;
.source "ComicViewPagerAdapter.java"

# interfaces
.implements Lcom/apk/j1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apk/lz;->for(ZLcom/biquge/ebook/app/bean/BookChapter;Lcom/manhua/ui/widget/photoview/PhotoView;Lcom/manhua/ui/widget/barrage/BarrageView;Landroid/widget/ProgressBar;Landroid/widget/FrameLayout;Landroid/widget/LinearLayout;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Landroid/widget/FrameLayout;

.field public final synthetic for:Landroid/widget/LinearLayout;

.field public final synthetic if:Landroid/widget/ProgressBar;


# direct methods
.method public constructor <init>(Lcom/apk/lz;Landroid/widget/FrameLayout;Landroid/widget/ProgressBar;Landroid/widget/LinearLayout;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/apk/lz$try;->do:Landroid/widget/FrameLayout;

    iput-object p3, p0, Lcom/apk/lz$try;->if:Landroid/widget/ProgressBar;

    iput-object p4, p0, Lcom/apk/lz$try;->for:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public do()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/apk/lz$try;->do:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/apk/lz$try;->do:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/apk/lz$try;->if:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_1

    .line 4
    iget-object v0, p0, Lcom/apk/lz$try;->if:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/apk/lz$try;->for:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-eq v0, v1, :cond_2

    .line 6
    iget-object v0, p0, Lcom/apk/lz$try;->for:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method public if()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/apk/lz$try;->do:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/apk/lz$try;->do:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/apk/lz$try;->if:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v0

    if-eq v0, v1, :cond_1

    .line 4
    iget-object v0, p0, Lcom/apk/lz$try;->if:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/apk/lz$try;->for:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_2

    .line 6
    iget-object v0, p0, Lcom/apk/lz$try;->for:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_2
    return-void
.end method
