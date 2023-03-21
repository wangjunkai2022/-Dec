.class public final Lcom/apk/ei0;
.super Ljava/lang/RuntimeException;
.source "RouteException.kt"


# instance fields
.field public do:Ljava/io/IOException;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final if:Ljava/io/IOException;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/io/IOException;)V
    .locals 1
    .param p1    # Ljava/io/IOException;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "firstConnectException"

    invoke-static {p1, v0}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    iput-object p1, p0, Lcom/apk/ei0;->if:Ljava/io/IOException;

    .line 2
    iput-object p1, p0, Lcom/apk/ei0;->do:Ljava/io/IOException;

    return-void
.end method
