.class public final Lcom/apk/pg0;
.super Lcom/apk/bh0;
.source "FormBody.kt"


# static fields
.field public static final new:Lcom/apk/vg0;


# instance fields
.field public final for:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final if:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lcom/apk/vg0;->else:Lcom/apk/vg0$do;

    const-string v0, "application/x-www-form-urlencoded"

    invoke-static {v0}, Lcom/apk/vg0$do;->do(Ljava/lang/String;)Lcom/apk/vg0;

    move-result-object v0

    sput-object v0, Lcom/apk/pg0;->new:Lcom/apk/vg0;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
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
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "encodedNames"

    invoke-static {p1, v0}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "encodedValues"

    invoke-static {p2, v0}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lcom/apk/bh0;-><init>()V

    .line 2
    invoke-static {p1}, Lcom/apk/jh0;->continue(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/apk/pg0;->if:Ljava/util/List;

    .line 3
    invoke-static {p2}, Lcom/apk/jh0;->continue(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/apk/pg0;->for:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public do()J
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1
    invoke-virtual {p0, v0, v1}, Lcom/apk/pg0;->new(Lcom/apk/sk0;Z)J

    move-result-wide v0

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
    invoke-virtual {p0, p1, v0}, Lcom/apk/pg0;->new(Lcom/apk/sk0;Z)J

    return-void
.end method

.method public if()Lcom/apk/vg0;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/apk/pg0;->new:Lcom/apk/vg0;

    return-object v0
.end method

.method public final new(Lcom/apk/sk0;Z)J
    .locals 3

    if-eqz p2, :cond_0

    .line 1
    new-instance p1, Lcom/apk/rk0;

    invoke-direct {p1}, Lcom/apk/rk0;-><init>()V

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/apk/nd0;->if(Ljava/lang/Object;)V

    invoke-interface {p1}, Lcom/apk/sk0;->do()Lcom/apk/rk0;

    move-result-object p1

    :goto_0
    const/4 v0, 0x0

    .line 2
    iget-object v1, p0, Lcom/apk/pg0;->if:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    :goto_1
    if-ge v0, v1, :cond_2

    if-lez v0, :cond_1

    const/16 v2, 0x26

    .line 3
    invoke-virtual {p1, v2}, Lcom/apk/rk0;->synchronized(I)Lcom/apk/rk0;

    .line 4
    :cond_1
    iget-object v2, p0, Lcom/apk/pg0;->if:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Lcom/apk/rk0;->j(Ljava/lang/String;)Lcom/apk/rk0;

    const/16 v2, 0x3d

    .line 5
    invoke-virtual {p1, v2}, Lcom/apk/rk0;->synchronized(I)Lcom/apk/rk0;

    .line 6
    iget-object v2, p0, Lcom/apk/pg0;->for:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Lcom/apk/rk0;->j(Ljava/lang/String;)Lcom/apk/rk0;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    if-eqz p2, :cond_3

    .line 7
    iget-wide v0, p1, Lcom/apk/rk0;->if:J

    .line 8
    invoke-virtual {p1, v0, v1}, Lcom/apk/rk0;->skip(J)V

    goto :goto_2

    :cond_3
    const-wide/16 v0, 0x0

    :goto_2
    return-wide v0
.end method
