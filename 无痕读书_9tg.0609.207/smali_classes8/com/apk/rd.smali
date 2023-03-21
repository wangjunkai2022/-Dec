.class public final Lcom/apk/rd;
.super Ljava/lang/Object;
.source "WebPresenter.java"

# interfaces
.implements Lcom/apk/x4$goto;


# instance fields
.field public final synthetic do:Ljava/lang/String;

.field public final synthetic if:J


# direct methods
.method public constructor <init>(Ljava/lang/String;J)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/rd;->do:Ljava/lang/String;

    iput-wide p2, p0, Lcom/apk/rd;->if:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public do(ZILjava/lang/String;)V
    .locals 0

    const/4 p2, 0x0

    if-eqz p1, :cond_1

    .line 1
    invoke-static {}, Lcom/apk/v;->do()Lcom/apk/v;

    move-result-object p1

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    if-eqz p1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    throw p2

    .line 4
    :cond_1
    invoke-static {}, Lcom/apk/v;->do()Lcom/apk/v;

    move-result-object p1

    .line 5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    if-eqz p1, :cond_2

    :goto_0
    return-void

    .line 6
    :cond_2
    throw p2
.end method

.method public if()V
    .locals 0

    return-void
.end method
