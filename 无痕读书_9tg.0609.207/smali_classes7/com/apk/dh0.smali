.class public abstract Lcom/apk/dh0;
.super Ljava/lang/Object;
.source "ResponseBody.kt"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apk/dh0$do;,
        Lcom/apk/dh0$if;
    }
.end annotation


# static fields
.field public static final if:Lcom/apk/dh0$if;


# instance fields
.field public do:Ljava/io/Reader;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/apk/dh0$if;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/apk/dh0$if;-><init>(Lcom/apk/md0;)V

    sput-object v0, Lcom/apk/dh0;->if:Lcom/apk/dh0$if;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final default(Lcom/apk/vg0;[B)Lcom/apk/dh0;
    .locals 3
    .param p0    # Lcom/apk/vg0;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p1    # [B
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lcom/apk/hc0;->do:Lcom/apk/hc0;
        message = "Moved to extension function. Put the \'content\' argument first to fix Java"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "content.toResponseBody(contentType)"
            imports = {
                "okhttp3.ResponseBody.Companion.toResponseBody"
            }
        .end subannotation
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "content"

    .line 1
    invoke-static {p1, v0}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$this$toResponseBody"

    .line 2
    invoke-static {p1, v0}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    new-instance v0, Lcom/apk/rk0;

    invoke-direct {v0}, Lcom/apk/rk0;-><init>()V

    .line 4
    invoke-virtual {v0, p1}, Lcom/apk/rk0;->implements([B)Lcom/apk/rk0;

    .line 5
    array-length p1, p1

    int-to-long v1, p1

    const-string p1, "$this$asResponseBody"

    .line 6
    invoke-static {v0, p1}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    new-instance p1, Lcom/apk/eh0;

    invoke-direct {p1, v0, p0, v1, v2}, Lcom/apk/eh0;-><init>(Lcom/apk/tk0;Lcom/apk/vg0;J)V

    return-object p1
.end method


# virtual methods
.method public final break()Ljava/io/Reader;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/apk/dh0;->do:Ljava/io/Reader;

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    new-instance v0, Lcom/apk/dh0$do;

    invoke-virtual {p0}, Lcom/apk/dh0;->extends()Lcom/apk/tk0;

    move-result-object v1

    .line 2
    invoke-virtual {p0}, Lcom/apk/dh0;->throws()Lcom/apk/vg0;

    move-result-object v2

    if-eqz v2, :cond_1

    sget-object v3, Lcom/apk/ee0;->do:Ljava/nio/charset/Charset;

    invoke-virtual {v2, v3}, Lcom/apk/vg0;->do(Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;

    move-result-object v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    sget-object v2, Lcom/apk/ee0;->do:Ljava/nio/charset/Charset;

    .line 3
    :goto_0
    invoke-direct {v0, v1, v2}, Lcom/apk/dh0$do;-><init>(Lcom/apk/tk0;Ljava/nio/charset/Charset;)V

    .line 4
    iput-object v0, p0, Lcom/apk/dh0;->do:Ljava/io/Reader;

    :goto_1
    return-object v0
.end method

.method public close()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/apk/dh0;->extends()Lcom/apk/tk0;

    move-result-object v0

    invoke-static {v0}, Lcom/apk/jh0;->case(Ljava/io/Closeable;)V

    return-void
.end method

.method public abstract extends()Lcom/apk/tk0;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public final finally()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/apk/dh0;->extends()Lcom/apk/tk0;

    move-result-object v0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lcom/apk/dh0;->throws()Lcom/apk/vg0;

    move-result-object v1

    if-eqz v1, :cond_0

    sget-object v2, Lcom/apk/ee0;->do:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v2}, Lcom/apk/vg0;->do(Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;

    move-result-object v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/apk/ee0;->do:Ljava/nio/charset/Charset;

    .line 3
    :goto_0
    invoke-static {v0, v1}, Lcom/apk/jh0;->default(Lcom/apk/tk0;Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/apk/tk0;->catch(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    .line 4
    invoke-static {v0, v2}, Lcom/apk/sb0;->import(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v1

    :catchall_0
    move-exception v1

    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v2

    invoke-static {v0, v1}, Lcom/apk/sb0;->import(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public final for()Ljava/io/InputStream;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/apk/dh0;->extends()Lcom/apk/tk0;

    move-result-object v0

    invoke-interface {v0}, Lcom/apk/tk0;->static()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public abstract throw()J
.end method

.method public abstract throws()Lcom/apk/vg0;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public final try()[B
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/apk/dh0;->throw()J

    move-result-wide v0

    const v2, 0x7fffffff

    int-to-long v2, v2

    cmp-long v4, v0, v2

    if-gtz v4, :cond_2

    .line 2
    invoke-virtual {p0}, Lcom/apk/dh0;->extends()Lcom/apk/tk0;

    move-result-object v2

    const/4 v3, 0x0

    .line 3
    :try_start_0
    invoke-interface {v2}, Lcom/apk/tk0;->case()[B

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v2, v3}, Lcom/apk/sb0;->import(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    array-length v2, v4

    const-wide/16 v5, -0x1

    cmp-long v3, v0, v5

    if-eqz v3, :cond_1

    int-to-long v5, v2

    cmp-long v3, v0, v5

    if-nez v3, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Content-Length ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ") and stream length ("

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ") disagree"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_1
    :goto_0
    return-object v4

    :catchall_0
    move-exception v0

    .line 5
    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v1

    invoke-static {v2, v0}, Lcom/apk/sb0;->import(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v1

    .line 6
    :cond_2
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Cannot buffer entire body for content length: "

    invoke-static {v3, v0, v1}, Lcom/apk/goto;->for(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
