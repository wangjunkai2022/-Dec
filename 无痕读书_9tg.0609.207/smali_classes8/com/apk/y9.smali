.class public abstract Lcom/apk/y9;
.super Ljava/lang/Object;
.source "PageAnimation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apk/y9$if;,
        Lcom/apk/y9$do;
    }
.end annotation


# instance fields
.field public break:I

.field public case:I

.field public catch:F

.field public class:F

.field public const:F

.field public do:Landroid/view/ViewGroup;

.field public else:I

.field public final:F

.field public for:Lcom/apk/y9$if;

.field public goto:I

.field public if:Landroid/widget/Scroller;

.field public new:Lcom/apk/y9$do;

.field public super:Z

.field public this:I

.field public throw:I

.field public try:I

.field public while:Lcom/apk/i1;


# direct methods
.method public constructor <init>(IIIILandroid/view/ViewGroup;Lcom/apk/y9$if;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lcom/apk/y9$do;->do:Lcom/apk/y9$do;

    iput-object v0, p0, Lcom/apk/y9;->new:Lcom/apk/y9$do;

    .line 3
    iput p1, p0, Lcom/apk/y9;->try:I

    .line 4
    iput p2, p0, Lcom/apk/y9;->case:I

    .line 5
    iput p3, p0, Lcom/apk/y9;->else:I

    .line 6
    iput p4, p0, Lcom/apk/y9;->goto:I

    mul-int/lit8 p3, p3, 0x2

    sub-int/2addr p1, p3

    .line 7
    iput p1, p0, Lcom/apk/y9;->this:I

    mul-int/lit8 p4, p4, 0x2

    sub-int/2addr p2, p4

    .line 8
    iput p2, p0, Lcom/apk/y9;->break:I

    .line 9
    iput-object p5, p0, Lcom/apk/y9;->do:Landroid/view/ViewGroup;

    .line 10
    iput-object p6, p0, Lcom/apk/y9;->for:Lcom/apk/y9$if;

    .line 11
    new-instance p1, Lcom/apk/w9;

    invoke-direct {p1, p0, p5}, Lcom/apk/w9;-><init>(Lcom/apk/y9;Landroid/view/ViewGroup;)V

    invoke-virtual {p5, p1}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    .line 12
    new-instance p1, Landroid/widget/Scroller;

    iget-object p2, p0, Lcom/apk/y9;->do:Landroid/view/ViewGroup;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    new-instance p3, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {p3}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-direct {p1, p2, p3}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object p1, p0, Lcom/apk/y9;->if:Landroid/widget/Scroller;

    return-void
.end method


# virtual methods
.method public synthetic do(Landroid/view/ViewGroup;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/apk/y9;->this:I

    .line 2
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getHeight()I

    move-result p1

    iput p1, p0, Lcom/apk/y9;->break:I

    return-void
.end method

.method public for(Lcom/apk/y9$do;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/y9;->new:Lcom/apk/y9$do;

    return-void
.end method

.method public abstract if(Landroid/view/MotionEvent;)Z
.end method

.method public new(FF)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/apk/y9;->const:F

    .line 2
    iput p2, p0, Lcom/apk/y9;->final:F

    return-void
.end method
