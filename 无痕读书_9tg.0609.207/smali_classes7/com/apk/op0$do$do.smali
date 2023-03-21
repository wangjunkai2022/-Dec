.class public Lcom/apk/op0$do$do;
.super Ljava/lang/Object;
.source "IOpenID.java"

# interfaces
.implements Lcom/apk/op0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apk/op0$do;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "do"
.end annotation


# instance fields
.field public do:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/apk/op0$do$do;->do:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/apk/op0$do$do;->do:Landroid/os/IBinder;

    return-object v0
.end method
