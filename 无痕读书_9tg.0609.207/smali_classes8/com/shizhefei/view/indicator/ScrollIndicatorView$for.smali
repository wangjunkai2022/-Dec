.class public Lcom/shizhefei/view/indicator/ScrollIndicatorView$for;
.super Ljava/lang/Object;
.source "ScrollIndicatorView.java"

# interfaces
.implements Lcom/apk/b40$new;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shizhefei/view/indicator/ScrollIndicatorView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "for"
.end annotation


# instance fields
.field public do:Lcom/apk/b40$new;


# direct methods
.method public constructor <init>(Lcom/shizhefei/view/indicator/ScrollIndicatorView;Lcom/shizhefei/view/indicator/ScrollIndicatorView$do;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public do(Landroid/view/View;II)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shizhefei/view/indicator/ScrollIndicatorView$for;->do:Lcom/apk/b40$new;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1, p2, p3}, Lcom/apk/b40$new;->do(Landroid/view/View;II)V

    :cond_0
    return-void
.end method
