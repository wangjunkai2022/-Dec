.class public Lcom/apk/const;
.super Ljava/lang/Object;
.source "AdBlockNativeHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic do:Lorg/json/JSONObject;

.field public final synthetic for:Lcom/apk/final;

.field public final synthetic if:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/apk/final;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/const;->for:Lcom/apk/final;

    iput-object p2, p0, Lcom/apk/const;->do:Lorg/json/JSONObject;

    iput-object p3, p0, Lcom/apk/const;->if:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/apk/const;->do:Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lcom/apk/const;->for:Lcom/apk/final;

    invoke-static {v0}, Lcom/apk/finally;->e(Lorg/json/JSONObject;)Ljava/util/List;

    move-result-object v0

    .line 3
    iput-object v0, v1, Lcom/apk/final;->try:Ljava/util/List;

    .line 4
    iget-object v0, p0, Lcom/apk/const;->for:Lcom/apk/final;

    .line 5
    iget-object v0, v0, Lcom/apk/final;->try:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 6
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 7
    iget-object v0, p0, Lcom/apk/const;->for:Lcom/apk/final;

    iget-object v1, p0, Lcom/apk/const;->do:Lorg/json/JSONObject;

    invoke-static {v1}, Lcom/apk/finally;->goto(Lorg/json/JSONObject;)J

    move-result-wide v1

    .line 8
    iput-wide v1, v0, Lcom/apk/final;->new:J

    .line 9
    iget-object v0, p0, Lcom/apk/const;->for:Lcom/apk/final;

    .line 10
    iget-object v0, v0, Lcom/apk/final;->try:Ljava/util/List;

    const/4 v1, 0x0

    .line 11
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/apk/g;

    if-eqz v0, :cond_1

    .line 12
    invoke-virtual {v0}, Lcom/apk/g;->if()Ljava/lang/String;

    move-result-object v1

    .line 13
    invoke-virtual {v0}, Lcom/apk/g;->do()Ljava/lang/String;

    move-result-object v0

    const-string v2, "swl"

    .line 14
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 15
    iget-object v1, p0, Lcom/apk/const;->for:Lcom/apk/final;

    invoke-static {v1, v0}, Lcom/apk/final;->do(Lcom/apk/final;Ljava/lang/String;)V

    goto :goto_0

    .line 16
    :cond_0
    iget-object v0, p0, Lcom/apk/const;->if:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 17
    iget-object v0, p0, Lcom/apk/const;->for:Lcom/apk/final;

    iget-object v1, p0, Lcom/apk/const;->if:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/apk/final;->do(Lcom/apk/final;Ljava/lang/String;)V

    .line 18
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/apk/const;->for:Lcom/apk/final;

    .line 19
    iget-object v1, v0, Lcom/apk/final;->do:Landroid/os/Handler;

    if-eqz v1, :cond_2

    .line 20
    iget-object v0, v0, Lcom/apk/final;->case:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 21
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 22
    iget-object v0, p0, Lcom/apk/const;->for:Lcom/apk/final;

    .line 23
    iget-object v1, v0, Lcom/apk/final;->do:Landroid/os/Handler;

    .line 24
    iget-object v0, v0, Lcom/apk/final;->const:Ljava/lang/Runnable;

    .line 25
    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    return-void
.end method
