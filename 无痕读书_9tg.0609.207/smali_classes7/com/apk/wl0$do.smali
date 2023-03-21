.class public Lcom/apk/wl0$do;
.super Ljava/lang/Object;
.source "MainThreadSupport.java"

# interfaces
.implements Lcom/apk/wl0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apk/wl0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "do"
.end annotation


# instance fields
.field public final do:Landroid/os/Looper;


# direct methods
.method public constructor <init>(Landroid/os/Looper;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/apk/wl0$do;->do:Landroid/os/Looper;

    return-void
.end method
