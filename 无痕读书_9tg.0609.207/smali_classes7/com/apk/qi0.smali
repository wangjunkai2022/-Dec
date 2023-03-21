.class public final Lcom/apk/qi0;
.super Ljava/lang/Object;
.source "HeadersReader.kt"


# instance fields
.field public do:J

.field public final if:Lcom/apk/tk0;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/apk/tk0;)V
    .locals 2
    .param p1    # Lcom/apk/tk0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "source"

    invoke-static {p1, v0}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/apk/qi0;->if:Lcom/apk/tk0;

    const/high16 p1, 0x40000

    int-to-long v0, p1

    .line 2
    iput-wide v0, p0, Lcom/apk/qi0;->do:J

    return-void
.end method


# virtual methods
.method public final do()Lcom/apk/sg0;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Lcom/apk/sg0$do;

    invoke-direct {v0}, Lcom/apk/sg0$do;-><init>()V

    .line 2
    :goto_0
    invoke-virtual {p0}, Lcom/apk/qi0;->if()Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_1

    .line 4
    invoke-virtual {v0}, Lcom/apk/sg0$do;->new()Lcom/apk/sg0;

    move-result-object v0

    return-object v0

    .line 5
    :cond_1
    invoke-virtual {v0, v1}, Lcom/apk/sg0$do;->if(Ljava/lang/String;)Lcom/apk/sg0$do;

    goto :goto_0
.end method

.method public final if()Ljava/lang/String;
    .locals 5
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/apk/qi0;->if:Lcom/apk/tk0;

    iget-wide v1, p0, Lcom/apk/qi0;->do:J

    invoke-interface {v0, v1, v2}, Lcom/apk/tk0;->goto(J)Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-wide v1, p0, Lcom/apk/qi0;->do:J

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    int-to-long v3, v3

    sub-long/2addr v1, v3

    iput-wide v1, p0, Lcom/apk/qi0;->do:J

    return-object v0
.end method
