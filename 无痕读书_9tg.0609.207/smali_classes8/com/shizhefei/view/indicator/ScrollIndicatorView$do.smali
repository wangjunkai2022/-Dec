.class public Lcom/shizhefei/view/indicator/ScrollIndicatorView$do;
.super Ljava/lang/Object;
.source "ScrollIndicatorView.java"

# interfaces
.implements Lcom/apk/b40$do;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shizhefei/view/indicator/ScrollIndicatorView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/shizhefei/view/indicator/ScrollIndicatorView;


# direct methods
.method public constructor <init>(Lcom/shizhefei/view/indicator/ScrollIndicatorView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shizhefei/view/indicator/ScrollIndicatorView$do;->do:Lcom/shizhefei/view/indicator/ScrollIndicatorView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public do()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/shizhefei/view/indicator/ScrollIndicatorView$do;->do:Lcom/shizhefei/view/indicator/ScrollIndicatorView;

    .line 2
    iget-object v1, v0, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->this:Ljava/lang/Runnable;

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v0, v1}, Landroid/widget/HorizontalScrollView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/shizhefei/view/indicator/ScrollIndicatorView$do;->do:Lcom/shizhefei/view/indicator/ScrollIndicatorView;

    const/4 v1, 0x0

    .line 5
    iput v1, v0, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->const:F

    .line 6
    invoke-static {v0}, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->for(Lcom/shizhefei/view/indicator/ScrollIndicatorView;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->if(IZ)V

    .line 7
    iget-object v0, p0, Lcom/shizhefei/view/indicator/ScrollIndicatorView$do;->do:Lcom/shizhefei/view/indicator/ScrollIndicatorView;

    .line 8
    iget-boolean v1, v0, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->for:Z

    if-eqz v1, :cond_1

    .line 9
    iget-object v0, v0, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->if:Lcom/shizhefei/view/indicator/ScrollIndicatorView$new;

    .line 10
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 11
    iget-object v0, p0, Lcom/shizhefei/view/indicator/ScrollIndicatorView$do;->do:Lcom/shizhefei/view/indicator/ScrollIndicatorView;

    .line 12
    iget-object v1, v0, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->if:Lcom/shizhefei/view/indicator/ScrollIndicatorView$new;

    .line 13
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 14
    iput-object v1, v0, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->break:Landroid/view/View;

    :cond_1
    return-void
.end method
