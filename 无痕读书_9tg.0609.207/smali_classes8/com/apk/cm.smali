.class public Lcom/apk/cm;
.super Ljava/lang/Object;
.source "DiskLruCacheFactory.java"

# interfaces
.implements Lcom/apk/zl$do;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apk/cm$if;
    }
.end annotation


# instance fields
.field public final do:J

.field public final if:Lcom/apk/cm$if;


# direct methods
.method public constructor <init>(Lcom/apk/cm$if;J)V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-wide p2, p0, Lcom/apk/cm;->do:J

    .line 7
    iput-object p1, p0, Lcom/apk/cm;->if:Lcom/apk/cm$if;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;J)V
    .locals 1

    .line 1
    new-instance v0, Lcom/apk/cm$do;

    invoke-direct {v0, p1}, Lcom/apk/cm$do;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-wide p2, p0, Lcom/apk/cm;->do:J

    .line 4
    iput-object v0, p0, Lcom/apk/cm;->if:Lcom/apk/cm$if;

    return-void
.end method
