.class public final Lcom/apk/hh0;
.super Ljava/lang/Object;
.source "Util.kt"

# interfaces
.implements Lcom/apk/og0$if;


# instance fields
.field public final synthetic do:Lcom/apk/og0;


# direct methods
.method public constructor <init>(Lcom/apk/og0;)V
    .locals 0

    iput-object p1, p0, Lcom/apk/hh0;->do:Lcom/apk/og0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final do(Lcom/apk/zf0;)Lcom/apk/og0;
    .locals 1
    .param p1    # Lcom/apk/zf0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Lcom/apk/hh0;->do:Lcom/apk/og0;

    return-object p1
.end method
