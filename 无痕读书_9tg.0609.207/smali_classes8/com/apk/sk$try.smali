.class public Lcom/apk/sk$try;
.super Ljava/lang/Object;
.source "DecodeJob.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apk/sk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "try"
.end annotation


# instance fields
.field public do:Z

.field public for:Z

.field public if:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final do(Z)Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/apk/sk$try;->for:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    iget-boolean p1, p0, Lcom/apk/sk$try;->if:Z

    if-eqz p1, :cond_1

    :cond_0
    iget-boolean p1, p0, Lcom/apk/sk$try;->do:Z

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
