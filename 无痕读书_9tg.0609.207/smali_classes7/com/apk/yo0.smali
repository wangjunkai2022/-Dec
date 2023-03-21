.class public abstract Lcom/apk/yo0;
.super Ljava/lang/Object;
.source "Token.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apk/yo0$break;,
        Lcom/apk/yo0$try;,
        Lcom/apk/yo0$goto;,
        Lcom/apk/yo0$else;,
        Lcom/apk/yo0$new;,
        Lcom/apk/yo0$if;,
        Lcom/apk/yo0$for;,
        Lcom/apk/yo0$case;,
        Lcom/apk/yo0$this;
    }
.end annotation


# instance fields
.field public do:Lcom/apk/yo0$break;


# direct methods
.method public constructor <init>(Lcom/apk/yo0$do;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static goto(Ljava/lang/StringBuilder;)V
    .locals 2

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    :cond_0
    return-void
.end method


# virtual methods
.method public final case()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/apk/yo0;->do:Lcom/apk/yo0$break;

    sget-object v1, Lcom/apk/yo0$break;->if:Lcom/apk/yo0$break;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final do()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/apk/yo0;->do:Lcom/apk/yo0$break;

    sget-object v1, Lcom/apk/yo0$break;->try:Lcom/apk/yo0$break;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public abstract else()Lcom/apk/yo0;
.end method

.method public final for()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/apk/yo0;->do:Lcom/apk/yo0$break;

    sget-object v1, Lcom/apk/yo0$break;->do:Lcom/apk/yo0$break;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final if()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/apk/yo0;->do:Lcom/apk/yo0$break;

    sget-object v1, Lcom/apk/yo0$break;->new:Lcom/apk/yo0$break;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final new()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/apk/yo0;->do:Lcom/apk/yo0$break;

    sget-object v1, Lcom/apk/yo0$break;->case:Lcom/apk/yo0$break;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final try()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/apk/yo0;->do:Lcom/apk/yo0$break;

    sget-object v1, Lcom/apk/yo0$break;->for:Lcom/apk/yo0$break;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
