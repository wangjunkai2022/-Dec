.class public Lcom/manhua/ui/widget/barrage/BarrageControlPopWindow$5;
.super Ljava/lang/Object;
.source "BarrageControlPopWindow.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/manhua/ui/widget/barrage/BarrageControlPopWindow;->setSpeedView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/manhua/ui/widget/barrage/BarrageControlPopWindow;


# direct methods
.method public constructor <init>(Lcom/manhua/ui/widget/barrage/BarrageControlPopWindow;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/manhua/ui/widget/barrage/BarrageControlPopWindow$5;->this$0:Lcom/manhua/ui/widget/barrage/BarrageControlPopWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0

    if-eqz p3, :cond_0

    .line 1
    iget-object p1, p0, Lcom/manhua/ui/widget/barrage/BarrageControlPopWindow$5;->this$0:Lcom/manhua/ui/widget/barrage/BarrageControlPopWindow;

    invoke-static {p1, p2}, Lcom/manhua/ui/widget/barrage/BarrageControlPopWindow;->access$702(Lcom/manhua/ui/widget/barrage/BarrageControlPopWindow;I)I

    .line 2
    iget-object p1, p0, Lcom/manhua/ui/widget/barrage/BarrageControlPopWindow$5;->this$0:Lcom/manhua/ui/widget/barrage/BarrageControlPopWindow;

    invoke-static {p1}, Lcom/manhua/ui/widget/barrage/BarrageControlPopWindow;->access$900(Lcom/manhua/ui/widget/barrage/BarrageControlPopWindow;)Landroid/widget/TextView;

    move-result-object p1

    invoke-static {}, Lcom/manhua/ui/widget/barrage/BarrageControlPopWindow;->access$800()[Ljava/lang/String;

    move-result-object p2

    iget-object p3, p0, Lcom/manhua/ui/widget/barrage/BarrageControlPopWindow$5;->this$0:Lcom/manhua/ui/widget/barrage/BarrageControlPopWindow;

    invoke-static {p3}, Lcom/manhua/ui/widget/barrage/BarrageControlPopWindow;->access$700(Lcom/manhua/ui/widget/barrage/BarrageControlPopWindow;)I

    move-result p3

    aget-object p2, p2, p3

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/manhua/ui/widget/barrage/BarrageControlPopWindow$5;->this$0:Lcom/manhua/ui/widget/barrage/BarrageControlPopWindow;

    invoke-static {p1}, Lcom/manhua/ui/widget/barrage/BarrageControlPopWindow;->access$000(Lcom/manhua/ui/widget/barrage/BarrageControlPopWindow;)Lcom/manhua/ui/widget/barrage/BarrageControlPopWindow$OnBarrageConfigListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    invoke-static {}, Lcom/manhua/ui/widget/barrage/BarrageControlPopWindow;->access$1000()[F

    move-result-object p1

    iget-object v0, p0, Lcom/manhua/ui/widget/barrage/BarrageControlPopWindow$5;->this$0:Lcom/manhua/ui/widget/barrage/BarrageControlPopWindow;

    invoke-static {v0}, Lcom/manhua/ui/widget/barrage/BarrageControlPopWindow;->access$700(Lcom/manhua/ui/widget/barrage/BarrageControlPopWindow;)I

    move-result v0

    aget p1, p1, v0

    .line 3
    iget-object v0, p0, Lcom/manhua/ui/widget/barrage/BarrageControlPopWindow$5;->this$0:Lcom/manhua/ui/widget/barrage/BarrageControlPopWindow;

    invoke-static {v0}, Lcom/manhua/ui/widget/barrage/BarrageControlPopWindow;->access$000(Lcom/manhua/ui/widget/barrage/BarrageControlPopWindow;)Lcom/manhua/ui/widget/barrage/BarrageControlPopWindow$OnBarrageConfigListener;

    move-result-object v0

    iget-object v1, p0, Lcom/manhua/ui/widget/barrage/BarrageControlPopWindow$5;->this$0:Lcom/manhua/ui/widget/barrage/BarrageControlPopWindow;

    invoke-static {v1}, Lcom/manhua/ui/widget/barrage/BarrageControlPopWindow;->access$700(Lcom/manhua/ui/widget/barrage/BarrageControlPopWindow;)I

    move-result v1

    invoke-interface {v0, v1, p1}, Lcom/manhua/ui/widget/barrage/BarrageControlPopWindow$OnBarrageConfigListener;->speed(IF)V

    :cond_0
    return-void
.end method
