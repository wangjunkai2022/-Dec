.class public Lcom/apk/ch0$do;
.super Ljava/lang/Object;
.source "Response.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apk/ch0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "do"
.end annotation


# instance fields
.field public break:Lcom/apk/ch0;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public case:Lcom/apk/sg0$do;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public catch:J

.field public class:J

.field public const:Lcom/apk/vh0;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public do:Lcom/apk/zg0;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public else:Lcom/apk/dh0;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public for:I

.field public goto:Lcom/apk/ch0;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public if:Lcom/apk/yg0;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public new:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public this:Lcom/apk/ch0;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public try:Lcom/apk/rg0;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/apk/ch0$do;->for:I

    .line 3
    new-instance v0, Lcom/apk/sg0$do;

    invoke-direct {v0}, Lcom/apk/sg0$do;-><init>()V

    iput-object v0, p0, Lcom/apk/ch0$do;->case:Lcom/apk/sg0$do;

    return-void
.end method

.method public constructor <init>(Lcom/apk/ch0;)V
    .locals 2
    .param p1    # Lcom/apk/ch0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "response"

    invoke-static {p1, v0}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lcom/apk/ch0$do;->for:I

    .line 6
    iget-object v0, p1, Lcom/apk/ch0;->if:Lcom/apk/zg0;

    .line 7
    iput-object v0, p0, Lcom/apk/ch0$do;->do:Lcom/apk/zg0;

    .line 8
    iget-object v0, p1, Lcom/apk/ch0;->for:Lcom/apk/yg0;

    .line 9
    iput-object v0, p0, Lcom/apk/ch0$do;->if:Lcom/apk/yg0;

    .line 10
    iget v0, p1, Lcom/apk/ch0;->try:I

    .line 11
    iput v0, p0, Lcom/apk/ch0$do;->for:I

    .line 12
    iget-object v0, p1, Lcom/apk/ch0;->new:Ljava/lang/String;

    .line 13
    iput-object v0, p0, Lcom/apk/ch0$do;->new:Ljava/lang/String;

    .line 14
    iget-object v0, p1, Lcom/apk/ch0;->case:Lcom/apk/rg0;

    .line 15
    iput-object v0, p0, Lcom/apk/ch0$do;->try:Lcom/apk/rg0;

    .line 16
    iget-object v0, p1, Lcom/apk/ch0;->else:Lcom/apk/sg0;

    .line 17
    invoke-virtual {v0}, Lcom/apk/sg0;->for()Lcom/apk/sg0$do;

    move-result-object v0

    iput-object v0, p0, Lcom/apk/ch0$do;->case:Lcom/apk/sg0$do;

    .line 18
    iget-object v0, p1, Lcom/apk/ch0;->goto:Lcom/apk/dh0;

    .line 19
    iput-object v0, p0, Lcom/apk/ch0$do;->else:Lcom/apk/dh0;

    .line 20
    iget-object v0, p1, Lcom/apk/ch0;->this:Lcom/apk/ch0;

    .line 21
    iput-object v0, p0, Lcom/apk/ch0$do;->goto:Lcom/apk/ch0;

    .line 22
    iget-object v0, p1, Lcom/apk/ch0;->break:Lcom/apk/ch0;

    .line 23
    iput-object v0, p0, Lcom/apk/ch0$do;->this:Lcom/apk/ch0;

    .line 24
    iget-object v0, p1, Lcom/apk/ch0;->catch:Lcom/apk/ch0;

    .line 25
    iput-object v0, p0, Lcom/apk/ch0$do;->break:Lcom/apk/ch0;

    .line 26
    iget-wide v0, p1, Lcom/apk/ch0;->class:J

    .line 27
    iput-wide v0, p0, Lcom/apk/ch0$do;->catch:J

    .line 28
    iget-wide v0, p1, Lcom/apk/ch0;->const:J

    .line 29
    iput-wide v0, p0, Lcom/apk/ch0$do;->class:J

    .line 30
    iget-object p1, p1, Lcom/apk/ch0;->final:Lcom/apk/vh0;

    .line 31
    iput-object p1, p0, Lcom/apk/ch0$do;->const:Lcom/apk/vh0;

    return-void
.end method


# virtual methods
.method public case(Lcom/apk/yg0;)Lcom/apk/ch0$do;
    .locals 1
    .param p1    # Lcom/apk/yg0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "protocol"

    invoke-static {p1, v0}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/apk/ch0$do;->if:Lcom/apk/yg0;

    return-object p0
.end method

