.class public Lcom/apk/lz$case;
.super Ljava/lang/Object;
.source "ComicViewPagerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apk/lz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "case"
.end annotation


# instance fields
.field public case:Lcom/manhua/ui/widget/barrage/BarrageView;

.field public do:Lcom/manhua/ui/widget/photoview/PhotoView;

.field public for:Landroid/widget/TextView;

.field public if:Landroid/widget/ProgressBar;

.field public new:Landroid/widget/FrameLayout;

.field public try:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/apk/lz$case;->do:Lcom/manhua/ui/widget/photoview/PhotoView;

    .line 3
    iput-object v0, p0, Lcom/apk/lz$case;->if:Landroid/widget/ProgressBar;

    .line 4
    iput-object v0, p0, Lcom/apk/lz$case;->for:Landroid/widget/TextView;

    return-void
.end method
