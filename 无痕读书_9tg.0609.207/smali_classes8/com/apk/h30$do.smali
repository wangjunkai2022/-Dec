.class public Lcom/apk/h30$do;
.super Ljava/lang/Object;
.source "PhotoViewAttacher.java"

# interfaces
.implements Lcom/apk/z20;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apk/h30;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/apk/h30;


# direct methods
.method public constructor <init>(Lcom/apk/h30;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/h30$do;->do:Lcom/apk/h30;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public do(FFF)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/apk/h30$do;->do:Lcom/apk/h30;

    invoke-virtual {v0}, Lcom/apk/h30;->goto()F

    move-result v0

    iget-object v1, p0, Lcom/apk/h30$do;->do:Lcom/apk/h30;

    .line 2
    iget v1, v1, Lcom/apk/h30;->try:F

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p1, v0

    if-gez v0, :cond_2

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/apk/h30$do;->do:Lcom/apk/h30;

    .line 4
    iget-object v0, v0, Lcom/apk/h30;->static:Lcom/apk/d30;

    if-eqz v0, :cond_1

    .line 5
    invoke-interface {v0, p1, p2, p3}, Lcom/apk/d30;->do(FFF)V

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/apk/h30$do;->do:Lcom/apk/h30;

    .line 7
    iget-object v0, v0, Lcom/apk/h30;->const:Landroid/graphics/Matrix;

    .line 8
    invoke-virtual {v0, p1, p1, p2, p3}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 9
    iget-object p1, p0, Lcom/apk/h30$do;->do:Lcom/apk/h30;

    .line 10
    invoke-virtual {p1}, Lcom/apk/h30;->do()V

    :cond_2
    return-void
.end method
