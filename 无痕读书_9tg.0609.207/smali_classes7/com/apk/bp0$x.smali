.class public final enum Lcom/apk/bp0$x;
.super Lcom/apk/bp0;
.source "TokeniserState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apk/bp0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4011
    name = null
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lcom/apk/bp0;-><init>(Ljava/lang/String;ILcom/apk/bp0$catch;)V

    return-void
.end method


# virtual methods
.method public case(Lcom/apk/ap0;Lcom/apk/qo0;)V
    .locals 6

    const-string v0, "]]>"

    .line 1
    invoke-virtual {p2, v0}, Lcom/apk/qo0;->default(Ljava/lang/CharSequence;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 2
    iget-object v2, p2, Lcom/apk/qo0;->do:[C

    iget-object v3, p2, Lcom/apk/qo0;->goto:[Ljava/lang/String;

    iget v4, p2, Lcom/apk/qo0;->try:I

    invoke-static {v2, v3, v4, v1}, Lcom/apk/qo0;->for([C[Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v2

    .line 3
    iget v3, p2, Lcom/apk/qo0;->try:I

    add-int/2addr v3, v1

    iput v3, p2, Lcom/apk/qo0;->try:I

    goto :goto_0

    .line 4
    :cond_0
    iget v1, p2, Lcom/apk/qo0;->for:I

    iget v2, p2, Lcom/apk/qo0;->try:I

    sub-int v3, v1, v2

    const/4 v4, 0x3

    if-ge v3, v4, :cond_1

    .line 5
    invoke-virtual {p2}, Lcom/apk/qo0;->class()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_1
    sub-int/2addr v1, v4

    add-int/lit8 v1, v1, 0x1

    .line 6
    iget-object v3, p2, Lcom/apk/qo0;->do:[C

    iget-object v4, p2, Lcom/apk/qo0;->goto:[Ljava/lang/String;

    sub-int v5, v1, v2

    invoke-static {v3, v4, v2, v5}, Lcom/apk/qo0;->for([C[Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v2

    .line 7
    iput v1, p2, Lcom/apk/qo0;->try:I

    .line 8
    :goto_0
    iget-object v1, p1, Lcom/apk/ap0;->goto:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    invoke-virtual {p2, v0}, Lcom/apk/qo0;->native(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p2}, Lcom/apk/qo0;->super()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 10
    :cond_2
    new-instance p2, Lcom/apk/yo0$if;

    iget-object v0, p1, Lcom/apk/ap0;->goto:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0}, Lcom/apk/yo0$if;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Lcom/apk/ap0;->goto(Lcom/apk/yo0;)V

    .line 11
    sget-object p2, Lcom/apk/bp0;->do:Lcom/apk/bp0;

    .line 12
    iput-object p2, p1, Lcom/apk/ap0;->for:Lcom/apk/bp0;

    :cond_3
    return-void
.end method
