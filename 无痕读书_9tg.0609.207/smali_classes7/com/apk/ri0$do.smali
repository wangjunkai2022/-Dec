.class public abstract Lcom/apk/ri0$do;
.super Ljava/lang/Object;
.source "Http1ExchangeCodec.kt"

# interfaces
.implements Lcom/apk/ll0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apk/ri0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "do"
.end annotation


# instance fields
.field public final do:Lcom/apk/xk0;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final synthetic for:Lcom/apk/ri0;

.field public if:Z


# direct methods
.method public constructor <init>(Lcom/apk/ri0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/apk/ri0$do;->for:Lcom/apk/ri0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/apk/xk0;

    .line 3
    iget-object p1, p1, Lcom/apk/ri0;->case:Lcom/apk/tk0;

    .line 4
    invoke-interface {p1}, Lcom/apk/ll0;->if()Lcom/apk/ml0;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/apk/xk0;-><init>(Lcom/apk/ml0;)V

    iput-object v0, p0, Lcom/apk/ri0$do;->do:Lcom/apk/xk0;

    return-void
.end method


# virtual methods
.method public final for()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/apk/ri0$do;->for:Lcom/apk/ri0;

    .line 2
    iget v1, v0, Lcom/apk/ri0;->do:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_0

    return-void

    :cond_0
    const/4 v3, 0x5

    if-ne v1, v3, :cond_1

    .line 3
    iget-object v1, p0, Lcom/apk/ri0$do;->do:Lcom/apk/xk0;

    invoke-static {v0, v1}, Lcom/apk/ri0;->this(Lcom/apk/ri0;Lcom/apk/xk0;)V

    .line 4
    iget-object v0, p0, Lcom/apk/ri0$do;->for:Lcom/apk/ri0;

    .line 5
    iput v2, v0, Lcom/apk/ri0;->do:I

    return-void

    .line 6
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "state: "

    invoke-static {v1}, Lcom/apk/goto;->super(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/apk/ri0$do;->for:Lcom/apk/ri0;

    .line 7
    iget v2, v2, Lcom/apk/ri0;->do:I

    .line 8
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public if()Lcom/apk/ml0;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/apk/ri0$do;->do:Lcom/apk/xk0;

    return-object v0
.end method

.method public import(Lcom/apk/rk0;J)J
    .locals 1
    .param p1    # Lcom/apk/rk0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "sink"

    invoke-static {p1, v0}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/apk/ri0$do;->for:Lcom/apk/ri0;

    .line 2
    iget-object v0, v0, Lcom/apk/ri0;->case:Lcom/apk/tk0;

    .line 3
    invoke-interface {v0, p1, p2, p3}, Lcom/apk/ll0;->import(Lcom/apk/rk0;J)J

    move-result-wide p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p1

    :catch_0
    move-exception p1

    .line 4
    iget-object p2, p0, Lcom/apk/ri0$do;->for:Lcom/apk/ri0;

    .line 5
    iget-object p2, p2, Lcom/apk/ri0;->try:Lcom/apk/bi0;

    .line 6
    invoke-virtual {p2}, Lcom/apk/bi0;->const()V

    .line 7
    invoke-virtual {p0}, Lcom/apk/ri0$do;->for()V

    .line 8
    throw p1
.end method
