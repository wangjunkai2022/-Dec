.class public Lcom/tr/comment/sdk/commons/widget/view/TrDayNightLayout;
.super Landroid/widget/LinearLayout;
.source "TrDayNightLayout.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    invoke-static {}, Lcom/apk/fa0;->extends()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    sget p1, Lcom/tr/comment/sdk/R$drawable;->tr_sdk_shape_night_bg:I

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    goto :goto_0

    .line 4
    :cond_0
    sget p1, Lcom/tr/comment/sdk/R$drawable;->tr_sdk_shape_day_bg:I

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    :goto_0
    return-void
.end method
