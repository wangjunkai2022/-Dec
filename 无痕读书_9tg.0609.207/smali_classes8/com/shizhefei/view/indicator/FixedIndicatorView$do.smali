.class public Lcom/shizhefei/view/indicator/FixedIndicatorView$do;
.super Ljava/lang/Object;
.source "FixedIndicatorView.java"

# interfaces
.implements Lcom/apk/b40$do;


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
    iput-object p1, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView$do;->do:Lcom/shizhefei/view/indicator/FixedIndicatorView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public do()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView$do;->do:Lcom/shizhefei/view/indicator/FixedIndicatorView;

    .line 2
    iget-object v0, v0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->super:Lcom/shizhefei/view/indicator/FixedIndicatorView$for;

    .line 3
    invoke-virtual {v0}, Lcom/shizhefei/view/indicator/FixedIndicatorView$for;->do()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView$do;->do:Lcom/shizhefei/view/indicator/FixedIndicatorView;

    .line 5
    iget-object v0, v0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->super:Lcom/shizhefei/view/indicator/FixedIndicatorView$for;

    .line 6
    invoke-virtual {v0}, Lcom/shizhefei/view/indicator/FixedIndicatorView$for;->if()V

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView$do;->do:Lcom/shizhefei/view/indicator/FixedIndicatorView;

    invoke-static {v0}, Lcom/shizhefei/view/indicator/FixedIndicatorView;->for(Lcom/shizhefei/view/indicator/FixedIndicatorView;)I

    move-result v0

    .line 8
    iget-object v1, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView$do;->do:Lcom/shizhefei/view/indicator/FixedIndicatorView;

    .line 9
    iget-object v1, v1, Lcom/shizhefei/view/indicator/FixedIndicatorView;->if:Lcom/apk/b40$if;

    .line 10
    invoke-virtual {v1}, Lcom/apk/b40$if;->do()I

    move-result v1

    .line 11
    iget-object v2, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView$do;->do:Lcom/shizhefei/view/indicator/FixedIndicatorView;

    .line 12
    iget-object v2, v2, Lcom/shizhefei/view/indicator/FixedIndicatorView;->catch:Ljava/util/List;

    .line 13
    invoke-interface {v2}, Ljava/util/List;->clear()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_1

    if-ge v3, v1, :cond_1

    .line 14
    iget-object v4, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView$do;->do:Lcom/shizhefei/view/indicator/FixedIndicatorView;

    .line 15
    iget-object v5, v4, Lcom/shizhefei/view/indicator/FixedIndicatorView;->catch:Ljava/util/List;

    .line 16
    invoke-virtual {v4, v3}, Lcom/shizhefei/view/indicator/FixedIndicatorView;->try(I)Landroid/view/View;

    move-result-object v4

    .line 17
    check-cast v4, Landroid/view/ViewGroup;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 18
    :cond_1
    iget-object v0, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView$do;->do:Lcom/shizhefei/view/indicator/FixedIndicatorView;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 19
    iget-object v0, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView$do;->do:Lcom/shizhefei/view/indicator/FixedIndicatorView;

    .line 20
    iget-object v0, v0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->catch:Ljava/util/List;

    .line 21
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v3, 0x0

    :goto_1
    const/4 v4, -0x1

    if-ge v3, v1, :cond_5

    .line 22
    new-instance v5, Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView$do;->do:Lcom/shizhefei/view/indicator/FixedIndicatorView;

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    if-ge v3, v0, :cond_2

    .line 23
    iget-object v6, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView$do;->do:Lcom/shizhefei/view/indicator/FixedIndicatorView;

    .line 24
    iget-object v6, v6, Lcom/shizhefei/view/indicator/FixedIndicatorView;->catch:Ljava/util/List;

    .line 25
    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    invoke-virtual {v6, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 26
    iget-object v7, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView$do;->do:Lcom/shizhefei/view/indicator/FixedIndicatorView;

    .line 27
    iget-object v7, v7, Lcom/shizhefei/view/indicator/FixedIndicatorView;->catch:Ljava/util/List;

    .line 28
    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    invoke-virtual {v7, v6}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 29
    iget-object v7, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView$do;->do:Lcom/shizhefei/view/indicator/FixedIndicatorView;

    .line 30
    iget-object v7, v7, Lcom/shizhefei/view/indicator/FixedIndicatorView;->if:Lcom/apk/b40$if;

    .line 31
    invoke-virtual {v7, v3, v6, v5}, Lcom/apk/b40$if;->if(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    goto :goto_2

    .line 32
    :cond_2
    iget-object v6, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView$do;->do:Lcom/shizhefei/view/indicator/FixedIndicatorView;

    .line 33
    iget-object v6, v6, Lcom/shizhefei/view/indicator/FixedIndicatorView;->if:Lcom/apk/b40$if;

    const/4 v7, 0x0

    .line 34
    invoke-virtual {v6, v3, v7, v5}, Lcom/apk/b40$if;->if(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 35
    :goto_2
    iget-object v7, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView$do;->do:Lcom/shizhefei/view/indicator/FixedIndicatorView;

    .line 36
    iget-object v8, v7, Lcom/shizhefei/view/indicator/FixedIndicatorView;->static:Lcom/apk/b40$try;

    if-eqz v8, :cond_4

    .line 37
    iget v7, v7, Lcom/shizhefei/view/indicator/FixedIndicatorView;->try:I

    if-ne v3, v7, :cond_3

    const/high16 v7, 0x3f800000    # 1.0f

    goto :goto_3

    :cond_3
    const/4 v7, 0x0

    .line 38
    :goto_3
    check-cast v8, Lcom/apk/i40;

    invoke-virtual {v8, v6, v3, v7}, Lcom/apk/i40;->if(Landroid/view/View;IF)V

    .line 39
    :cond_4
    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 40
    iget-object v6, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView$do;->do:Lcom/shizhefei/view/indicator/FixedIndicatorView;

    .line 41
    iget-object v6, v6, Lcom/shizhefei/view/indicator/FixedIndicatorView;->const:Landroid/view/View$OnClickListener;

    .line 42
    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 43
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 44
    iget-object v6, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView$do;->do:Lcom/shizhefei/view/indicator/FixedIndicatorView;

    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v8, -0x2

    invoke-direct {v7, v8, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v6, v5, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 45
    :cond_5
    iget-object v0, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView$do;->do:Lcom/shizhefei/view/indicator/FixedIndicatorView;

    .line 46
    iget-object v1, v0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->switch:Landroid/view/View;

    if-eqz v1, :cond_6

    .line 47
    iget-object v3, v0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->throws:Landroid/widget/LinearLayout$LayoutParams;

    .line 48
    invoke-virtual {v0, v1, v3}, Lcom/shizhefei/view/indicator/FixedIndicatorView;->break(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 49
    :cond_6
    iget-object v0, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView$do;->do:Lcom/shizhefei/view/indicator/FixedIndicatorView;

    .line 50
    iput v4, v0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->break:I

    .line 51
    iget v1, v0, Lcom/shizhefei/view/indicator/FixedIndicatorView;->try:I

    .line 52
    invoke-virtual {v0, v1, v2}, Lcom/shizhefei/view/indicator/FixedIndicatorView;->if(IZ)V

    .line 53
    iget-object v0, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView$do;->do:Lcom/shizhefei/view/indicator/FixedIndicatorView;

    .line 54
    invoke-virtual {v0}, Lcom/shizhefei/view/indicator/FixedIndicatorView;->goto()V

    return-void
.end method
