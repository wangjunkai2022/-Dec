.class public final Lcom/apk/jg0;
.super Ljava/lang/Object;
.source "CookieJar.kt"

# interfaces
.implements Lcom/apk/kg0;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public do(Lcom/apk/tg0;Ljava/util/List;)V
    .locals 1
    .param p1    # Lcom/apk/tg0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/apk/tg0;",
            "Ljava/util/List<",
            "Lcom/apk/ig0;",
            ">;)V"
        }
    .end annotation

    const-string v0, "url"

    invoke-static {p1, v0}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "cookies"

    invoke-static {p2, p1}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public if(Lcom/apk/tg0;)Ljava/util/List;
    .locals 1
    .param p1    # Lcom/apk/tg0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/apk/tg0;",
            ")",
            "Ljava/util/List<",
            "Lcom/apk/ig0;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "url"

    invoke-static {p1, v0}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object p1, Lcom/apk/xc0;->do:Lcom/apk/xc0;

    return-object p1
.end method
