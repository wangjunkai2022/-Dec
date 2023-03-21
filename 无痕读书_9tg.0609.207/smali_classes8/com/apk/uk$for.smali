.class public Lcom/apk/uk$for;
.super Lcom/apk/uk;
.source "DiskCacheStrategy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apk/uk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/apk/uk;-><init>()V

    return-void
.end method


# virtual methods
.method public do()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public for(Lcom/apk/dj;)Z
    .locals 1

    .line 1
    sget-object v0, Lcom/apk/dj;->if:Lcom/apk/dj;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public if()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public new(ZLcom/apk/dj;Lcom/apk/fj;)Z
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    sget-object p1, Lcom/apk/dj;->for:Lcom/apk/dj;

    if-eq p2, p1, :cond_1

    :cond_0
    sget-object p1, Lcom/apk/dj;->do:Lcom/apk/dj;

    if-ne p2, p1, :cond_2

    :cond_1
    sget-object p1, Lcom/apk/fj;->if:Lcom/apk/fj;

    if-ne p3, p1, :cond_2

    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
