.class public Lcom/apk/wj;
.super Ljava/lang/Object;
.source "DataRewinderRegistry.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apk/wj$if;
    }
.end annotation


# static fields
.field public static final if:Lcom/apk/vj$do;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/apk/vj$do<",
            "*>;"
        }
    .end annotation
.end field


# instance fields
.field public final do:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/apk/vj$do<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/apk/wj$do;

    invoke-direct {v0}, Lcom/apk/wj$do;-><init>()V

    sput-object v0, Lcom/apk/wj;->if:Lcom/apk/vj$do;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/apk/wj;->do:Ljava/util/Map;

    return-void
.end method
