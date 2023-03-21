.class public Lcom/biquge/ebook/app/widget/fancybuttons/FancyButton$do;
.super Landroid/view/ViewOutlineProvider;
.source "FancyButton.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/biquge/ebook/app/widget/fancybuttons/FancyButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "do"
.end annotation


# instance fields
.field public do:I

.field public final synthetic for:Lcom/biquge/ebook/app/widget/fancybuttons/FancyButton;

.field public if:I


# direct methods
.method public constructor <init>(Lcom/biquge/ebook/app/widget/fancybuttons/FancyButton;II)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/widget/fancybuttons/FancyButton$do;->for:Lcom/biquge/ebook/app/widget/fancybuttons/FancyButton;

    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    .line 2
    iput p2, p0, Lcom/biquge/ebook/app/widget/fancybuttons/FancyButton$do;->do:I

    .line 3
    iput p3, p0, Lcom/biquge/ebook/app/widget/fancybuttons/FancyButton$do;->if:I

    return-void
.end method


# virtual methods
.method public getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .locals 9

    .line 1
    iget-object p1, p0, Lcom/biquge/ebook/app/widget/fancybuttons/FancyButton$do;->for:Lcom/biquge/ebook/app/widget/fancybuttons/FancyButton;

    .line 2
    iget p1, p1, Lcom/biquge/ebook/app/widget/fancybuttons/FancyButton;->switch:I

    if-nez p1, :cond_0

    const/4 p1, 0x0

    const/16 v0, 0xa

    .line 3
    iget v1, p0, Lcom/biquge/ebook/app/widget/fancybuttons/FancyButton$do;->do:I

    iget v2, p0, Lcom/biquge/ebook/app/widget/fancybuttons/FancyButton$do;->if:I

    invoke-virtual {p2, p1, v0, v1, v2}, Landroid/graphics/Outline;->setRect(IIII)V

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    const/16 v5, 0xa

    .line 4
    iget v6, p0, Lcom/biquge/ebook/app/widget/fancybuttons/FancyButton$do;->do:I

    iget v7, p0, Lcom/biquge/ebook/app/widget/fancybuttons/FancyButton$do;->if:I

    int-to-float v8, p1

    move-object v3, p2

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Outline;->setRoundRect(IIIIF)V

    :goto_0
    return-void
.end method
