.class public Lcom/lxj/xpopup/widget/SmartDragLayout$3;
.super Ljava/lang/Object;
.source "SmartDragLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lxj/xpopup/widget/SmartDragLayout;->smoothScroll(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/lxj/xpopup/widget/SmartDragLayout;

.field public final synthetic val$dy:I

.field public final synthetic val$isOpen:Z


# direct methods
.method public constructor <init>(Lcom/lxj/xpopup/widget/SmartDragLayout;IZ)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/lxj/xpopup/widget/SmartDragLayout$3;->this$0:Lcom/lxj/xpopup/widget/SmartDragLayout;

    iput p2, p0, Lcom/lxj/xpopup/widget/SmartDragLayout$3;->val$dy:I

    iput-boolean p3, p0, Lcom/lxj/xpopup/widget/SmartDragLayout$3;->val$isOpen:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/lxj/xpopup/widget/SmartDragLayout$3;->this$0:Lcom/lxj/xpopup/widget/SmartDragLayout;

    iget-object v1, v0, Lcom/lxj/xpopup/widget/SmartDragLayout;->scroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getScrollX()I

    move-result v2

    iget-object v0, p0, Lcom/lxj/xpopup/widget/SmartDragLayout$3;->this$0:Lcom/lxj/xpopup/widget/SmartDragLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getScrollY()I

    move-result v3

    iget v5, p0, Lcom/lxj/xpopup/widget/SmartDragLayout$3;->val$dy:I

    iget-boolean v0, p0, Lcom/lxj/xpopup/widget/SmartDragLayout$3;->val$isOpen:Z

    if-eqz v0, :cond_0

    .line 2
    sget v0, Lcom/apk/zu;->if:I

    int-to-float v0, v0

    goto :goto_0

    :cond_0
    sget v0, Lcom/apk/zu;->if:I

    int-to-float v0, v0

    const v4, 0x3f4ccccd    # 0.8f

    mul-float v0, v0, v4

    :goto_0
    float-to-int v6, v0

    const/4 v4, 0x0

    .line 3
    invoke-virtual/range {v1 .. v6}, Landroid/widget/OverScroller;->startScroll(IIIII)V

    .line 4
    iget-object v0, p0, Lcom/lxj/xpopup/widget/SmartDragLayout$3;->this$0:Lcom/lxj/xpopup/widget/SmartDragLayout;

    invoke-static {v0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    return-void
.end method
