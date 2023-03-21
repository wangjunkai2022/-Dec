.class public Lcom/apk/sj0;
.super Lcom/apk/uj0;
.source "Jdk9Platform.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apk/sj0$do;
    }
.end annotation


# static fields
.field public static final new:Z

.field public static final try:Lcom/apk/sj0$do;


# direct methods
.method public static constructor <clinit>()V
    .locals 14

    new-instance v0, Lcom/apk/sj0$do;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/apk/sj0$do;-><init>(Lcom/apk/md0;)V

    sput-object v0, Lcom/apk/sj0;->try:Lcom/apk/sj0$do;

    const-string v0, "java.specification.version"

    .line 1
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_9

    const-string v4, "$this$toIntOrNull"

    .line 2
    invoke-static {v0, v4}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-static {v0, v4}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v4, 0xa

    .line 4
    invoke-static {v4}, Lcom/apk/sb0;->while(I)I

    .line 5
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_0

    goto :goto_4

    .line 6
    :cond_0
    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x30

    .line 7
    invoke-static {v6, v7}, Lcom/apk/nd0;->try(II)I

    move-result v7

    const v8, -0x7fffffff

    if-gez v7, :cond_3

    if-ne v5, v2, :cond_1

    goto :goto_4

    :cond_1
    const/16 v7, 0x2d

    if-ne v6, v7, :cond_2

    const/high16 v8, -0x80000000

    const/4 v6, 0x1

    const/4 v7, 0x1

    goto :goto_1

    :cond_2
    const/16 v7, 0x2b

    if-ne v6, v7, :cond_9

    const/4 v6, 0x1

    goto :goto_0

    :cond_3
    const/4 v6, 0x0

    :goto_0
    const/4 v7, 0x0

    :goto_1
    const v9, -0x38e38e3

    const/4 v10, 0x0

    const v11, -0x38e38e3

    :goto_2
    if-ge v6, v5, :cond_7

    .line 8
    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v12

    .line 9
    invoke-static {v12, v4}, Ljava/lang/Character;->digit(II)I

    move-result v12

    if-gez v12, :cond_4

    goto :goto_4

    :cond_4
    if-ge v10, v11, :cond_5

    if-ne v11, v9, :cond_9

    .line 10
    div-int/lit8 v11, v8, 0xa

    if-ge v10, v11, :cond_5

    goto :goto_4

    :cond_5
    mul-int/lit8 v10, v10, 0xa

    add-int v13, v8, v12

    if-ge v10, v13, :cond_6

    goto :goto_4

    :cond_6
    sub-int/2addr v10, v12

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_7
    if-eqz v7, :cond_8

    goto :goto_3

    :cond_8
    neg-int v10, v10

    .line 11
    :goto_3
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object v1, v0

    :cond_9
    :goto_4
    if-eqz v1, :cond_b

    .line 12
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x9

    if-lt v0, v1, :cond_a

    goto :goto_5

    :catch_0
    :cond_a
    const/4 v2, 0x0

    goto :goto_5

    .line 13
    :cond_b
    :try_start_0
    const-class v0, Ljavax/net/ssl/SSLSocket;

    const-string v1, "getApplicationProtocol"

    new-array v4, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    :goto_5
    sput-boolean v2, Lcom/apk/sj0;->new:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/apk/uj0;-><init>()V

    return-void
.end method


# virtual methods
.method public case(Ljavax/net/ssl/SSLSocket;)Ljava/lang/String;
    .locals 1
    .param p1    # Ljavax/net/ssl/SSLSocket;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lokhttp3/internal/SuppressSignatureCheck;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "sslSocket"

    invoke-static {p1, v0}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    :try_start_0
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getApplicationProtocol()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const-string v0, ""

    .line 2
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_2

    :catch_0
    :goto_0
    const/4 p1, 0x0

    :cond_2
    :goto_1
    return-object p1
.end method

.method public new(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;Ljava/util/List;)V
    .locals 5
    .param p1    # Ljavax/net/ssl/SSLSocket;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/net/ssl/SSLSocket;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/apk/yg0;",
            ">;)V"
        }
    .end annotation

    .annotation build Lokhttp3/internal/SuppressSignatureCheck;
    .end annotation

    const-string p2, "sslSocket"

    invoke-static {p1, p2}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "protocols"

    invoke-static {p3, p2}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getSSLParameters()Ljavax/net/ssl/SSLParameters;

    move-result-object v0

    .line 2
    invoke-static {p3, p2}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 4
    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_0
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/apk/yg0;

    .line 5
    sget-object v4, Lcom/apk/yg0;->if:Lcom/apk/yg0;

    if-eq v3, v4, :cond_1

    const/4 v2, 0x1

    :cond_1
    if-eqz v2, :cond_0

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 6
    :cond_2
    new-instance p3, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p2, v1}, Lcom/apk/sb0;->native(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {p3, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 7
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 8
    check-cast v1, Lcom/apk/yg0;

    .line 9
    iget-object v1, v1, Lcom/apk/yg0;->do:Ljava/lang/String;

    .line 10
    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    const-string p2, "sslParameters"

    .line 11
    invoke-static {v0, p2}, Lcom/apk/nd0;->for(Ljava/lang/Object;Ljava/lang/String;)V

    new-array p2, v2, [Ljava/lang/String;

    .line 12
    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_4

    check-cast p2, [Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljavax/net/ssl/SSLParameters;->setApplicationProtocols([Ljava/lang/String;)V

    .line 13
    invoke-virtual {p1, v0}, Ljavax/net/ssl/SSLSocket;->setSSLParameters(Ljavax/net/ssl/SSLParameters;)V

    return-void

    .line 14
    :cond_4
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
