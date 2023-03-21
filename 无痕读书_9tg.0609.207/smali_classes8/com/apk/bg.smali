.class public abstract Lcom/apk/bg;
.super Ljava/lang/Object;
.source "NoDoubleClickListener.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static MIN_CLICK_DELAY_TIME:I = 0x1f4


# instance fields
.field public lastClickTime:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 2
    iput-wide v0, p0, Lcom/apk/bg;->lastClickTime:J

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    .line 1
    sget v0, Lcom/apk/bg;->MIN_CLICK_DELAY_TIME:I

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f0900ff

    if-ne v1, v2, :cond_0

    .line 3
    sget v0, Lcom/apk/bg;->MIN_CLICK_DELAY_TIME:I

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f0901ec

    if-eq v1, v2, :cond_1

    .line 5
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f0901e9

    if-eq v1, v2, :cond_1

    .line 6
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f090456

    if-eq v1, v2, :cond_1

    .line 7
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f090461

    if-ne v1, v2, :cond_2

    :cond_1
    const/16 v0, 0x50

    .line 8
    :cond_2
    :goto_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    .line 9
    iget-wide v3, p0, Lcom/apk/bg;->lastClickTime:J

    sub-long v3, v1, v3

    int-to-long v5, v0

    cmp-long v0, v3, v5

    if-lez v0, :cond_3

    .line 10
    iput-wide v1, p0, Lcom/apk/bg;->lastClickTime:J

    .line 11
    invoke-virtual {p0, p1}, Lcom/apk/bg;->onNoDoubleClick(Landroid/view/View;)V

    :cond_3
    return-void
.end method

.method public abstract onNoDoubleClick(Landroid/view/View;)V
.end method

.method public setTimeOut(I)V
    .locals 0

    .line 1
    sput p1, Lcom/apk/bg;->MIN_CLICK_DELAY_TIME:I

    return-void
.end method
