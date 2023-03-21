.class public Lcom/apk/db0;
.super Lcom/apk/mx;
.source "TrDanMuStringCallback.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/apk/mx<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field public final do:Lcom/apk/ox;

.field public if:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/apk/mx;-><init>()V

    .line 2
    new-instance v0, Lcom/apk/ox;

    invoke-direct {v0}, Lcom/apk/ox;-><init>()V

    iput-object v0, p0, Lcom/apk/db0;->do:Lcom/apk/ox;

    return-void
.end method


# virtual methods
.method public convertResponse(Lcom/apk/ch0;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/apk/db0;->do:Lcom/apk/ox;

    invoke-virtual {v0, p1}, Lcom/apk/ox;->do(Lcom/apk/ch0;)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Lcom/apk/ch0;->close()V

    return-object v0
.end method

.method public onStart(Lcom/apk/qy;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/apk/qy<",
            "Ljava/lang/String;",
            "+",
            "Lcom/apk/qy;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/apk/mx;->onStart(Lcom/apk/qy;)V

    .line 2
    iget-object v0, p1, Lcom/apk/qy;->do:Ljava/lang/String;

    .line 3
    iput-object v0, p0, Lcom/apk/db0;->if:Ljava/lang/String;

    .line 4
    invoke-static {}, Lcom/apk/jb0;->for()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Bearer "

    .line 5
    invoke-static {v0}, Lcom/apk/goto;->super(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/apk/jb0;->for()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 6
    iget-object p1, p1, Lcom/apk/qy;->break:Lcom/apk/fy;

    const-string v1, "Authorization"

    invoke-virtual {p1, v1, v0}, Lcom/apk/fy;->for(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onSuccess(Lcom/apk/iy;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/apk/iy<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1}, Lcom/apk/iy;->do()I

    move-result p1

    const/16 v0, 0x191

    if-ne p1, v0, :cond_0

    .line 2
    invoke-static {}, Lcom/apk/fa0;->final()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/apk/fa0;->new(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3
    iget-object v0, p0, Lcom/apk/db0;->if:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 4
    new-instance p1, Lcom/apk/bb0;

    invoke-direct {p1}, Lcom/apk/bb0;-><init>()V

    new-instance v0, Lcom/apk/ib0;

    invoke-direct {v0}, Lcom/apk/ib0;-><init>()V

    invoke-virtual {p1, v0}, Lcom/apk/bb0;->do(Lcom/apk/ab0;)Lcom/apk/bb0;

    :cond_0
    return-void
.end method
