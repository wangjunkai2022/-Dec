.class public final Lcom/apk/wg0$if;
.super Ljava/lang/Object;
.source "MultipartBody.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apk/wg0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "if"
.end annotation


# instance fields
.field public final do:Lcom/apk/sg0;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final if:Lcom/apk/bh0;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/apk/sg0;Lcom/apk/bh0;Lcom/apk/md0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/apk/wg0$if;->do:Lcom/apk/sg0;

    iput-object p2, p0, Lcom/apk/wg0$if;->if:Lcom/apk/bh0;

    return-void
.end method

.method public static final do(Ljava/lang/String;Ljava/lang/String;Lcom/apk/bh0;)Lcom/apk/wg0$if;
    .locals 11
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/apk/bh0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "name"

    invoke-static {p0, v0}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "body"

    invoke-static {p2, v1}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "form-data; name="

    .line 2
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    sget-object v3, Lcom/apk/wg0;->class:Lcom/apk/wg0$do;

    invoke-virtual {v3, v2, p0}, Lcom/apk/wg0$do;->do(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    const-string p0, "; filename="

    .line 4
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    sget-object p0, Lcom/apk/wg0;->class:Lcom/apk/wg0$do;

    invoke-virtual {p0, v2, p1}, Lcom/apk/wg0$do;->do(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 6
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "StringBuilder().apply(builderAction).toString()"

    invoke-static {p0, p1}, Lcom/apk/nd0;->for(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    new-instance p1, Ljava/util/ArrayList;

    const/16 v2, 0x14

    invoke-direct {p1, v2}, Ljava/util/ArrayList;-><init>(I)V

    const-string v2, "Content-Disposition"

    .line 8
    invoke-static {v2, v0}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "value"

    invoke-static {p0, v3}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v4, 0x13

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    const/4 v7, 0x1

    if-ge v6, v4, :cond_4

    .line 9
    invoke-virtual {v2, v6}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0x7e

    const/16 v10, 0x21

    if-le v10, v8, :cond_1

    goto :goto_1

    :cond_1
    if-lt v9, v8, :cond_2

    const/4 v9, 0x1

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v9, 0x0

    :goto_2
    if-eqz v9, :cond_3

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_3
    const/4 p0, 0x3

    new-array p0, p0, [Ljava/lang/Object;

    .line 10
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p0, v5

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p0, v7

    const/4 p1, 0x2

    aput-object v2, p0, p1

    const-string p1, "Unexpected char %#04x at %d in header name: %s"

    invoke-static {p1, p0}, Lcom/apk/jh0;->class(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 11
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 12
    :cond_4
    invoke-static {v2, v0}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, v3}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 14
    invoke-static {p0}, Lcom/apk/ie0;->throws(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 15
    new-instance p0, Lcom/apk/sg0;

    new-array v0, v5, [Ljava/lang/String;

    .line 16
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_9

    check-cast p1, [Ljava/lang/String;

    const/4 v0, 0x0

    .line 17
    invoke-direct {p0, p1, v0}, Lcom/apk/sg0;-><init>([Ljava/lang/String;Lcom/apk/md0;)V

    .line 18
    invoke-static {p2, v1}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "Content-Type"

    .line 19
    invoke-virtual {p0, p1}, Lcom/apk/sg0;->do(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_5

    const/4 p1, 0x1

    goto :goto_3

    :cond_5
    const/4 p1, 0x0

    :goto_3
    if-eqz p1, :cond_8

    const-string p1, "Content-Length"

    .line 20
    invoke-virtual {p0, p1}, Lcom/apk/sg0;->do(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_6

    const/4 v5, 0x1

    :cond_6
    if-eqz v5, :cond_7

    .line 21
    new-instance p1, Lcom/apk/wg0$if;

    invoke-direct {p1, p0, p2, v0}, Lcom/apk/wg0$if;-><init>(Lcom/apk/sg0;Lcom/apk/bh0;Lcom/apk/md0;)V

    return-object p1

    .line 22
    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Unexpected header: Content-Length"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 23
    :cond_8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Unexpected header: Content-Type"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 24
    :cond_9
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
