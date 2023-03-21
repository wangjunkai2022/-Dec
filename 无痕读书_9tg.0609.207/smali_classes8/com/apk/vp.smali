.class public Lcom/apk/vp;
.super Ljava/lang/Object;
.source "UnitTranscoder.java"

# interfaces
.implements Lcom/apk/tp;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Z:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/apk/tp<",
        "TZ;TZ;>;"
    }
.end annotation


# static fields
.field public static final do:Lcom/apk/vp;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/apk/vp<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/apk/vp;

    invoke-direct {v0}, Lcom/apk/vp;-><init>()V

    sput-object v0, Lcom/apk/vp;->do:Lcom/apk/vp;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public do(Lcom/apk/gl;Lcom/apk/mj;)Lcom/apk/gl;
    .locals 0
    .param p1    # Lcom/apk/gl;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/apk/mj;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/apk/gl<",
            "TZ;>;",
            "Lcom/apk/mj;",
            ")",
            "Lcom/apk/gl<",
            "TZ;>;"
        }
    .end annotation

    return-object p1
.end method
