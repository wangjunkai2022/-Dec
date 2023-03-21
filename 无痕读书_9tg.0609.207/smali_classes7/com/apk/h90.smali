.class public Lcom/apk/h90;
.super Ljava/lang/Object;
.source "TrReplyLayout.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field public final synthetic do:Lcom/tr/comment/sdk/commons/widget/TrReplyLayout;


# direct methods
.method public constructor <init>(Lcom/tr/comment/sdk/commons/widget/TrReplyLayout;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/h90;->do:Lcom/tr/comment/sdk/commons/widget/TrReplyLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/apk/h90;->do:Lcom/tr/comment/sdk/commons/widget/TrReplyLayout;

    .line 2
    iget-object v0, v0, Lcom/tr/comment/sdk/commons/widget/TrReplyLayout;->if:Landroid/widget/LinearLayout;

    .line 3
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 4
    iget-object v0, p0, Lcom/apk/h90;->do:Lcom/tr/comment/sdk/commons/widget/TrReplyLayout;

    .line 5
    iget-object v1, v0, Lcom/tr/comment/sdk/commons/widget/TrReplyLayout;->if:Landroid/widget/LinearLayout;

    .line 6
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v1

    .line 7
    iput v1, v0, Lcom/tr/comment/sdk/commons/widget/TrReplyLayout;->final:I

    .line 8
    iget-object v0, p0, Lcom/apk/h90;->do:Lcom/tr/comment/sdk/commons/widget/TrReplyLayout;

    .line 9
    iget-object v1, v0, Lcom/tr/comment/sdk/commons/widget/TrReplyLayout;->if:Landroid/widget/LinearLayout;

    .line 10
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v1

    .line 11
    iput v1, v0, Lcom/tr/comment/sdk/commons/widget/TrReplyLayout;->super:I

    .line 12
    iget-object v0, p0, Lcom/apk/h90;->do:Lcom/tr/comment/sdk/commons/widget/TrReplyLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->requestLayout()V

    .line 13
    iget-object v0, p0, Lcom/apk/h90;->do:Lcom/tr/comment/sdk/commons/widget/TrReplyLayout;

    .line 14
    iget v1, v0, Lcom/tr/comment/sdk/commons/widget/TrReplyLayout;->super:I

    int-to-float v1, v1

    const v2, 0x3f666666    # 0.9f

    mul-float v1, v1, v2

    float-to-int v1, v1

    .line 15
    iput v1, v0, Lcom/tr/comment/sdk/commons/widget/TrReplyLayout;->throw:I

    .line 16
    invoke-static {v0, v1}, Lcom/tr/comment/sdk/commons/widget/TrReplyLayout;->this(Lcom/tr/comment/sdk/commons/widget/TrReplyLayout;I)V

    .line 17
    iget-object v0, p0, Lcom/apk/h90;->do:Lcom/tr/comment/sdk/commons/widget/TrReplyLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void
.end method
