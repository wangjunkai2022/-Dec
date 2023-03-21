.class public final Lcom/apk/yo0$goto;
.super Lcom/apk/yo0$this;
.source "Token.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apk/yo0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "goto"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/apk/yo0$this;-><init>()V

    .line 2
    sget-object v0, Lcom/apk/yo0$break;->if:Lcom/apk/yo0$break;

    iput-object v0, p0, Lcom/apk/yo0;->do:Lcom/apk/yo0$break;

    return-void
.end method


# virtual methods
.method public bridge synthetic else()Lcom/apk/yo0;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/apk/yo0$goto;->return()Lcom/apk/yo0$this;

    return-object p0
.end method

.method public return()Lcom/apk/yo0$this;
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/apk/yo0$this;->return()Lcom/apk/yo0$this;

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/apk/yo0$this;->class:Lcom/apk/do0;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/apk/yo0$this;->while()Z

    move-result v0

    const-string v1, ">"

    const-string v2, "<"

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/apk/yo0$this;->class:Lcom/apk/do0;

    .line 2
    iget v0, v0, Lcom/apk/do0;->do:I

    if-lez v0, :cond_0

    .line 3
    invoke-static {v2}, Lcom/apk/goto;->super(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/apk/yo0$this;->static()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/apk/yo0$this;->class:Lcom/apk/do0;

    invoke-virtual {v2}, Lcom/apk/do0;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 4
    :cond_0
    invoke-static {v2}, Lcom/apk/goto;->super(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/apk/yo0$this;->static()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
