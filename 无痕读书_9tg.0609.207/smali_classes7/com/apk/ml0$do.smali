.class public final Lcom/apk/ml0$do;
.super Lcom/apk/ml0;
.source "Timeout.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apk/ml0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/apk/ml0;-><init>()V

    return-void
.end method


# virtual methods
.method public case()V
    .locals 0

    return-void
.end method

.method public else(JLjava/util/concurrent/TimeUnit;)Lcom/apk/ml0;
    .locals 0
    .param p3    # Ljava/util/concurrent/TimeUnit;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p1, "unit"

    invoke-static {p3, p1}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public new(J)Lcom/apk/ml0;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    return-object p0
.end method
