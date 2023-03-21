.class public Lcom/apk/py;
.super Lcom/apk/bh0;
.source "ProgressRequestBody.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apk/py$if;,
        Lcom/apk/py$do;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/apk/bh0;"
    }
.end annotation


# instance fields
.field public for:Lcom/apk/mx;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/apk/mx<",
            "TT;>;"
        }
    .end annotation
.end field

.field public if:Lcom/apk/bh0;

.field public new:Lcom/apk/py$if;


# direct methods
.method public constructor <init>(Lcom/apk/bh0;Lcom/apk/mx;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/apk/bh0;",
            "Lcom/apk/mx<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/apk/bh0;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/apk/py;->if:Lcom/apk/bh0;

    .line 3
    iput-object p2, p0, Lcom/apk/py;->for:Lcom/apk/mx;

    return-void
.end method


# virtual methods
.method public do()J
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/apk/py;->if:Lcom/apk/bh0;

    invoke-virtual {v0}, Lcom/apk/bh0;->do()J

    move-result-wide v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception v0

    .line 2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public for(Lcom/apk/sk0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/apk/py$do;

    invoke-direct {v0, p0, p1}, Lcom/apk/py$do;-><init>(Lcom/apk/py;Lcom/apk/jl0;)V

    .line 2
    invoke-static {v0}, Lcom/apk/sb0;->catch(Lcom/apk/jl0;)Lcom/apk/sk0;

    move-result-object p1

    .line 3
    iget-object v0, p0, Lcom/apk/py;->if:Lcom/apk/bh0;

    invoke-virtual {v0, p1}, Lcom/apk/bh0;->for(Lcom/apk/sk0;)V

    .line 4
    check-cast p1, Lcom/apk/el0;

    invoke-virtual {p1}, Lcom/apk/el0;->flush()V

    return-void
.end method

.method public if()Lcom/apk/vg0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/apk/py;->if:Lcom/apk/bh0;

    invoke-virtual {v0}, Lcom/apk/bh0;->if()Lcom/apk/vg0;

    move-result-object v0

    return-object v0
.end method
