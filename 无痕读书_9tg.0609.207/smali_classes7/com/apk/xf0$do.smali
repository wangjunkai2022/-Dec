.class public final Lcom/apk/xf0$do;
.super Lcom/apk/dh0;
.source "Cache.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apk/xf0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "do"
.end annotation


# instance fields
.field public final case:Ljava/lang/String;

.field public final for:Lcom/apk/tk0;

.field public final new:Lcom/apk/oh0$if;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final try:Ljava/lang/String;


# virtual methods
.method public extends()Lcom/apk/tk0;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/apk/xf0$do;->for:Lcom/apk/tk0;

    return-object v0
.end method

.method public throw()J
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/apk/xf0$do;->case:Ljava/lang/String;

    const-wide/16 v1, -0x1

    if-eqz v0, :cond_0

    invoke-static {v0, v1, v2}, Lcom/apk/jh0;->volatile(Ljava/lang/String;J)J

    move-result-wide v1

    :cond_0
    return-wide v1
.end method

.method public throws()Lcom/apk/vg0;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/apk/xf0$do;->try:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/apk/vg0;->else:Lcom/apk/vg0$do;

    invoke-static {v0}, Lcom/apk/vg0$do;->if(Ljava/lang/String;)Lcom/apk/vg0;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method
