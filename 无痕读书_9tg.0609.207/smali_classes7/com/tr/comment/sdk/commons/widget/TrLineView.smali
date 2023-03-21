.class public Lcom/tr/comment/sdk/commons/widget/TrLineView;
.super Landroid/view/View;
.source "TrLineView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    invoke-static {}, Lcom/apk/fa0;->extends()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    sget p1, Lcom/tr/comment/sdk/R$color;->tr_sdk_comment_line_night:I

    invoke-static {p1}, Lcom/apk/k40;->do(I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0

    .line 4
    :cond_0
    sget p1, Lcom/tr/comment/sdk/R$color;->tr_sdk_comment_line:I

    invoke-static {p1}, Lcom/apk/k40;->do(I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    :goto_0
    return-void
.end method
