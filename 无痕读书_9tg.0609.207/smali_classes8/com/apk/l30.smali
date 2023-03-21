.class public Lcom/apk/l30;
.super Ljava/lang/Object;
.source "GestureDetectorUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apk/l30$if;
    }
.end annotation


# instance fields
.field public final do:Landroid/view/GestureDetector;

.field public for:I

.field public final if:Lcom/apk/pz;

.field public new:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/apk/pz;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/apk/l30;->if:Lcom/apk/pz;

    .line 3
    new-instance p2, Landroid/view/GestureDetector;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    new-instance v0, Lcom/apk/l30$if;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/apk/l30$if;-><init>(Lcom/apk/l30;Lcom/apk/l30$do;)V

    invoke-direct {p2, p1, v0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p2, p0, Lcom/apk/l30;->do:Landroid/view/GestureDetector;

    return-void
.end method


# virtual methods
.method public do(FFZ)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/apk/l30;->for:I

    int-to-float v0, v0

    div-float/2addr p1, v0

    .line 2
    iget v0, p0, Lcom/apk/l30;->new:I

    int-to-float v0, v0

    div-float/2addr p2, v0

    .line 3
    iget-object v0, p0, Lcom/apk/l30;->if:Lcom/apk/pz;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 4
    invoke-interface {v0, v1, p1, p2, p3}, Lcom/apk/pz;->do(Landroid/view/View;FFZ)V

    :cond_0
    return-void
.end method
