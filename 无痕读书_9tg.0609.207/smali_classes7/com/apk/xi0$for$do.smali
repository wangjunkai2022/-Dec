.class public final Lcom/apk/xi0$for$do;
.super Lcom/apk/xi0$for;
.source "Http2Connection.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apk/xi0$for;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/apk/xi0$for;-><init>()V

    return-void
.end method


# virtual methods
.method public for(Lcom/apk/gj0;)V
    .locals 2
    .param p1    # Lcom/apk/gj0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "stream"

    invoke-static {p1, v0}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcom/apk/ti0;->case:Lcom/apk/ti0;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/apk/gj0;->for(Lcom/apk/ti0;Ljava/io/IOException;)V

    return-void
.end method
