.class public Lcom/apk/s30;
.super Lcom/apk/pi;
.source "GlideRequest.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TranscodeType:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/apk/pi<",
        "TTranscodeType;>;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/apk/ii;Lcom/apk/qi;Ljava/lang/Class;Landroid/content/Context;)V
    .locals 0
    .param p1    # Lcom/apk/ii;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/apk/qi;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/apk/ii;",
            "Lcom/apk/qi;",
            "Ljava/lang/Class<",
            "TTranscodeType;>;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/apk/pi;-><init>(Lcom/apk/ii;Lcom/apk/qi;Ljava/lang/Class;Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Lcom/apk/pi;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/apk/pi;->strictfp:Ljava/lang/Object;

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/apk/pi;->protected:Z

    return-object p0
.end method

.method public abstract(Z)Lcom/apk/xq;
    .locals 0
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/apk/xq;->abstract(Z)Lcom/apk/xq;

    move-result-object p1

    check-cast p1, Lcom/apk/s30;

    return-object p1
.end method

.method public b(Ljava/lang/String;)Lcom/apk/pi;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/apk/pi;->strictfp:Ljava/lang/Object;

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/apk/pi;->protected:Z

    return-object p0
.end method

.method public case(Ljava/lang/Class;)Lcom/apk/xq;
    .locals 0
    .param p1    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/apk/xq;->case(Ljava/lang/Class;)Lcom/apk/xq;

    move-result-object p1

    check-cast p1, Lcom/apk/s30;

    return-object p1
.end method

.method public catch(I)Lcom/apk/xq;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/apk/xq;->catch(I)Lcom/apk/xq;

    move-result-object p1

    check-cast p1, Lcom/apk/s30;

    return-object p1
.end method

.method public class(Lcom/apk/ej;)Lcom/apk/xq;
    .locals 0
    .param p1    # Lcom/apk/ej;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/apk/xq;->class(Lcom/apk/ej;)Lcom/apk/xq;

    move-result-object p1

    check-cast p1, Lcom/apk/s30;

    return-object p1
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/apk/s30;->e()Lcom/apk/s30;

    move-result-object v0

    return-object v0
.end method

.method public continue(Lcom/apk/cr;)Lcom/apk/pi;
    .locals 0
    .param p1    # Lcom/apk/cr;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/apk/pi;->continue(Lcom/apk/cr;)Lcom/apk/pi;

    return-object p0
.end method

.method public default(Lcom/apk/lj;Ljava/lang/Object;)Lcom/apk/xq;
    .locals 0
    .param p1    # Lcom/apk/lj;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-super {p0, p1, p2}, Lcom/apk/xq;->default(Lcom/apk/lj;Ljava/lang/Object;)Lcom/apk/xq;

    move-result-object p1

    check-cast p1, Lcom/apk/s30;

    return-object p1
.end method

.method public do(Lcom/apk/xq;)Lcom/apk/xq;
    .locals 0
    .param p1    # Lcom/apk/xq;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/apk/pi;->strictfp(Lcom/apk/xq;)Lcom/apk/pi;

    move-result-object p1

    check-cast p1, Lcom/apk/s30;

    return-object p1
.end method

.method public e()Lcom/apk/s30;
    .locals 1
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/apk/s30<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 1
    invoke-super {p0}, Lcom/apk/pi;->interface()Lcom/apk/pi;

    move-result-object v0

    check-cast v0, Lcom/apk/s30;

    return-object v0
.end method

.method public else(Lcom/apk/uk;)Lcom/apk/xq;
    .locals 0
    .param p1    # Lcom/apk/uk;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/apk/xq;->else(Lcom/apk/uk;)Lcom/apk/xq;

    move-result-object p1

    check-cast p1, Lcom/apk/s30;

    return-object p1
.end method

.method public extends(Lcom/apk/kj;)Lcom/apk/xq;
    .locals 0
    .param p1    # Lcom/apk/kj;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/apk/xq;->extends(Lcom/apk/kj;)Lcom/apk/xq;

    move-result-object p1

    check-cast p1, Lcom/apk/s30;

    return-object p1
