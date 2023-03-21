.class public Lcom/tr/comment/sdk/commons/widget/view/TrDayNightTextView;
.super Landroidx/appcompat/widget/AppCompatTextView;
.source "TrDayNightTextView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    invoke-static {}, Lcom/apk/fa0;->extends()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    sget p1, Lcom/tr/comment/sdk/R$color;->tr_sdk_comment_666666:I

    invoke-static {p1}, Lcom/apk/k40;->do(I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 4
    sget p1, Lcom/tr/comment/sdk/R$color;->tr_sdk_comment_666666:I

    invoke-static {p1}, Lcom/apk/k40;->do(I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setHintTextColor(I)V

    :cond_0
    return-void
.end method
