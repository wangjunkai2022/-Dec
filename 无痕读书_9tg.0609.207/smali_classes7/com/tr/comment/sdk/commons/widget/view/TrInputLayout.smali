.class public Lcom/tr/comment/sdk/commons/widget/view/TrInputLayout;
.super Landroid/widget/LinearLayout;
.source "TrInputLayout.java"


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
    sget p1, Lcom/tr/comment/sdk/R$drawable;->tr_sdk_msg_board_bg_night:I

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    :cond_0
    return-void
.end method
