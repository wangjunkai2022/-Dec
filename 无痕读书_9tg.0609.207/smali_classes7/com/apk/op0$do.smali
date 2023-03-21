.class public abstract Lcom/apk/op0$do;
.super Landroid/os/Binder;
.source "IOpenID.java"

# interfaces
.implements Lcom/apk/op0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apk/op0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "do"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apk/op0$do$do;
    }
.end annotation


# direct methods
.method public static do(Landroid/os/IBinder;)Lcom/apk/op0;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.heytap.openid.IOpenID"

    .line 1
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    instance-of v1, v0, Lcom/apk/op0;

    if-eqz v1, :cond_1

    .line 3
    check-cast v0, Lcom/apk/op0;

    return-object v0

    .line 4
    :cond_1
    new-instance v0, Lcom/apk/op0$do$do;

    invoke-direct {v0, p0}, Lcom/apk/op0$do$do;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method