.method public do()Lcom/apk/ch0;
    .locals 19
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    move-object/from16 v0, p0

    .line 1
    iget v1, v0, Lcom/apk/ch0$do;->for:I

    if-ltz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_4

    .line 2
    iget-object v3, v0, Lcom/apk/ch0$do;->do:Lcom/apk/zg0;

    if-eqz v3, :cond_3

    .line 3
    iget-object v4, v0, Lcom/apk/ch0$do;->if:Lcom/apk/yg0;

    if-eqz v4, :cond_2

    .line 4
    iget-object v5, v0, Lcom/apk/ch0$do;->new:Ljava/lang/String;

    if-eqz v5, :cond_1

    .line 5
    iget v6, v0, Lcom/apk/ch0$do;->for:I

    .line 6
    iget-object v7, v0, Lcom/apk/ch0$do;->try:Lcom/apk/rg0;

    .line 7
    iget-object v1, v0, Lcom/apk/ch0$do;->case:Lcom/apk/sg0$do;

    invoke-virtual {v1}, Lcom/apk/sg0$do;->new()Lcom/apk/sg0;

    move-result-object v8

    .line 8
    iget-object v9, v0, Lcom/apk/ch0$do;->else:Lcom/apk/dh0;

    .line 9
    iget-object v10, v0, Lcom/apk/ch0$do;->goto:Lcom/apk/ch0;

    .line 10
    iget-object v11, v0, Lcom/apk/ch0$do;->this:Lcom/apk/ch0;

    .line 11
    iget-object v12, v0, Lcom/apk/ch0$do;->break:Lcom/apk/ch0;

    .line 12
    iget-wide v13, v0, Lcom/apk/ch0$do;->catch:J

    .line 13
    iget-wide v1, v0, Lcom/apk/ch0$do;->class:J

    .line 14
    iget-object v15, v0, Lcom/apk/ch0$do;->const:Lcom/apk/vh0;

    .line 15
    new-instance v18, Lcom/apk/ch0;

    move-wide/from16 v16, v1

    move-object/from16 v2, v18

    move-object v1, v15

    move-wide/from16 v15, v16

    move-object/from16 v17, v1

    invoke-direct/range {v2 .. v17}, Lcom/apk/ch0;-><init>(Lcom/apk/zg0;Lcom/apk/yg0;Ljava/lang/String;ILcom/apk/rg0;Lcom/apk/sg0;Lcom/apk/dh0;Lcom/apk/ch0;Lcom/apk/ch0;Lcom/apk/ch0;JJLcom/apk/vh0;)V

    return-object v18

    .line 16
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "message == null"

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 17
    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "protocol == null"

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 18
    :cond_3
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "request == null"

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4
    const-string v1, "code < 0: "

    .line 19
    invoke-static {v1}, Lcom/apk/goto;->super(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/apk/ch0$do;->for:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public else(Lcom/apk/zg0;)Lcom/apk/ch0$do;
    .locals 1
    .param p1    # Lcom/apk/zg0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "request"

    invoke-static {p1, v0}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/apk/ch0$do;->do:Lcom/apk/zg0;

    return-object p0
.end method

.method public final for(Ljava/lang/String;Lcom/apk/ch0;)V
    .locals 2

    if-eqz p2, :cond_8

    .line 1
    iget-object v0, p2, Lcom/apk/ch0;->goto:Lcom/apk/dh0;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_7

    .line 2
    iget-object v0, p2, Lcom/apk/ch0;->this:Lcom/apk/ch0;

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_6

    .line 3
    iget-object v0, p2, Lcom/apk/ch0;->break:Lcom/apk/ch0;

    if-nez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    if-eqz v0, :cond_5

    .line 4
    iget-object p2, p2, Lcom/apk/ch0;->catch:Lcom/apk/ch0;

    if-nez p2, :cond_3

    const/4 v1, 0x1

    :cond_3
    if-eqz v1, :cond_4

    goto :goto_3

    :cond_4
    const-string p2, ".priorResponse != null"

    .line 5
    invoke-static {p1, p2}, Lcom/apk/goto;->case(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_5
    const-string p2, ".cacheResponse != null"

    .line 6
    invoke-static {p1, p2}, Lcom/apk/goto;->case(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_6
    const-string p2, ".networkResponse != null"

    .line 7
    invoke-static {p1, p2}, Lcom/apk/goto;->case(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_7
    const-string p2, ".body != null"

    .line 8
    invoke-static {p1, p2}, Lcom/apk/goto;->case(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_8
    :goto_3
    return-void
.end method

.method public if(Lcom/apk/ch0;)Lcom/apk/ch0$do;
    .locals 1
    .param p1    # Lcom/apk/ch0;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "cacheResponse"

    .line 1
    invoke-virtual {p0, v0, p1}, Lcom/apk/ch0$do;->for(Ljava/lang/String;Lcom/apk/ch0;)V

    .line 2
    iput-object p1, p0, Lcom/apk/ch0$do;->this:Lcom/apk/ch0;

    return-object p0
.end method

.method public new(Lcom/apk/sg0;)Lcom/apk/ch0$do;
    .locals 1
    .param p1    # Lcom/apk/sg0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "headers"

    invoke-static {p1, v0}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Lcom/apk/sg0;->for()Lcom/apk/sg0$do;

    move-result-object p1

    iput-object p1, p0, Lcom/apk/ch0$do;->case:Lcom/apk/sg0$do;

    return-object p0
.end method

.method public try(Ljava/lang/String;)Lcom/apk/ch0$do;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "message"

    invoke-static {p1, v0}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/apk/ch0$do;->new:Ljava/lang/String;

    return-object p0
.end method
