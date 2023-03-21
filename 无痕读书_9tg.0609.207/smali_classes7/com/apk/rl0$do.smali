.class public Lcom/apk/rl0$do;
.super Ljava/lang/ThreadLocal;
.source "EventBus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apk/rl0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ThreadLocal<",
        "Lcom/apk/rl0$if;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/apk/rl0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method


# virtual methods
.method public initialValue()Ljava/lang/Object;
    .locals 1

    .line 1
    new-instance v0, Lcom/apk/rl0$if;

    invoke-direct {v0}, Lcom/apk/rl0$if;-><init>()V

    return-object v0
.end method
