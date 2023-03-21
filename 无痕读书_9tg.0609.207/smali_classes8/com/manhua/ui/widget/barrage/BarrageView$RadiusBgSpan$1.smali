.class public Lcom/manhua/ui/widget/barrage/BarrageView$RadiusBgSpan$1;
.super Ljava/lang/Object;
.source "BarrageView.java"

# interfaces
.implements Lcom/apk/g1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/manhua/ui/widget/barrage/BarrageView$RadiusBgSpan;-><init>(Lcom/manhua/ui/widget/barrage/BarrageBean;FI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/manhua/ui/widget/barrage/BarrageView$RadiusBgSpan;


# direct methods
.method public constructor <init>(Lcom/manhua/ui/widget/barrage/BarrageView$RadiusBgSpan;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/manhua/ui/widget/barrage/BarrageView$RadiusBgSpan$1;->this$0:Lcom/manhua/ui/widget/barrage/BarrageView$RadiusBgSpan;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onData(Ljava/lang/Object;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Lcom/manhua/ui/widget/barrage/BarrageView$RadiusBgSpan$1;->this$0:Lcom/manhua/ui/widget/barrage/BarrageView$RadiusBgSpan;

    check-cast p1, Landroid/graphics/Bitmap;

    invoke-static {v0, p1}, Lcom/manhua/ui/widget/barrage/BarrageView$RadiusBgSpan;->access$502(Lcom/manhua/ui/widget/barrage/BarrageView$RadiusBgSpan;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 2
    iget-object p1, p0, Lcom/manhua/ui/widget/barrage/BarrageView$RadiusBgSpan$1;->this$0:Lcom/manhua/ui/widget/barrage/BarrageView$RadiusBgSpan;

    invoke-static {p1}, Lcom/manhua/ui/widget/barrage/BarrageView$RadiusBgSpan;->access$500(Lcom/manhua/ui/widget/barrage/BarrageView$RadiusBgSpan;)Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/manhua/ui/widget/barrage/BarrageView$RadiusBgSpan$1;->this$0:Lcom/manhua/ui/widget/barrage/BarrageView$RadiusBgSpan;

    const/high16 v0, 0x40200000    # 2.5f

    invoke-static {v0}, Lcom/manhua/ui/widget/barrage/BarrageView;->dip2px(F)I

    move-result v0

    invoke-static {p1, v0}, Lcom/manhua/ui/widget/barrage/BarrageView$RadiusBgSpan;->access$602(Lcom/manhua/ui/widget/barrage/BarrageView$RadiusBgSpan;I)I

    .line 4
    iget-object p1, p0, Lcom/manhua/ui/widget/barrage/BarrageView$RadiusBgSpan$1;->this$0:Lcom/manhua/ui/widget/barrage/BarrageView$RadiusBgSpan;

    invoke-static {p1}, Lcom/manhua/ui/widget/barrage/BarrageView$RadiusBgSpan;->access$500(Lcom/manhua/ui/widget/barrage/BarrageView$RadiusBgSpan;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    const/high16 v1, 0x41200000    # 10.0f

    invoke-static {v1}, Lcom/manhua/ui/widget/barrage/BarrageView;->dip2px(F)I

    move-result v1

    add-int/2addr v1, v0

    invoke-static {p1, v1}, Lcom/manhua/ui/widget/barrage/BarrageView$RadiusBgSpan;->access$702(Lcom/manhua/ui/widget/barrage/BarrageView$RadiusBgSpan;I)I

    :cond_0
    return-void
.end method
