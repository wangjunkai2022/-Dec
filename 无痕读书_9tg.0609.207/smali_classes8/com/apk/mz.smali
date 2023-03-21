.class public Lcom/apk/mz;
.super Lcom/apk/bg;
.source "ComicViewPagerAdapter.java"


# instance fields
.field public final synthetic case:Landroid/widget/LinearLayout;

.field public final synthetic do:Lcom/biquge/ebook/app/bean/BookChapter;

.field public final synthetic else:Lcom/apk/lz;

.field public final synthetic for:Lcom/manhua/ui/widget/barrage/BarrageView;

.field public final synthetic if:Lcom/manhua/ui/widget/photoview/PhotoView;

.field public final synthetic new:Landroid/widget/ProgressBar;

.field public final synthetic try:Landroid/widget/FrameLayout;


# direct methods
.method public constructor <init>(Lcom/apk/lz;Lcom/biquge/ebook/app/bean/BookChapter;Lcom/manhua/ui/widget/photoview/PhotoView;Lcom/manhua/ui/widget/barrage/BarrageView;Landroid/widget/ProgressBar;Landroid/widget/FrameLayout;Landroid/widget/LinearLayout;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/mz;->else:Lcom/apk/lz;

    iput-object p2, p0, Lcom/apk/mz;->do:Lcom/biquge/ebook/app/bean/BookChapter;

    iput-object p3, p0, Lcom/apk/mz;->if:Lcom/manhua/ui/widget/photoview/PhotoView;

    iput-object p4, p0, Lcom/apk/mz;->for:Lcom/manhua/ui/widget/barrage/BarrageView;

    iput-object p5, p0, Lcom/apk/mz;->new:Landroid/widget/ProgressBar;

    iput-object p6, p0, Lcom/apk/mz;->try:Landroid/widget/FrameLayout;

    iput-object p7, p0, Lcom/apk/mz;->case:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Lcom/apk/bg;-><init>()V

    return-void
.end method


# virtual methods
.method public onNoDoubleClick(Landroid/view/View;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/apk/mz;->else:Lcom/apk/lz;

    iget-object v2, p0, Lcom/apk/mz;->do:Lcom/biquge/ebook/app/bean/BookChapter;

    iget-object v3, p0, Lcom/apk/mz;->if:Lcom/manhua/ui/widget/photoview/PhotoView;

    iget-object v4, p0, Lcom/apk/mz;->for:Lcom/manhua/ui/widget/barrage/BarrageView;

    iget-object v5, p0, Lcom/apk/mz;->new:Landroid/widget/ProgressBar;

    iget-object v6, p0, Lcom/apk/mz;->try:Landroid/widget/FrameLayout;

    iget-object v7, p0, Lcom/apk/mz;->case:Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    .line 2
    invoke-virtual/range {v0 .. v7}, Lcom/apk/lz;->for(ZLcom/biquge/ebook/app/bean/BookChapter;Lcom/manhua/ui/widget/photoview/PhotoView;Lcom/manhua/ui/widget/barrage/BarrageView;Landroid/widget/ProgressBar;Landroid/widget/FrameLayout;Landroid/widget/LinearLayout;)V

    return-void
.end method
