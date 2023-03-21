.class public Lcom/apk/f70$if;
.super Landroid/os/CountDownTimer;
.source "BaseAdProviderSuper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apk/f70;->e(Ljava/lang/String;JZLcom/apk/b70;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Ljava/lang/String;

.field public final synthetic for:Z

.field public final synthetic if:J

.field public final synthetic new:Lcom/apk/b70;

.field public final synthetic try:Lcom/apk/f70;


# direct methods
.method public constructor <init>(Lcom/apk/f70;JJLjava/lang/String;JZLcom/apk/b70;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/f70$if;->try:Lcom/apk/f70;

    iput-object p6, p0, Lcom/apk/f70$if;->do:Ljava/lang/String;

    iput-wide p7, p0, Lcom/apk/f70$if;->if:J

    iput-boolean p9, p0, Lcom/apk/f70$if;->for:Z

    iput-object p10, p0, Lcom/apk/f70$if;->new:Lcom/apk/b70;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/apk/f70$if;->do:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\u8d85\u65f6\u8ba1\u65f6\u7ed3\u675f\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/apk/f70$if;->if:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/apk/f70$if;->for:Z

    if-eqz v1, :cond_0

    const-string v1, "\uff1aonCache"

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/apk/k40;->this(Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lcom/apk/d50;->do()Lcom/apk/d50;

    move-result-object v0

    .line 3
    iget-boolean v0, v0, Lcom/apk/d50;->new:Z

    if-eqz v0, :cond_1

    return-void

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/apk/f70$if;->try:Lcom/apk/f70;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/apk/f70;->for:Z

    .line 5
    iget-boolean v2, p0, Lcom/apk/f70$if;->for:Z

    if-eqz v2, :cond_3

    .line 6
    invoke-static {}, Lcom/swl/gg/sdk/TrAdSdk;->isVideoCacheShow()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7
    iget-object v0, p0, Lcom/apk/f70$if;->try:Lcom/apk/f70;

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/apk/f70;->for:Z

    .line 8
    iput-boolean v1, v0, Lcom/apk/f70;->new:Z

    .line 9
    iget-object v1, p0, Lcom/apk/f70$if;->do:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/apk/e70;->else(Ljava/lang/String;)V

    goto :goto_1

    .line 10
    :cond_2
    iget-object v0, p0, Lcom/apk/f70$if;->try:Lcom/apk/f70;

    iget-object v1, p0, Lcom/apk/f70$if;->do:Ljava/lang/String;

    iget-object v2, p0, Lcom/apk/f70$if;->new:Lcom/apk/b70;

    invoke-virtual {v0, v1, v2}, Lcom/apk/e70;->public(Ljava/lang/String;Lcom/apk/b70;)V

    goto :goto_1

    .line 11
    :cond_3
    iget-object v1, p0, Lcom/apk/f70$if;->do:Ljava/lang/String;

    iget-object v2, p0, Lcom/apk/f70$if;->new:Lcom/apk/b70;

    invoke-virtual {v0, v1, v2}, Lcom/apk/e70;->public(Ljava/lang/String;Lcom/apk/b70;)V

    :goto_1
    return-void
.end method

.method public onTick(J)V
    .locals 0

    return-void
.end method
