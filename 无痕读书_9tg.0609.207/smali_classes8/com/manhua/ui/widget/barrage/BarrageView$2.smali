.class public Lcom/manhua/ui/widget/barrage/BarrageView$2;
.super Ljava/lang/Object;
.source "BarrageView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/manhua/ui/widget/barrage/BarrageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/manhua/ui/widget/barrage/BarrageView;


# direct methods
.method public constructor <init>(Lcom/manhua/ui/widget/barrage/BarrageView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/manhua/ui/widget/barrage/BarrageView$2;->this$0:Lcom/manhua/ui/widget/barrage/BarrageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/manhua/ui/widget/barrage/BarrageView$2;->this$0:Lcom/manhua/ui/widget/barrage/BarrageView;

    invoke-static {v0}, Lcom/manhua/ui/widget/barrage/BarrageView;->access$200(Lcom/manhua/ui/widget/barrage/BarrageView;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/manhua/ui/widget/barrage/BarrageView$2;->this$0:Lcom/manhua/ui/widget/barrage/BarrageView;

    invoke-static {v0}, Lcom/manhua/ui/widget/barrage/BarrageView;->access$300(Lcom/manhua/ui/widget/barrage/BarrageView;)Ljava/util/Deque;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/manhua/ui/widget/barrage/BarrageView$2;->this$0:Lcom/manhua/ui/widget/barrage/BarrageView;

    invoke-static {v0}, Lcom/manhua/ui/widget/barrage/BarrageView;->access$300(Lcom/manhua/ui/widget/barrage/BarrageView;)Ljava/util/Deque;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Deque;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/manhua/ui/widget/barrage/BarrageView$2;->this$0:Lcom/manhua/ui/widget/barrage/BarrageView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/manhua/ui/widget/barrage/BarrageView;->access$402(Lcom/manhua/ui/widget/barrage/BarrageView;I)I

    .line 3
    iget-object v0, p0, Lcom/manhua/ui/widget/barrage/BarrageView$2;->this$0:Lcom/manhua/ui/widget/barrage/BarrageView;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method
