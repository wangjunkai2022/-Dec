.class public Lcom/apk/catch;
.super Ljava/lang/Object;
.source "AdBestTopHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic do:Lorg/json/JSONObject;

.field public final synthetic if:Lcom/apk/class;


# direct methods
.method public constructor <init>(Lcom/apk/class;Lorg/json/JSONObject;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/catch;->if:Lcom/apk/class;

    iput-object p2, p0, Lcom/apk/catch;->do:Lorg/json/JSONObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/apk/catch;->do:Lorg/json/JSONObject;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v1, p0, Lcom/apk/catch;->if:Lcom/apk/class;

    invoke-static {v0}, Lcom/apk/finally;->e(Lorg/json/JSONObject;)Ljava/util/List;

    move-result-object v0

    .line 3
    iput-object v0, v1, Lcom/apk/class;->else:Ljava/util/List;

    .line 4
    iget-object v0, p0, Lcom/apk/catch;->if:Lcom/apk/class;

    .line 5
    iget-object v1, v0, Lcom/apk/class;->else:Ljava/util/List;

    if-eqz v1, :cond_2

    .line 6
    iget-object v1, p0, Lcom/apk/catch;->do:Lorg/json/JSONObject;

    invoke-static {v1}, Lcom/apk/finally;->goto(Lorg/json/JSONObject;)J

    move-result-wide v1

    .line 7
    iput-wide v1, v0, Lcom/apk/class;->for:J

    .line 8
    iget-object v0, p0, Lcom/apk/catch;->if:Lcom/apk/class;

    iget-object v1, p0, Lcom/apk/catch;->do:Lorg/json/JSONObject;

    const-wide/16 v2, 0x0

    if-eqz v1, :cond_1

    const-string v4, "fshowtimer"

    .line 9
    invoke-virtual {v1, v4, v2, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    mul-long v2, v1, v3

    .line 10
    :cond_1
    iput-wide v2, v0, Lcom/apk/class;->new:J

    .line 11
    iget-object v0, p0, Lcom/apk/catch;->if:Lcom/apk/class;

    iget-object v1, p0, Lcom/apk/catch;->do:Lorg/json/JSONObject;

    invoke-static {v1}, Lcom/apk/finally;->const(Lorg/json/JSONObject;)Z

    move-result v1

    .line 12
    iput-boolean v1, v0, Lcom/apk/class;->this:Z

    .line 13
    iget-object v0, p0, Lcom/apk/catch;->if:Lcom/apk/class;

    iget-object v1, p0, Lcom/apk/catch;->do:Lorg/json/JSONObject;

    invoke-static {v1}, Lcom/apk/finally;->try(Lorg/json/JSONObject;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/apk/break;->do:Z

    .line 14
    :cond_2
    iget-object v0, p0, Lcom/apk/catch;->if:Lcom/apk/class;

    .line 15
    iget-object v1, v0, Lcom/apk/class;->break:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_3

    .line 16
    iget-object v0, v0, Lcom/apk/class;->else:Ljava/util/List;

    if-eqz v0, :cond_3

    .line 17
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 18
    iget-object v0, p0, Lcom/apk/catch;->if:Lcom/apk/class;

    new-instance v1, Lcom/apk/break$do;

    iget-object v2, p0, Lcom/apk/catch;->if:Lcom/apk/class;

    invoke-direct {v1, v2}, Lcom/apk/break$do;-><init>(Lcom/apk/break;)V

    .line 19
    iput-object v1, v0, Lcom/apk/class;->if:Lcom/apk/break$do;

    .line 20
    iget-object v0, p0, Lcom/apk/catch;->if:Lcom/apk/class;

    .line 21
    iget-object v0, v0, Lcom/apk/class;->if:Lcom/apk/break$do;

    const/16 v1, 0x65

    .line 22
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_3
    return-void
.end method
