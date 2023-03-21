.class public Lcom/manhua/ui/widget/ComicImageLayout;
.super Landroid/widget/FrameLayout;
.source "ComicImageLayout.java"


# instance fields
.field public do:Landroid/widget/ImageView;

.field public for:Landroid/view/ViewGroup$LayoutParams;

.field public if:Lcom/manhua/ui/widget/barrage/BarrageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const p2, 0x7f0c01ba

    invoke-virtual {p1, p2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    const p1, 0x7f09043b

    .line 3
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/manhua/ui/widget/ComicImageLayout;->do:Landroid/widget/ImageView;

    const p1, 0x7f09043c

    .line 4
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/manhua/ui/widget/barrage/BarrageView;

    iput-object p1, p0, Lcom/manhua/ui/widget/ComicImageLayout;->if:Lcom/manhua/ui/widget/barrage/BarrageView;

    return-void
.end method


# virtual methods
.method public getDanmakuView()Lcom/manhua/ui/widget/barrage/BarrageView;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/manhua/ui/widget/ComicImageLayout;->if:Lcom/manhua/ui/widget/barrage/BarrageView;

    return-object v0
.end method

.method public getImageView()Landroid/widget/ImageView;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/manhua/ui/widget/ComicImageLayout;->do:Landroid/widget/ImageView;

    return-object v0
.end method
