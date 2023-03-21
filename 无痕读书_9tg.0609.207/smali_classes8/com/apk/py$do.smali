.class public final Lcom/apk/py$do;
.super Lcom/apk/vk0;
.source "ProgressRequestBody.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apk/py;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "do"
.end annotation


# instance fields
.field public final synthetic for:Lcom/apk/py;

.field public if:Lcom/apk/hy;


# direct methods
.method public constructor <init>(Lcom/apk/py;Lcom/apk/jl0;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/apk/py$do;->for:Lcom/apk/py;

    .line 2
    invoke-direct {p0, p2}, Lcom/apk/vk0;-><init>(Lcom/apk/jl0;)V

    .line 3
    new-instance p2, Lcom/apk/hy;

    invoke-direct {p2}, Lcom/apk/hy;-><init>()V

    iput-object p2, p0, Lcom/apk/py$do;->if:Lcom/apk/hy;

    .line 4
    invoke-virtual {p1}, Lcom/apk/py;->do()J

    move-result-wide v0

    iput-wide v0, p2, Lcom/apk/hy;->else:J

    return-void
.end method


# virtual methods
.method public class(Lcom/apk/rk0;J)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/apk/vk0;->class(Lcom/apk/rk0;J)V

    .line 2
    iget-object v0, p0, Lcom/apk/py$do;->if:Lcom/apk/hy;

    new-instance v5, Lcom/apk/py$do$do;

    invoke-direct {v5, p0}, Lcom/apk/py$do$do;-><init>(Lcom/apk/py$do;)V

    .line 3
    iget-wide v3, v0, Lcom/apk/hy;->else:J

    move-wide v1, p2

    invoke-static/range {v0 .. v5}, Lcom/apk/hy;->do(Lcom/apk/hy;JJLcom/apk/hy$do;)Lcom/apk/hy;

    return-void
.end method
