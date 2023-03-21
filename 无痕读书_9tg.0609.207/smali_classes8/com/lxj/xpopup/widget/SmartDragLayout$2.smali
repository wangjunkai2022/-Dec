.class public Lcom/lxj/xpopup/widget/SmartDragLayout$2;
.super Ljava/lang/Object;
.source "SmartDragLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lxj/xpopup/widget/SmartDragLayout;->close()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/lxj/xpopup/widget/SmartDragLayout;


# direct methods
.method public constructor <init>(Lcom/lxj/xpopup/widget/SmartDragLayout;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/lxj/xpopup/widget/SmartDragLayout$2;->this$0:Lcom/lxj/xpopup/widget/SmartDragLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/lxj/xpopup/widget/SmartDragLayout$2;->this$0:Lcom/lxj/xpopup/widget/SmartDragLayout;

    iget-object v0, v0, Lcom/lxj/xpopup/widget/SmartDragLayout;->scroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 2
    iget-object v0, p0, Lcom/lxj/xpopup/widget/SmartDragLayout$2;->this$0:Lcom/lxj/xpopup/widget/SmartDragLayout;

    iget v1, v0, Lcom/lxj/xpopup/widget/SmartDragLayout;->minY:I

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getScrollY()I

    move-result v2

    sub-int/2addr v1, v2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/lxj/xpopup/widget/SmartDragLayout;->smoothScroll(IZ)V

    .line 3
    iget-object v0, p0, Lcom/lxj/xpopup/widget/SmartDragLayout$2;->this$0:Lcom/lxj/xpopup/widget/SmartDragLayout;

    sget-object v1, Lcom/apk/nv;->new:Lcom/apk/nv;

    iput-object v1, v0, Lcom/lxj/xpopup/widget/SmartDragLayout;->status:Lcom/apk/nv;

    return-void
.end method
