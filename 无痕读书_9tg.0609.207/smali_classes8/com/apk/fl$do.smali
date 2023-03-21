.class public Lcom/apk/fl$do;
.super Ljava/lang/Object;
.source "LockedResource.java"

# interfaces
.implements Lcom/apk/hs$if;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apk/fl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/apk/hs$if<",
        "Lcom/apk/fl<",
        "*>;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public do()Ljava/lang/Object;
    .locals 1

    .line 1
    new-instance v0, Lcom/apk/fl;

    invoke-direct {v0}, Lcom/apk/fl;-><init>()V

    return-object v0
.end method
