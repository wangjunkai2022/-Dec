.class public Lcom/apk/ec0;
.super Lcom/apk/wr0;
.source "BannerIndicatorView.java"


# instance fields
.field public for:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/apk/wr0;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public do()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/apk/wr0;->do()V

    .line 2
    :try_start_0
    iget v0, p0, Lcom/apk/ec0;->for:I

    if-eqz v0, :cond_0

    .line 3
    iget v0, p0, Lcom/apk/ec0;->for:I

    invoke-static {v0}, Lcom/apk/tr0;->do(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/apk/ec0;->setImageResource(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public setImageResource(I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/apk/wr0;->setImageResource(I)V

    .line 2
    iput p1, p0, Lcom/apk/ec0;->for:I

    return-void
.end method
