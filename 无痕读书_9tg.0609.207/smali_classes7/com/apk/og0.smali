.class public abstract Lcom/apk/og0;
.super Ljava/lang/Object;
.source "EventListener.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apk/og0$if;
    }
.end annotation


# static fields
.field public static final do:Lcom/apk/og0;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/apk/og0$do;

    invoke-direct {v0}, Lcom/apk/og0$do;-><init>()V

    sput-object v0, Lcom/apk/og0;->do:Lcom/apk/og0;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public do(Lcom/apk/zf0;Lcom/apk/fg0;)V
    .locals 1
    .param p1    # Lcom/apk/zf0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/apk/fg0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "call"

    invoke-static {p1, v0}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "connection"

    invoke-static {p2, p1}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public for(Lcom/apk/zf0;Ljava/io/IOException;)V
    .locals 1
    .param p1    # Lcom/apk/zf0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/io/IOException;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "call"

    invoke-static {p1, v0}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "ioe"

    invoke-static {p2, p1}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public if(Lcom/apk/zf0;Ljava/io/IOException;)V
    .locals 1
    .param p1    # Lcom/apk/zf0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/io/IOException;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "call"

    invoke-static {p1, v0}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "ioe"

    invoke-static {p2, p1}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