.end method

.method public finally(Z)Lcom/apk/xq;
    .locals 0
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/apk/xq;->finally(Z)Lcom/apk/xq;

    move-result-object p1

    check-cast p1, Lcom/apk/s30;

    return-object p1
.end method

.method public goto()Lcom/apk/xq;
    .locals 1
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-super {p0}, Lcom/apk/xq;->goto()Lcom/apk/xq;

    move-result-object v0

    check-cast v0, Lcom/apk/s30;

    return-object v0
.end method

.method public import()Lcom/apk/xq;
    .locals 1
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-super {p0}, Lcom/apk/xq;->import()Lcom/apk/xq;

    move-result-object v0

    check-cast v0, Lcom/apk/s30;

    return-object v0
.end method

.method public instanceof(Lcom/apk/cr;)Lcom/apk/pi;
    .locals 1
    .param p1    # Lcom/apk/cr;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/apk/pi;->volatile:Ljava/util/List;

    .line 2
    invoke-super {p0, p1}, Lcom/apk/pi;->continue(Lcom/apk/cr;)Lcom/apk/pi;

    return-object p0
.end method

.method public bridge synthetic interface()Lcom/apk/pi;
    .locals 1
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/apk/s30;->e()Lcom/apk/s30;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic new()Lcom/apk/xq;
    .locals 1
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/apk/s30;->e()Lcom/apk/s30;

    move-result-object v0

    return-object v0
.end method

.method public public(I)Lcom/apk/xq;
    .locals 0
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p1}, Lcom/apk/xq;->return(II)Lcom/apk/xq;

    move-result-object p1

    .line 2
    check-cast p1, Lcom/apk/s30;

    return-object p1
.end method

.method public return(II)Lcom/apk/xq;
    .locals 0
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-super {p0, p1, p2}, Lcom/apk/xq;->return(II)Lcom/apk/xq;

    move-result-object p1

    check-cast p1, Lcom/apk/s30;

    return-object p1
.end method

.method public static(I)Lcom/apk/xq;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/apk/xq;->static(I)Lcom/apk/xq;

    move-result-object p1

    check-cast p1, Lcom/apk/s30;

    return-object p1
.end method

.method public strictfp(Lcom/apk/xq;)Lcom/apk/pi;
    .locals 0
    .param p1    # Lcom/apk/xq;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/apk/pi;->strictfp(Lcom/apk/xq;)Lcom/apk/pi;

    move-result-object p1

    check-cast p1, Lcom/apk/s30;

    return-object p1
.end method

.method public super()Lcom/apk/xq;
    .locals 1
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-super {p0}, Lcom/apk/xq;->super()Lcom/apk/xq;

    move-result-object v0

    check-cast v0, Lcom/apk/s30;

    return-object v0
.end method

.method public switch(Lcom/apk/ni;)Lcom/apk/xq;
    .locals 0
    .param p1    # Lcom/apk/ni;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/apk/xq;->switch(Lcom/apk/ni;)Lcom/apk/xq;

    move-result-object p1

    check-cast p1, Lcom/apk/s30;

    return-object p1
.end method

.method public synchronized(Ljava/io/File;)Lcom/apk/pi;
    .locals 0
    .param p1    # Ljava/io/File;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/apk/pi;->strictfp:Ljava/lang/Object;

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/apk/pi;->protected:Z

    return-object p0
.end method

.method public this(Lcom/apk/co;)Lcom/apk/xq;
    .locals 0
    .param p1    # Lcom/apk/co;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/apk/xq;->this(Lcom/apk/co;)Lcom/apk/xq;

    move-result-object p1

    check-cast p1, Lcom/apk/s30;

    return-object p1
.end method

.method public while()Lcom/apk/xq;
    .locals 1
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-super {p0}, Lcom/apk/xq;->while()Lcom/apk/xq;

    move-result-object v0

    check-cast v0, Lcom/apk/s30;

    return-object v0
.end method
