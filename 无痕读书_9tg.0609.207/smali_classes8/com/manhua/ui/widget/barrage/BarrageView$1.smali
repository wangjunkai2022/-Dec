.class public Lcom/manhua/ui/widget/barrage/BarrageView$1;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "BarrageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/manhua/ui/widget/barrage/BarrageView;->initGestureDetector()V
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
    iput-object p1, p0, Lcom/manhua/ui/widget/barrage/BarrageView$1;->this$0:Lcom/manhua/ui/widget/barrage/BarrageView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/manhua/ui/widget/barrage/BarrageView$1;->this$0:Lcom/manhua/ui/widget/barrage/BarrageView;

    invoke-static {v0}, Lcom/manhua/ui/widget/barrage/BarrageView;->access$100(Lcom/manhua/ui/widget/barrage/BarrageView;)Ljava/util/HashMap;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2
    iget-object v0, p0, Lcom/manhua/ui/widget/barrage/BarrageView$1;->this$0:Lcom/manhua/ui/widget/barrage/BarrageView;

    invoke-static {v0}, Lcom/manhua/ui/widget/barrage/BarrageView;->access$100(Lcom/manhua/ui/widget/barrage/BarrageView;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 3
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 5
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/manhua/ui/widget/barrage/IBarrageItem;

    .line 6
    invoke-interface {v2}, Lcom/manhua/ui/widget/barrage/IBarrageItem;->getRectF()Landroid/graphics/RectF;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v4, v4

    int-to-float v4, v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v5, v5

    int-to-float v5, v5

    invoke-virtual {v3, v4, v5}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 8
    iget-object p1, p0, Lcom/manhua/ui/widget/barrage/BarrageView$1;->this$0:Lcom/manhua/ui/widget/barrage/BarrageView;

    invoke-static {p1, v2}, Lcom/manhua/ui/widget/barrage/BarrageView;->access$002(Lcom/manhua/ui/widget/barrage/BarrageView;Lcom/manhua/ui/widget/barrage/IBarrageItem;)Lcom/manhua/ui/widget/barrage/IBarrageItem;

    const/4 p1, 0x1

    return p1

    .line 9
    :cond_2
    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onDown(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/manhua/ui/widget/barrage/BarrageView$1;->this$0:Lcom/manhua/ui/widget/barrage/BarrageView;

    invoke-static {v0}, Lcom/manhua/ui/widget/barrage/BarrageView;->access$000(Lcom/manhua/ui/widget/barrage/BarrageView;)Lcom/manhua/ui/widget/barrage/IBarrageItem;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/manhua/ui/widget/barrage/BarrageView$1;->this$0:Lcom/manhua/ui/widget/barrage/BarrageView;

    invoke-static {v0}, Lcom/manhua/ui/widget/barrage/BarrageView;->access$000(Lcom/manhua/ui/widget/barrage/BarrageView;)Lcom/manhua/ui/widget/barrage/IBarrageItem;

    move-result-object v0

    invoke-interface {v0}, Lcom/manhua/ui/widget/barrage/IBarrageItem;->getBarrageBean()Lcom/manhua/ui/widget/barrage/BarrageBean;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/manhua/ui/widget/barrage/BarrageBean;->getClickto()Ljava/lang/String;

    move-result-object v1

    .line 4
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 5
    iget-object v1, p0, Lcom/manhua/ui/widget/barrage/BarrageView$1;->this$0:Lcom/manhua/ui/widget/barrage/BarrageView;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/manhua/ui/widget/barrage/BarrageDataUtils;->clickAdDanMu(Landroid/content/Context;Lcom/manhua/ui/widget/barrage/BarrageBean;)V

    .line 6
    :cond_0
    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onSingleTapUp(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
