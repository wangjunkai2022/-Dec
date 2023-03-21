.class public Lcom/apk/ev$do;
.super Ljava/lang/Object;
.source "ScrollScaleAnimator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apk/ev;->for()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/apk/ev;


# direct methods
.method public constructor <init>(Lcom/apk/ev;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/ev$do;->do:Lcom/apk/ev;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/apk/ev$do;->do:Lcom/apk/ev;

    .line 2
    iget-object v1, v0, Lcom/apk/cv;->if:Lcom/apk/ov;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x0

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_0

    .line 3
    :pswitch_0
    iget-object v1, v0, Lcom/apk/cv;->do:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setPivotX(F)V

    .line 4
    iget-object v1, v0, Lcom/apk/cv;->do:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setPivotY(F)V

    .line 5
    iget-object v1, v0, Lcom/apk/cv;->do:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    iput v1, v0, Lcom/apk/ev;->new:I

    .line 6
    iget-object v1, v0, Lcom/apk/cv;->do:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    neg-int v1, v1

    iput v1, v0, Lcom/apk/ev;->try:I

    goto/16 :goto_0

    .line 7
    :pswitch_1
    iget-object v1, v0, Lcom/apk/cv;->do:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setPivotX(F)V

    .line 8
    iget-object v1, v0, Lcom/apk/cv;->do:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setPivotY(F)V

    .line 9
    iget-object v1, v0, Lcom/apk/cv;->do:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    neg-int v1, v1

    iput v1, v0, Lcom/apk/ev;->try:I

    goto/16 :goto_0

    .line 10
    :pswitch_2
    iget-object v1, v0, Lcom/apk/cv;->do:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setPivotX(F)V

    .line 11
    iget-object v1, v0, Lcom/apk/cv;->do:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setPivotY(F)V

    .line 12
    iget-object v1, v0, Lcom/apk/cv;->do:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    neg-int v1, v1

    iput v1, v0, Lcom/apk/ev;->new:I

    .line 13
    iget-object v1, v0, Lcom/apk/cv;->do:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    neg-int v1, v1

    iput v1, v0, Lcom/apk/ev;->try:I

    goto/16 :goto_0

    .line 14
    :pswitch_3
    iget-object v1, v0, Lcom/apk/cv;->do:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setPivotX(F)V

    .line 15
    iget-object v1, v0, Lcom/apk/cv;->do:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setPivotY(F)V

    .line 16
    iget-object v1, v0, Lcom/apk/cv;->do:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    neg-int v1, v1

    iput v1, v0, Lcom/apk/ev;->new:I

    goto :goto_0

    .line 17
    :pswitch_4
    iget-object v1, v0, Lcom/apk/cv;->do:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v1, v3}, Landroid/view/View;->setPivotX(F)V

    .line 18
    iget-object v1, v0, Lcom/apk/cv;->do:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setPivotY(F)V

    .line 19
    iget-object v1, v0, Lcom/apk/cv;->do:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    neg-int v1, v1

    iput v1, v0, Lcom/apk/ev;->new:I

    .line 20
    iget-object v1, v0, Lcom/apk/cv;->do:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iput v1, v0, Lcom/apk/ev;->try:I

    goto :goto_0

    .line 21
    :pswitch_5
    iget-object v1, v0, Lcom/apk/cv;->do:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual {v1, v3}, Landroid/view/View;->setPivotX(F)V

    .line 22
    iget-object v1, v0, Lcom/apk/cv;->do:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setPivotY(F)V

    .line 23
    iget-object v1, v0, Lcom/apk/cv;->do:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iput v1, v0, Lcom/apk/ev;->try:I

    goto :goto_0

    .line 24
    :pswitch_6
    iget-object v1, v0, Lcom/apk/cv;->do:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setPivotX(F)V

    .line 25
    iget-object v1, v0, Lcom/apk/cv;->do:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setPivotY(F)V

    .line 26
    iget-object v1, v0, Lcom/apk/cv;->do:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    iput v1, v0, Lcom/apk/ev;->new:I

    .line 27
    iget-object v1, v0, Lcom/apk/cv;->do:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iput v1, v0, Lcom/apk/ev;->try:I

    goto :goto_0

    .line 28
    :pswitch_7
    iget-object v1, v0, Lcom/apk/cv;->do:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setPivotX(F)V

    .line 29
    iget-object v1, v0, Lcom/apk/cv;->do:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setPivotY(F)V

    .line 30
    iget-object v1, v0, Lcom/apk/cv;->do:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    iput v1, v0, Lcom/apk/ev;->new:I

    const/4 v1, 0x0

    .line 31
    iput v1, v0, Lcom/apk/ev;->try:I

    .line 32
    :goto_0
    iget-object v0, p0, Lcom/apk/ev$do;->do:Lcom/apk/ev;

    iget-object v1, v0, Lcom/apk/cv;->do:Landroid/view/View;

    .line 33
    iget v2, v0, Lcom/apk/ev;->new:I

    .line 34
    iget v0, v0, Lcom/apk/ev;->try:I

    .line 35
    invoke-virtual {v1, v2, v0}, Landroid/view/View;->scrollTo(II)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xd
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
