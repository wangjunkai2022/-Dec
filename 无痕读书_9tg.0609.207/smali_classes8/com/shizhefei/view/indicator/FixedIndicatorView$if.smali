.class public Lcom/shizhefei/view/indicator/FixedIndicatorView$if;
.super Ljava/lang/Object;
.source "FixedIndicatorView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shizhefei/view/indicator/FixedIndicatorView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/shizhefei/view/indicator/FixedIndicatorView;


# direct methods
.method public constructor <init>(Lcom/shizhefei/view/indicator/FixedIndicatorView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView$if;->do:Lcom/shizhefei/view/indicator/FixedIndicatorView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView$if;->do:Lcom/shizhefei/view/indicator/FixedIndicatorView;

    .line 2
    iget-boolean v0, v0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->this:Z

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 4
    check-cast p1, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    .line 5
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 6
    iget-object v3, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView$if;->do:Lcom/shizhefei/view/indicator/FixedIndicatorView;

    .line 7
    iget-object v3, v3, Lcom/shizhefei/view/indicator/FixedIndicatorView;->new:Lcom/apk/b40$for;

    if-eqz v3, :cond_0

    .line 8
    invoke-interface {v3, v2, v0}, Lcom/apk/b40$for;->do(Landroid/view/View;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 9
    :cond_0
    iget-object v2, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView$if;->do:Lcom/shizhefei/view/indicator/FixedIndicatorView;

    invoke-virtual {v2, v0}, Lcom/shizhefei/view/indicator/FixedIndicatorView;->setCurrentItem(I)V

    .line 10
    iget-object v2, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView$if;->do:Lcom/shizhefei/view/indicator/FixedIndicatorView;

    .line 11
    iget-object v2, v2, Lcom/shizhefei/view/indicator/FixedIndicatorView;->for:Lcom/apk/b40$new;

    if-eqz v2, :cond_1

    .line 12
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    iget-object v1, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView$if;->do:Lcom/shizhefei/view/indicator/FixedIndicatorView;

    .line 13
    iget v1, v1, Lcom/shizhefei/view/indicator/FixedIndicatorView;->break:I

    .line 14
    invoke-interface {v2, p1, v0, v1}, Lcom/apk/b40$new;->do(Landroid/view/View;II)V

    :cond_1
    return-void
.end method
