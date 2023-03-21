.class public Lcom/apk/xk0;
.super Lcom/apk/ml0;
.source "ForwardingTimeout.kt"


# instance fields
.field public try:Lcom/apk/ml0;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/apk/ml0;)V
    .locals 1
    .param p1    # Lcom/apk/ml0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "delegate"

    invoke-static {p1, v0}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lcom/apk/ml0;-><init>()V

    iput-object p1, p0, Lcom/apk/xk0;->try:Lcom/apk/ml0;

    return-void
.end method


# virtual methods
.method public case()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/apk/xk0;->try:Lcom/apk/ml0;

    invoke-virtual {v0}, Lcom/apk/ml0;->case()V

    return-void
.end method

.method public do()Lcom/apk/ml0;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/apk/xk0;->try:Lcom/apk/ml0;

    invoke-virtual {v0}, Lcom/apk/ml0;->do()Lcom/apk/ml0;

    move-result-object v0

    return-object v0
.end method

.method public else(JLjava/util/concurrent/TimeUnit;)Lcom/apk/ml0;
    .locals 1
    .param p3    # Ljava/util/concurrent/TimeUnit;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "unit"

    invoke-static {p3, v0}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/apk/xk0;->try:Lcom/apk/ml0;

    invoke-virtual {v0, p1, p2, p3}, Lcom/apk/ml0;->else(JLjava/util/concurrent/TimeUnit;)Lcom/apk/ml0;

    move-result-object p1

    return-object p1
.end method

.method public for()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/apk/xk0;->try:Lcom/apk/ml0;

    invoke-virtual {v0}, Lcom/apk/ml0;->for()J

    move-result-wide v0

    return-wide v0
.end method

.method public if()Lcom/apk/ml0;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/apk/xk0;->try:Lcom/apk/ml0;

    invoke-virtual {v0}, Lcom/apk/ml0;->if()Lcom/apk/ml0;

    move-result-object v0

    return-object v0
.end method

.method public new(J)Lcom/apk/ml0;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/apk/xk0;->try:Lcom/apk/ml0;

    invoke-virtual {v0, p1, p2}, Lcom/apk/ml0;->new(J)Lcom/apk/ml0;

    move-result-object p1

    return-object p1
.end method

.method public try()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/apk/xk0;->try:Lcom/apk/ml0;

    invoke-virtual {v0}, Lcom/apk/ml0;->try()Z

    move-result v0

    return v0
.end method
