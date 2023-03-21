.class public final Lcom/apk/xi0$if;
.super Ljava/lang/Object;
.source "Http2Connection.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apk/xi0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "if"
.end annotation


# instance fields
.field public case:Lcom/apk/kj0;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public do:Ljava/net/Socket;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public else:I

.field public for:Lcom/apk/tk0;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public goto:Z

.field public if:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public new:Lcom/apk/sk0;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final this:Lcom/apk/sh0;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public try:Lcom/apk/xi0$for;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(ZLcom/apk/sh0;)V
    .locals 1
    .param p2    # Lcom/apk/sh0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "taskRunner"

    invoke-static {p2, v0}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/apk/xi0$if;->goto:Z

    iput-object p2, p0, Lcom/apk/xi0$if;->this:Lcom/apk/sh0;

    .line 2
    sget-object p1, Lcom/apk/xi0$for;->do:Lcom/apk/xi0$for;

    iput-object p1, p0, Lcom/apk/xi0$if;->try:Lcom/apk/xi0$for;

    .line 3
    sget-object p1, Lcom/apk/kj0;->do:Lcom/apk/kj0;

    iput-object p1, p0, Lcom/apk/xi0$if;->case:Lcom/apk/kj0;

    return-void
.end method
