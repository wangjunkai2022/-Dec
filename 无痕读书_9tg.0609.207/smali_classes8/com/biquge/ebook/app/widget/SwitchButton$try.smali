.class public Lcom/biquge/ebook/app/widget/SwitchButton$try;
.super Ljava/lang/Object;
.source "SwitchButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/biquge/ebook/app/widget/SwitchButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "try"
.end annotation


# instance fields
.field public do:F

.field public for:I

.field public if:I

.field public new:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static do(Lcom/biquge/ebook/app/widget/SwitchButton$try;Lcom/biquge/ebook/app/widget/SwitchButton$try;)V
    .locals 1

    if-eqz p0, :cond_0

    .line 1
    iget v0, p1, Lcom/biquge/ebook/app/widget/SwitchButton$try;->do:F

    iput v0, p0, Lcom/biquge/ebook/app/widget/SwitchButton$try;->do:F

    .line 2
    iget v0, p1, Lcom/biquge/ebook/app/widget/SwitchButton$try;->if:I

    iput v0, p0, Lcom/biquge/ebook/app/widget/SwitchButton$try;->if:I

    .line 3
    iget v0, p1, Lcom/biquge/ebook/app/widget/SwitchButton$try;->for:I

    iput v0, p0, Lcom/biquge/ebook/app/widget/SwitchButton$try;->for:I

    .line 4
    iget p1, p1, Lcom/biquge/ebook/app/widget/SwitchButton$try;->new:F

    iput p1, p0, Lcom/biquge/ebook/app/widget/SwitchButton$try;->new:F

    return-void

    :cond_0
    const/4 p0, 0x0

    .line 5
    throw p0
.end method
