.class public Lcom/apk/at0;
.super Ljava/lang/Object;
.source "ThrottledTouchEventHandler.java"


# instance fields
.field public do:I

.field public for:J

.field public if:Lcom/apk/bt0;


# direct methods
.method public constructor <init>(Lcom/apk/bt0;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    .line 2
    iput v0, p0, Lcom/apk/at0;->do:I

    const-wide/16 v1, 0x0

    .line 3
    iput-wide v1, p0, Lcom/apk/at0;->for:J

    .line 4
    iput v0, p0, Lcom/apk/at0;->do:I

    .line 5
    iput-object p1, p0, Lcom/apk/at0;->if:Lcom/apk/bt0;

    return-void
.end method


# virtual methods
.method public do(Landroid/view/MotionEvent;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/apk/at0;->if:Lcom/apk/bt0;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 3
    iget-wide v2, p0, Lcom/apk/at0;->for:J

    sub-long v2, v0, v2

    iget v4, p0, Lcom/apk/at0;->do:I

    int-to-long v4, v4

    cmp-long v6, v2, v4

    if-gtz v6, :cond_1

    return-void

    .line 4
    :cond_1
    iput-wide v0, p0, Lcom/apk/at0;->for:J

    .line 5
    iget-object v0, p0, Lcom/apk/at0;->if:Lcom/apk/bt0;

    invoke-interface {v0, p1}, Lcom/apk/bt0;->update(Landroid/view/MotionEvent;)V

    return-void
.end method
