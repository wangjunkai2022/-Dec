.class public final Lcom/apk/ri0$try;
.super Ljava/lang/Object;
.source "Http1ExchangeCodec.kt"

# interfaces
.implements Lcom/apk/jl0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apk/ri0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "try"
.end annotation


# instance fields
.field public final do:Lcom/apk/xk0;

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
    iput-object p1, p0, Lcom/apk/ri0$try;->for:Lcom/apk/ri0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/apk/xk0;

    .line 3
    iget-object p1, p1, Lcom/apk/ri0;->else:Lcom/apk/sk0;

    .line 4
    invoke-interface {p1}, Lcom/apk/jl0;->if()Lcom/apk/ml0;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/apk/xk0;-><init>(Lcom/apk/ml0;)V

    iput-object v0, p0, Lcom/apk/ri0$try;->do:Lcom/apk/xk0;

    return-void
.end method


# virtual methods
.method public class(Lcom/apk/rk0;J)V
    .locals 7
    .param p1    # Lcom/apk/rk0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "source"

    invoke-static {p1, v0}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-boolean v0, p0, Lcom/apk/ri0$try;->if:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 2
    iget-wide v1, p1, Lcom/apk/rk0;->if:J

    const-wide/16 v3, 0x0

    move-wide v5, p2

    .line 3
    invoke-static/range {v1 .. v6}, Lcom/apk/jh0;->try(JJJ)V

    .line 4
    iget-object v0, p0, Lcom/apk/ri0$try;->for:Lcom/apk/ri0;

    .line 5
    iget-object v0, v0, Lcom/apk/ri0;->else:Lcom/apk/sk0;

    .line 6
    invoke-interface {v0, p1, p2, p3}, Lcom/apk/jl0;->class(Lcom/apk/rk0;J)V

    return-void

    .line 7
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public close()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/apk/ri0$try;->if:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/apk/ri0$try;->if:Z

    .line 3
    iget-object v0, p0, Lcom/apk/ri0$try;->for:Lcom/apk/ri0;

    iget-object v1, p0, Lcom/apk/ri0$try;->do:Lcom/apk/xk0;

    invoke-static {v0, v1}, Lcom/apk/ri0;->this(Lcom/apk/ri0;Lcom/apk/xk0;)V

    .line 4
    iget-object v0, p0, Lcom/apk/ri0$try;->for:Lcom/apk/ri0;

    const/4 v1, 0x3

    .line 5
    iput v1, v0, Lcom/apk/ri0;->do:I

    return-void
.end method

.method public flush()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/apk/ri0$try;->if:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/apk/ri0$try;->for:Lcom/apk/ri0;

    .line 3
    iget-object v0, v0, Lcom/apk/ri0;->else:Lcom/apk/sk0;

    .line 4
    invoke-interface {v0}, Lcom/apk/sk0;->flush()V

    return-void
.end method

.method public if()Lcom/apk/ml0;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/apk/ri0$try;->do:Lcom/apk/xk0;

    return-object v0
.end method
