.class public Lcom/lxj/xpopup/core/AttachPopupView$if;
.super Ljava/lang/Object;
.source "AttachPopupView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lxj/xpopup/core/AttachPopupView;->if()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Z

.field public final synthetic if:Lcom/lxj/xpopup/core/AttachPopupView;


# direct methods
.method public constructor <init>(Lcom/lxj/xpopup/core/AttachPopupView;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/lxj/xpopup/core/AttachPopupView$if;->if:Lcom/lxj/xpopup/core/AttachPopupView;

    iput-boolean p2, p0, Lcom/lxj/xpopup/core/AttachPopupView$if;->do:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/lxj/xpopup/core/AttachPopupView$if;->do:Z

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/lxj/xpopup/core/AttachPopupView$if;->if:Lcom/lxj/xpopup/core/AttachPopupView;

    iget-boolean v1, v0, Lcom/lxj/xpopup/core/AttachPopupView;->try:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/apk/pw;->final(Landroid/content/Context;)I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/lxj/xpopup/core/AttachPopupView$if;->if:Lcom/lxj/xpopup/core/AttachPopupView;

    iget-object v3, v2, Lcom/lxj/xpopup/core/BasePopupView;->popupInfo:Lcom/apk/lv;

    iget-object v3, v3, Lcom/apk/lv;->catch:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    sub-float/2addr v1, v3

    invoke-virtual {v2}, Lcom/lxj/xpopup/core/BasePopupView;->getPopupContentView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/lxj/xpopup/core/AttachPopupView$if;->if:Lcom/lxj/xpopup/core/AttachPopupView;

    iget v2, v2, Lcom/lxj/xpopup/core/AttachPopupView;->if:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/apk/pw;->final(Landroid/content/Context;)I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/lxj/xpopup/core/AttachPopupView$if;->if:Lcom/lxj/xpopup/core/AttachPopupView;

    iget-object v3, v2, Lcom/lxj/xpopup/core/BasePopupView;->popupInfo:Lcom/apk/lv;

    iget-object v3, v3, Lcom/apk/lv;->catch:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    sub-float/2addr v1, v3

    iget v2, v2, Lcom/lxj/xpopup/core/AttachPopupView;->if:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    :goto_0
    neg-float v1, v1

    iput v1, v0, Lcom/lxj/xpopup/core/AttachPopupView;->else:F

    goto :goto_2

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/lxj/xpopup/core/AttachPopupView$if;->if:Lcom/lxj/xpopup/core/AttachPopupView;

    iget-boolean v1, v0, Lcom/lxj/xpopup/core/AttachPopupView;->try:Z

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/lxj/xpopup/core/BasePopupView;->popupInfo:Lcom/apk/lv;

    iget-object v1, v1, Lcom/apk/lv;->catch:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    iget v2, v0, Lcom/lxj/xpopup/core/AttachPopupView;->if:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    goto :goto_1

    :cond_2
    iget-object v1, v0, Lcom/lxj/xpopup/core/BasePopupView;->popupInfo:Lcom/apk/lv;

    iget-object v1, v1, Lcom/apk/lv;->catch:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    invoke-virtual {v0}, Lcom/lxj/xpopup/core/BasePopupView;->getPopupContentView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/lxj/xpopup/core/AttachPopupView$if;->if:Lcom/lxj/xpopup/core/AttachPopupView;

    iget v2, v2, Lcom/lxj/xpopup/core/AttachPopupView;->if:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    :goto_1
    iput v1, v0, Lcom/lxj/xpopup/core/AttachPopupView;->else:F

    .line 5
    :goto_2
    iget-object v0, p0, Lcom/lxj/xpopup/core/AttachPopupView$if;->if:Lcom/lxj/xpopup/core/AttachPopupView;

    iget-object v1, v0, Lcom/lxj/xpopup/core/BasePopupView;->popupInfo:Lcom/apk/lv;

    iget-boolean v1, v1, Lcom/apk/lv;->finally:Z

    if-eqz v1, :cond_6

    .line 6
    iget-boolean v1, v0, Lcom/lxj/xpopup/core/AttachPopupView;->try:Z

    const/high16 v2, 0x40000000    # 2.0f

    if-eqz v1, :cond_4

    .line 7
    iget-boolean v1, p0, Lcom/lxj/xpopup/core/AttachPopupView$if;->do:Z

    if-eqz v1, :cond_3

    .line 8
    iget v1, v0, Lcom/lxj/xpopup/core/AttachPopupView;->else:F

    invoke-virtual {v0}, Lcom/lxj/xpopup/core/BasePopupView;->getPopupContentView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v2

    add-float/2addr v3, v1

    iput v3, v0, Lcom/lxj/xpopup/core/AttachPopupView;->else:F

    goto :goto_3

    .line 9
    :cond_3
    iget v1, v0, Lcom/lxj/xpopup/core/AttachPopupView;->else:F

    invoke-virtual {v0}, Lcom/lxj/xpopup/core/BasePopupView;->getPopupContentView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v2

    sub-float/2addr v1, v3

    iput v1, v0, Lcom/lxj/xpopup/core/AttachPopupView;->else:F

    goto :goto_3

    .line 10
    :cond_4
    iget-boolean v1, p0, Lcom/lxj/xpopup/core/AttachPopupView$if;->do:Z

    if-eqz v1, :cond_5

    .line 11
    iget v1, v0, Lcom/lxj/xpopup/core/AttachPopupView;->else:F

    invoke-virtual {v0}, Lcom/lxj/xpopup/core/BasePopupView;->getPopupContentView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v2

    sub-float/2addr v1, v3

    iput v1, v0, Lcom/lxj/xpopup/core/AttachPopupView;->else:F

    goto :goto_3

    .line 12
    :cond_5
    iget v1, v0, Lcom/lxj/xpopup/core/AttachPopupView;->else:F

    invoke-virtual {v0}, Lcom/lxj/xpopup/core/BasePopupView;->getPopupContentView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v2

    add-float/2addr v3, v1

    iput v3, v0, Lcom/lxj/xpopup/core/AttachPopupView;->else:F

    .line 13
    :cond_6
    :goto_3
    iget-object v0, p0, Lcom/lxj/xpopup/core/AttachPopupView$if;->if:Lcom/lxj/xpopup/core/AttachPopupView;

    invoke-virtual {v0}, Lcom/lxj/xpopup/core/AttachPopupView;->this()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 14
    iget-object v0, p0, Lcom/lxj/xpopup/core/AttachPopupView$if;->if:Lcom/lxj/xpopup/core/AttachPopupView;

    iget-object v1, v0, Lcom/lxj/xpopup/core/BasePopupView;->popupInfo:Lcom/apk/lv;

    iget-object v1, v1, Lcom/apk/lv;->catch:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0}, Lcom/lxj/xpopup/core/BasePopupView;->getPopupContentView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/lxj/xpopup/core/AttachPopupView$if;->if:Lcom/lxj/xpopup/core/AttachPopupView;

    iget v2, v2, Lcom/lxj/xpopup/core/AttachPopupView;->do:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iput v1, v0, Lcom/lxj/xpopup/core/AttachPopupView;->goto:F

    goto :goto_4

    .line 15
    :cond_7
    iget-object v0, p0, Lcom/lxj/xpopup/core/AttachPopupView$if;->if:Lcom/lxj/xpopup/core/AttachPopupView;

    iget-object v1, v0, Lcom/lxj/xpopup/core/BasePopupView;->popupInfo:Lcom/apk/lv;

    iget-object v1, v1, Lcom/apk/lv;->catch:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    iget v2, v0, Lcom/lxj/xpopup/core/AttachPopupView;->do:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    iput v1, v0, Lcom/lxj/xpopup/core/AttachPopupView;->goto:F

    .line 16
    :goto_4
    iget-object v0, p0, Lcom/lxj/xpopup/core/AttachPopupView$if;->if:Lcom/lxj/xpopup/core/AttachPopupView;

    invoke-virtual {v0}, Lcom/lxj/xpopup/core/BasePopupView;->getPopupContentView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/lxj/xpopup/core/AttachPopupView$if;->if:Lcom/lxj/xpopup/core/AttachPopupView;

    iget v1, v1, Lcom/lxj/xpopup/core/AttachPopupView;->else:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 17
    iget-object v0, p0, Lcom/lxj/xpopup/core/AttachPopupView$if;->if:Lcom/lxj/xpopup/core/AttachPopupView;

    invoke-virtual {v0}, Lcom/lxj/xpopup/core/BasePopupView;->getPopupContentView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/lxj/xpopup/core/AttachPopupView$if;->if:Lcom/lxj/xpopup/core/AttachPopupView;

    iget v1, v1, Lcom/lxj/xpopup/core/AttachPopupView;->goto:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method
