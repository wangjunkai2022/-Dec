.class public final Lcom/apk/xf0$if;
.super Ljava/lang/Object;
.source "Cache.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apk/xf0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "if"
.end annotation


# static fields
.field public static final catch:Ljava/lang/String;

.field public static final class:Ljava/lang/String;


# instance fields
.field public final break:J

.field public final case:Ljava/lang/String;

.field public final do:Ljava/lang/String;

.field public final else:Lcom/apk/sg0;

.field public final for:Ljava/lang/String;

.field public final goto:Lcom/apk/rg0;

.field public final if:Lcom/apk/sg0;

.field public final new:Lcom/apk/yg0;

.field public final this:J

.field public final try:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    sget-object v0, Lcom/apk/uj0;->for:Lcom/apk/uj0$do;

    .line 2
    sget-object v0, Lcom/apk/uj0;->do:Lcom/apk/uj0;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const-string v0, "OkHttp-Sent-Millis"

    .line 3
    sput-object v0, Lcom/apk/xf0$if;->catch:Ljava/lang/String;

    .line 4
    sget-object v0, Lcom/apk/uj0;->for:Lcom/apk/uj0$do;

    .line 5
    sget-object v0, Lcom/apk/uj0;->do:Lcom/apk/uj0;

    if-eqz v0, :cond_0

    const-string v0, "OkHttp-Received-Millis"

    .line 6
    sput-object v0, Lcom/apk/xf0$if;->class:Ljava/lang/String;

    return-void

    .line 7
    :cond_0
    throw v1

    .line 8
    :cond_1
    throw v1
.end method

.method public constructor <init>(Lcom/apk/ch0;)V
    .locals 7
    .param p1    # Lcom/apk/ch0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "response"

    invoke-static {p1, v0}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iget-object v0, p1, Lcom/apk/ch0;->if:Lcom/apk/zg0;

    .line 3
    iget-object v0, v0, Lcom/apk/zg0;->if:Lcom/apk/tg0;

    .line 4
    iget-object v0, v0, Lcom/apk/tg0;->this:Ljava/lang/String;

    .line 5
    iput-object v0, p0, Lcom/apk/xf0$if;->do:Ljava/lang/String;

    const-string v0, "$this$varyHeaders"

    .line 6
    invoke-static {p1, v0}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    iget-object v0, p1, Lcom/apk/ch0;->this:Lcom/apk/ch0;

    .line 8
    invoke-static {v0}, Lcom/apk/nd0;->if(Ljava/lang/Object;)V

    .line 9
    iget-object v0, v0, Lcom/apk/ch0;->if:Lcom/apk/zg0;

    .line 10
    iget-object v0, v0, Lcom/apk/zg0;->new:Lcom/apk/sg0;

    .line 11
    iget-object v1, p1, Lcom/apk/ch0;->else:Lcom/apk/sg0;

    .line 12
    invoke-static {v1}, Lcom/apk/xf0;->try(Lcom/apk/sg0;)Ljava/util/Set;

    move-result-object v1

    .line 13
    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v0, Lcom/apk/jh0;->if:Lcom/apk/sg0;

    goto :goto_1

    .line 14
    :cond_0
    new-instance v2, Lcom/apk/sg0$do;

    invoke-direct {v2}, Lcom/apk/sg0$do;-><init>()V

    const/4 v3, 0x0

    .line 15
    invoke-virtual {v0}, Lcom/apk/sg0;->size()I

    move-result v4

    :goto_0
    if-ge v3, v4, :cond_2

    .line 16
    invoke-virtual {v0, v3}, Lcom/apk/sg0;->if(I)Ljava/lang/String;

    move-result-object v5

    .line 17
    invoke-interface {v1, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 18
    invoke-virtual {v0, v3}, Lcom/apk/sg0;->new(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lcom/apk/sg0$do;->do(Ljava/lang/String;Ljava/lang/String;)Lcom/apk/sg0$do;

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 19
    :cond_2
    invoke-virtual {v2}, Lcom/apk/sg0$do;->new()Lcom/apk/sg0;

    move-result-object v0

    .line 20
    :goto_1
    iput-object v0, p0, Lcom/apk/xf0$if;->if:Lcom/apk/sg0;

    .line 21
    iget-object v0, p1, Lcom/apk/ch0;->if:Lcom/apk/zg0;

    .line 22
    iget-object v0, v0, Lcom/apk/zg0;->for:Ljava/lang/String;

    .line 23
    iput-object v0, p0, Lcom/apk/xf0$if;->for:Ljava/lang/String;

    .line 24
    iget-object v0, p1, Lcom/apk/ch0;->for:Lcom/apk/yg0;

    .line 25
    iput-object v0, p0, Lcom/apk/xf0$if;->new:Lcom/apk/yg0;

    .line 26
    iget v0, p1, Lcom/apk/ch0;->try:I

    .line 27
    iput v0, p0, Lcom/apk/xf0$if;->try:I

    .line 28
    iget-object v0, p1, Lcom/apk/ch0;->new:Ljava/lang/String;

    .line 29
    iput-object v0, p0, Lcom/apk/xf0$if;->case:Ljava/lang/String;

    .line 30
    iget-object v0, p1, Lcom/apk/ch0;->else:Lcom/apk/sg0;

    .line 31
    iput-object v0, p0, Lcom/apk/xf0$if;->else:Lcom/apk/sg0;

    .line 32
    iget-object v0, p1, Lcom/apk/ch0;->case:Lcom/apk/rg0;

    .line 33
    iput-object v0, p0, Lcom/apk/xf0$if;->goto:Lcom/apk/rg0;

    .line 34
    iget-wide v0, p1, Lcom/apk/ch0;->class:J

    .line 35
    iput-wide v0, p0, Lcom/apk/xf0$if;->this:J

    .line 36
    iget-wide v0, p1, Lcom/apk/ch0;->const:J

    .line 37
    iput-wide v0, p0, Lcom/apk/xf0$if;->break:J

    return-void
.end method
