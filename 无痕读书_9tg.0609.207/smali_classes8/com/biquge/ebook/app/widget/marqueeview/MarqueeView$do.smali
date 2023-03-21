.class public Lcom/biquge/ebook/app/widget/marqueeview/MarqueeView$do;
.super Ljava/lang/Object;
.source "MarqueeView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biquge/ebook/app/widget/marqueeview/MarqueeView;->if(Ljava/lang/CharSequence;)Landroid/widget/TextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/biquge/ebook/app/widget/marqueeview/MarqueeView;


# direct methods
.method public constructor <init>(Lcom/biquge/ebook/app/widget/marqueeview/MarqueeView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/widget/marqueeview/MarqueeView$do;->do:Lcom/biquge/ebook/app/widget/marqueeview/MarqueeView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/widget/marqueeview/MarqueeView$do;->do:Lcom/biquge/ebook/app/widget/marqueeview/MarqueeView;

    .line 2
    iget-object v1, v0, Lcom/biquge/ebook/app/widget/marqueeview/MarqueeView;->class:Lcom/biquge/ebook/app/widget/marqueeview/MarqueeView$if;

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/biquge/ebook/app/widget/marqueeview/MarqueeView;->getPosition()I

    move-result v0

    check-cast p1, Landroid/widget/TextView;

    invoke-interface {v1, v0, p1}, Lcom/biquge/ebook/app/widget/marqueeview/MarqueeView$if;->do(ILandroid/widget/TextView;)V

    :cond_0
    return-void
.end method
