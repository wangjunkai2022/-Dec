.class public Lcom/lxj/xpopup/widget/LoadingView$1;
.super Ljava/lang/Object;
.source "LoadingView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lxj/xpopup/widget/LoadingView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/lxj/xpopup/widget/LoadingView;


# direct methods
.method public constructor <init>(Lcom/lxj/xpopup/widget/LoadingView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/lxj/xpopup/widget/LoadingView$1;->this$0:Lcom/lxj/xpopup/widget/LoadingView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/lxj/xpopup/widget/LoadingView$1;->this$0:Lcom/lxj/xpopup/widget/LoadingView;

    iget v1, v0, Lcom/lxj/xpopup/widget/LoadingView;->time:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/lxj/xpopup/widget/LoadingView;->time:I

    .line 2
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    iget-object v2, p0, Lcom/lxj/xpopup/widget/LoadingView$1;->this$0:Lcom/lxj/xpopup/widget/LoadingView;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/view/View;->postInvalidate(IIII)V

    return-void
.end method
