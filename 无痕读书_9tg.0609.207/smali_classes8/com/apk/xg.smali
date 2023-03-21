.class public Lcom/apk/xg;
.super Ljava/lang/Object;
.source "ScrollPaintView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic do:Lcom/biquge/ebook/app/widget/ScrollPaintView;


# direct methods
.method public constructor <init>(Lcom/biquge/ebook/app/widget/ScrollPaintView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/xg;->do:Lcom/biquge/ebook/app/widget/ScrollPaintView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 2
    iget-object v0, p0, Lcom/apk/xg;->do:Lcom/biquge/ebook/app/widget/ScrollPaintView;

    invoke-static {v0, p1}, Lcom/biquge/ebook/app/widget/ScrollPaintView;->if(Lcom/biquge/ebook/app/widget/ScrollPaintView;I)V

    .line 3
    iget-object v0, p0, Lcom/apk/xg;->do:Lcom/biquge/ebook/app/widget/ScrollPaintView;

    .line 4
    iput p1, v0, Lcom/biquge/ebook/app/widget/ScrollPaintView;->this:I

    const/4 p1, 0x0

    .line 5
    iput-boolean p1, v0, Lcom/biquge/ebook/app/widget/ScrollPaintView;->default:Z

    return-void
.end method
