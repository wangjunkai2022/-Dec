.class public final Lcom/apk/ni0;
.super Lcom/apk/dh0;
.source "RealResponseBody.kt"


# instance fields
.field public final for:Ljava/lang/String;

.field public final new:J

.field public final try:Lcom/apk/tk0;


# direct methods
.method public constructor <init>(Ljava/lang/String;JLcom/apk/tk0;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Lcom/apk/tk0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "source"

    invoke-static {p4, v0}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lcom/apk/dh0;-><init>()V

    iput-object p1, p0, Lcom/apk/ni0;->for:Ljava/lang/String;

    iput-wide p2, p0, Lcom/apk/ni0;->new:J

    iput-object p4, p0, Lcom/apk/ni0;->try:Lcom/apk/tk0;

    return-void
.end method


# virtual methods
.method public extends()Lcom/apk/tk0;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/apk/ni0;->try:Lcom/apk/tk0;

    return-object v0
.end method

.method public throw()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/apk/ni0;->new:J

    return-wide v0
.end method

.method public throws()Lcom/apk/vg0;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/apk/ni0;->for:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/apk/vg0;->else:Lcom/apk/vg0$do;

    invoke-static {v0}, Lcom/apk/vg0$do;->if(Ljava/lang/String;)Lcom/apk/vg0;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method
