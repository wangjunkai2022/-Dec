.class public abstract Lcom/apk/h70;
.super Lcom/apk/f70;
.source "BaseAdProviderVideo.java"


# instance fields
.field public case:Z

.field public else:Z

.field public goto:Landroid/os/CountDownTimer;

.field public try:Lcom/apk/d50$do;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/apk/f70;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract j(Landroid/app/Activity;)V
.end method

.method public k(Ljava/lang/String;Lcom/apk/b70;)V
    .locals 9

    .line 1
    invoke-virtual {p0}, Lcom/apk/h70;->l()V

    .line 2
    new-instance v8, Lcom/apk/h70$if;

    const-wide/16 v2, 0x1388

    const-wide/16 v4, 0x3e8

    move-object v0, v8

    move-object v1, p0

    move-object v6, p1

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Lcom/apk/h70$if;-><init>(Lcom/apk/h70;JJLjava/lang/String;Lcom/apk/b70;)V

    iput-object v8, p0, Lcom/apk/h70;->goto:Landroid/os/CountDownTimer;

    .line 3
    invoke-virtual {v8}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    return-void
.end method

.method public l()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/apk/h70;->goto:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/apk/h70;->goto:Landroid/os/CountDownTimer;

    :cond_0
    return-void
.end method

.method public m()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/apk/h70;->try:Lcom/apk/d50$do;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/apk/h70;->else:Z

    .line 3
    new-instance v0, Lcom/apk/h70$do;

    invoke-direct {v0, p0}, Lcom/apk/h70$do;-><init>(Lcom/apk/h70;)V

    iput-object v0, p0, Lcom/apk/h70;->try:Lcom/apk/d50$do;

    .line 4
    invoke-static {}, Lcom/apk/d50;->do()Lcom/apk/d50;

    move-result-object v0

    iget-object v1, p0, Lcom/apk/h70;->try:Lcom/apk/d50$do;

    .line 5
    iget-object v2, v0, Lcom/apk/d50;->do:Ljava/util/List;

    if-nez v2, :cond_0

    .line 6
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lcom/apk/d50;->do:Ljava/util/List;

    :cond_0
    if-eqz v1, :cond_1

    .line 7
    iget-object v0, v0, Lcom/apk/d50;->do:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method
