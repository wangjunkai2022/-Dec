.class public Lcom/tr/comment/sdk/commons/widget/view/TrDayNightLikeImg;
.super Landroidx/appcompat/widget/AppCompatImageView;
.source "TrDayNightLikeImg.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 2
    invoke-static {}, Lcom/apk/fa0;->extends()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    sget p1, Lcom/tr/comment/sdk/R$drawable;->tr_sdk_like_selector_btn_night:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    :cond_0
    return-void
.end method
