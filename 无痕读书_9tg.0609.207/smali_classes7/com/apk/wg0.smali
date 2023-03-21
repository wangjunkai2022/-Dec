.class public final Lcom/apk/wg0;
.super Lcom/apk/bh0;
.source "MultipartBody.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apk/wg0$if;,
        Lcom/apk/wg0$do;
    }
.end annotation


# static fields
.field public static final break:[B

.field public static final catch:[B

.field public static final class:Lcom/apk/wg0$do;

.field public static final else:Lcom/apk/vg0;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final goto:Lcom/apk/vg0;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final this:[B


# instance fields
.field public final case:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/apk/wg0$if;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public for:J

.field public final if:Lcom/apk/vg0;

.field public final new:Lcom/apk/uk0;

.field public final try:Lcom/apk/vg0;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/apk/wg0$do;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/apk/wg0$do;-><init>(Lcom/apk/md0;)V

    sput-object v0, Lcom/apk/wg0;->class:Lcom/apk/wg0$do;

    .line 1
    sget-object v0, Lcom/apk/vg0;->else:Lcom/apk/vg0$do;

    const-string v0, "multipart/mixed"

    invoke-static {v0}, Lcom/apk/vg0$do;->do(Ljava/lang/String;)Lcom/apk/vg0;

    move-result-object v0

    sput-object v0, Lcom/apk/wg0;->else:Lcom/apk/vg0;

    .line 2
    sget-object v0, Lcom/apk/vg0;->else:Lcom/apk/vg0$do;

    const-string v0, "multipart/alternative"

    invoke-static {v0}, Lcom/apk/vg0$do;->do(Ljava/lang/String;)Lcom/apk/vg0;

    .line 3
    sget-object v0, Lcom/apk/vg0;->else:Lcom/apk/vg0$do;

    const-string v0, "multipart/digest"

    invoke-static {v0}, Lcom/apk/vg0$do;->do(Ljava/lang/String;)Lcom/apk/vg0;

    .line 4
    sget-object v0, Lcom/apk/vg0;->else:Lcom/apk/vg0$do;

    const-string v0, "multipart/parallel"

    invoke-static {v0}, Lcom/apk/vg0$do;->do(Ljava/lang/String;)Lcom/apk/vg0;

    .line 5
    sget-object v0, Lcom/apk/vg0;->else:Lcom/apk/vg0$do;

    const-string v0, "multipart/form-data"

    invoke-static {v0}, Lcom/apk/vg0$do;->do(Ljava/lang/String;)Lcom/apk/vg0;

    move-result-object v0

    sput-object v0, Lcom/apk/wg0;->goto:Lcom/apk/vg0;

    const/4 v0, 0x2

    new-array v1, v0, [B

    const/16 v2, 0x3a

    int-to-byte v2, v2

    const/4 v3, 0x0

    aput-byte v2, v1, v3

    const/16 v2, 0x20

    int-to-byte v2, v2

    const/4 v4, 0x1

    aput-byte v2, v1, v4

    .line 6
    sput-object v1, Lcom/apk/wg0;->this:[B

    new-array v1, v0, [B

    const/16 v2, 0xd

    int-to-byte v2, v2

    aput-byte v2, v1, v3

    const/16 v2, 0xa

    int-to-byte v2, v2

    aput-byte v2, v1, v4

    .line 7
    sput-object v1, Lcom/apk/wg0;->break:[B

    new-array v0, v0, [B

    const/16 v1, 0x2d

    int-to-byte v1, v1

    aput-byte v1, v0, v3

    aput-byte v1, v0, v4

    .line 8
    sput-object v0, Lcom/apk/wg0;->catch:[B

    return-void
.end method

.method public constructor <init>(Lcom/apk/uk0;Lcom/apk/vg0;Ljava/util/List;)V
    .locals 1
    .param p1    # Lcom/apk/uk0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/apk/vg0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/apk/uk0;",
            "Lcom/apk/vg0;",
            "Ljava/util/List<",
            "Lcom/apk/wg0$if;",
            ">;)V"
        }
    .end annotation

    const-string v0, "boundaryByteString"

    invoke-static {p1, v0}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "type"

    invoke-static {p2, v0}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "parts"

    invoke-static {p3, v0}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lcom/apk/bh0;-><init>()V

    iput-object p1, p0, Lcom/apk/wg0;->new:Lcom/apk/uk0;

    iput-object p2, p0, Lcom/apk/wg0;->try:Lcom/apk/vg0;

    iput-object p3, p0, Lcom/apk/wg0;->case:Ljava/util/List;

    .line 2
    sget-object p1, Lcom/apk/vg0;->else:Lcom/apk/vg0$do;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p0, Lcom/apk/wg0;->try:Lcom/apk/vg0;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, "; boundary="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    iget-object p2, p0, Lcom/apk/wg0;->new:Lcom/apk/uk0;

    invoke-virtual {p2}, Lcom/apk/uk0;->break()Ljava/lang/String;

    move-result-object p2

    .line 4
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/apk/vg0$do;->do(Ljava/lang/String;)Lcom/apk/vg0;

    move-result-object p1

    iput-object p1, p0, Lcom/apk/wg0;->if:Lcom/apk/vg0;

    const-wide/16 p1, -0x1

    .line 5
    iput-wide p1, p0, Lcom/apk/wg0;->for:J

    return-void
.end method


# virtual methods
.method public do()J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-wide v0, p0, Lcom/apk/wg0;->for:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 2
    invoke-virtual {p0, v0, v1}, Lcom/apk/wg0;->new(Lcom/apk/sk0;Z)J

    move-result-wide v0

    .line 3
    iput-wide v0, p0, Lcom/apk/wg0;->for:J

    :cond_0
    return-wide v0
.end method

.method public for(Lcom/apk/sk0;)V
    .locals 1
    .param p1    # Lcom/apk/sk0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "sink"

    invoke-static {p1, v0}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/apk/wg0;->new(Lcom/apk/sk0;Z)J

    return-void
.end method

.method public if()Lcom/apk/vg0;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/apk/wg0;->if:Lcom/apk/vg0;

    return-object v0
.end method

.method public final new(Lcom/apk/sk0;Z)J
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 1
    new-instance p1, Lcom/apk/rk0;

    invoke-direct {p1}, Lcom/apk/rk0;-><init>()V

    move-object v0, p1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Lcom/apk/wg0;->case:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v1, :cond_6

    .line 3
    iget-object v6, p0, Lcom/apk/wg0;->case:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/apk/wg0$if;

    .line 4
    iget-object v7, v6, Lcom/apk/wg0$if;->do:Lcom/apk/sg0;

    .line 5
    iget-object v6, v6, Lcom/apk/wg0$if;->if:Lcom/apk/bh0;

    .line 6
    invoke-static {p1}, Lcom/apk/nd0;->if(Ljava/lang/Object;)V

    sget-object v8, Lcom/apk/wg0;->catch:[B

    invoke-interface {p1, v8}, Lcom/apk/sk0;->write([B)Lcom/apk/sk0;

    .line 7
    iget-object v8, p0, Lcom/apk/wg0;->new:Lcom/apk/uk0;

    invoke-interface {p1, v8}, Lcom/apk/sk0;->while(Lcom/apk/uk0;)Lcom/apk/sk0;

    .line 8
    sget-object v8, Lcom/apk/wg0;->break:[B

    invoke-interface {p1, v8}, Lcom/apk/sk0;->write([B)Lcom/apk/sk0;

    if-eqz v7, :cond_1

    .line 9
    invoke-virtual {v7}, Lcom/apk/sg0;->size()I

    move-result v8

    const/4 v9, 0x0

    :goto_2
    if-ge v9, v8, :cond_1

    .line 10
    invoke-virtual {v7, v9}, Lcom/apk/sg0;->if(I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {p1, v10}, Lcom/apk/sk0;->this(Ljava/lang/String;)Lcom/apk/sk0;

    move-result-object v10

    .line 11
    sget-object v11, Lcom/apk/wg0;->this:[B

    invoke-interface {v10, v11}, Lcom/apk/sk0;->write([B)Lcom/apk/sk0;

    move-result-object v10

    .line 12
    invoke-virtual {v7, v9}, Lcom/apk/sg0;->new(I)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v11}, Lcom/apk/sk0;->this(Ljava/lang/String;)Lcom/apk/sk0;

    move-result-object v10

    .line 13
    sget-object v11, Lcom/apk/wg0;->break:[B

    invoke-interface {v10, v11}, Lcom/apk/sk0;->write([B)Lcom/apk/sk0;

    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 14
    :cond_1
    invoke-virtual {v6}, Lcom/apk/bh0;->if()Lcom/apk/vg0;

    move-result-object v7

    if-eqz v7, :cond_2

    const-string v8, "Content-Type: "

    .line 15
    invoke-interface {p1, v8}, Lcom/apk/sk0;->this(Ljava/lang/String;)Lcom/apk/sk0;

    move-result-object v8

    .line 16
    iget-object v7, v7, Lcom/apk/vg0;->do:Ljava/lang/String;

    .line 17
    invoke-interface {v8, v7}, Lcom/apk/sk0;->this(Ljava/lang/String;)Lcom/apk/sk0;

    move-result-object v7

    .line 18
    sget-object v8, Lcom/apk/wg0;->break:[B

    invoke-interface {v7, v8}, Lcom/apk/sk0;->write([B)Lcom/apk/sk0;

    .line 19
    :cond_2
    invoke-virtual {v6}, Lcom/apk/bh0;->do()J

    move-result-wide v7

    const-wide/16 v9, -0x1

    cmp-long v11, v7, v9

    if-eqz v11, :cond_3

    const-string v9, "Content-Length: "

    .line 20
    invoke-interface {p1, v9}, Lcom/apk/sk0;->this(Ljava/lang/String;)Lcom/apk/sk0;

    move-result-object v9

    .line 21
    invoke-interface {v9, v7, v8}, Lcom/apk/sk0;->public(J)Lcom/apk/sk0;

    move-result-object v9

    .line 22
    sget-object v10, Lcom/apk/wg0;->break:[B

    invoke-interface {v9, v10}, Lcom/apk/sk0;->write([B)Lcom/apk/sk0;

    goto :goto_3

    :cond_3
    if-eqz p2, :cond_4

    .line 23
    invoke-static {v0}, Lcom/apk/nd0;->if(Ljava/lang/Object;)V

    .line 24
    iget-wide p1, v0, Lcom/apk/rk0;->if:J

    .line 25
    invoke-virtual {v0, p1, p2}, Lcom/apk/rk0;->skip(J)V

    return-wide v9

    .line 26
    :cond_4
    :goto_3
    sget-object v9, Lcom/apk/wg0;->break:[B

    invoke-interface {p1, v9}, Lcom/apk/sk0;->write([B)Lcom/apk/sk0;

    if-eqz p2, :cond_5

    add-long/2addr v3, v7

    goto :goto_4

    .line 27
    :cond_5
    invoke-virtual {v6, p1}, Lcom/apk/bh0;->for(Lcom/apk/sk0;)V

    .line 28
    :goto_4
    sget-object v6, Lcom/apk/wg0;->break:[B

    invoke-interface {p1, v6}, Lcom/apk/sk0;->write([B)Lcom/apk/sk0;

    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1

    .line 29
    :cond_6
    invoke-static {p1}, Lcom/apk/nd0;->if(Ljava/lang/Object;)V

    sget-object v1, Lcom/apk/wg0;->catch:[B

    invoke-interface {p1, v1}, Lcom/apk/sk0;->write([B)Lcom/apk/sk0;

    .line 30
    iget-object v1, p0, Lcom/apk/wg0;->new:Lcom/apk/uk0;

    invoke-interface {p1, v1}, Lcom/apk/sk0;->while(Lcom/apk/uk0;)Lcom/apk/sk0;

    .line 31
    sget-object v1, Lcom/apk/wg0;->catch:[B

    invoke-interface {p1, v1}, Lcom/apk/sk0;->write([B)Lcom/apk/sk0;

    .line 32
    sget-object v1, Lcom/apk/wg0;->break:[B

    invoke-interface {p1, v1}, Lcom/apk/sk0;->write([B)Lcom/apk/sk0;

    if-eqz p2, :cond_7

    .line 33
    invoke-static {v0}, Lcom/apk/nd0;->if(Ljava/lang/Object;)V

    .line 34
    iget-wide p1, v0, Lcom/apk/rk0;->if:J

    add-long/2addr v3, p1

    .line 35
    invoke-virtual {v0, p1, p2}, Lcom/apk/rk0;->skip(J)V

    :cond_7
    return-wide v3
.end method
