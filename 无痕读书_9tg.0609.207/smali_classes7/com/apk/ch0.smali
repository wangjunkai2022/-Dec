.class public final Lcom/apk/ch0;
.super Ljava/lang/Object;
.source "Response.kt"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apk/ch0$do;
    }
.end annotation


# instance fields
.field public final break:Lcom/apk/ch0;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final case:Lcom/apk/rg0;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final catch:Lcom/apk/ch0;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final class:J

.field public final const:J

.field public do:Lcom/apk/yf0;

.field public final else:Lcom/apk/sg0;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final final:Lcom/apk/vh0;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final for:Lcom/apk/yg0;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final goto:Lcom/apk/dh0;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final if:Lcom/apk/zg0;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final new:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final this:Lcom/apk/ch0;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final try:I


# direct methods
.method public constructor <init>(Lcom/apk/zg0;Lcom/apk/yg0;Ljava/lang/String;ILcom/apk/rg0;Lcom/apk/sg0;Lcom/apk/dh0;Lcom/apk/ch0;Lcom/apk/ch0;Lcom/apk/ch0;JJLcom/apk/vh0;)V
    .locals 6
    .param p1    # Lcom/apk/zg0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/apk/yg0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Lcom/apk/rg0;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p6    # Lcom/apk/sg0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p7    # Lcom/apk/dh0;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p8    # Lcom/apk/ch0;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p9    # Lcom/apk/ch0;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p10    # Lcom/apk/ch0;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p15    # Lcom/apk/vh0;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p6

    const-string v5, "request"

    invoke-static {p1, v5}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "protocol"

    invoke-static {p2, v5}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "message"

    invoke-static {p3, v5}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "headers"

    invoke-static {p6, v5}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Lcom/apk/ch0;->if:Lcom/apk/zg0;

    iput-object v2, v0, Lcom/apk/ch0;->for:Lcom/apk/yg0;

    iput-object v3, v0, Lcom/apk/ch0;->new:Ljava/lang/String;

    move v1, p4

    iput v1, v0, Lcom/apk/ch0;->try:I

    move-object v1, p5

    iput-object v1, v0, Lcom/apk/ch0;->case:Lcom/apk/rg0;

    iput-object v4, v0, Lcom/apk/ch0;->else:Lcom/apk/sg0;

    move-object v1, p7

    iput-object v1, v0, Lcom/apk/ch0;->goto:Lcom/apk/dh0;

    move-object v1, p8

    iput-object v1, v0, Lcom/apk/ch0;->this:Lcom/apk/ch0;

    move-object v1, p9

    iput-object v1, v0, Lcom/apk/ch0;->break:Lcom/apk/ch0;

    move-object/from16 v1, p10

    iput-object v1, v0, Lcom/apk/ch0;->catch:Lcom/apk/ch0;

    move-wide/from16 v1, p11

    iput-wide v1, v0, Lcom/apk/ch0;->class:J

    move-wide/from16 v1, p13

    iput-wide v1, v0, Lcom/apk/ch0;->const:J

    move-object/from16 v1, p15

    iput-object v1, v0, Lcom/apk/ch0;->final:Lcom/apk/vh0;

    return-void
.end method

.method public static break(Lcom/apk/ch0;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 0

    and-int/lit8 p2, p3, 0x2

    const/4 p2, 0x0

    if-eqz p0, :cond_1

    const-string p3, "name"

    .line 1
    invoke-static {p1, p3}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object p0, p0, Lcom/apk/ch0;->else:Lcom/apk/sg0;

    invoke-virtual {p0, p1}, Lcom/apk/sg0;->do(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    move-object p2, p0

    :cond_0
    return-object p2

    .line 3
    :cond_1
    throw p2
.end method


# virtual methods
.method public close()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/apk/ch0;->goto:Lcom/apk/dh0;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/apk/dh0;->close()V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "response is not eligible for a body and must not be closed"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final for()Lcom/apk/yf0;
    .locals 2
    .annotation build Lkotlin/jvm/JvmName;
        name = "cacheControl"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/apk/ch0;->do:Lcom/apk/yf0;

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lcom/apk/yf0;->final:Lcom/apk/yf0$do;

    iget-object v1, p0, Lcom/apk/ch0;->else:Lcom/apk/sg0;

    invoke-virtual {v0, v1}, Lcom/apk/yf0$do;->if(Lcom/apk/sg0;)Lcom/apk/yf0;

    move-result-object v0

    .line 3
    iput-object v0, p0, Lcom/apk/ch0;->do:Lcom/apk/yf0;

    :cond_0
    return-object v0
.end method

.method public final throw()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/apk/ch0;->try:I

    const/16 v1, 0xc8

    if-le v1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 v1, 0x12b

    if-lt v1, v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "Response{protocol="

    .line 1
    invoke-static {v0}, Lcom/apk/goto;->super(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/apk/ch0;->for:Lcom/apk/yg0;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", code="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/apk/ch0;->try:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", message="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/apk/ch0;->new:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/apk/ch0;->if:Lcom/apk/zg0;

    .line 2
    iget-object v1, v1, Lcom/apk/zg0;->if:Lcom/apk/tg0;

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final try(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-static {p0, p1, v0, v1}, Lcom/apk/ch0;->break(Lcom/apk/ch0;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
