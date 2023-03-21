.class public Lcom/apk/n0;
.super Ljava/lang/Object;
.source "BaseReadLockHelper.java"


# instance fields
.field public break:Z

.field public case:I

.field public catch:Z

.field public class:I

.field public const:Ljava/lang/String;

.field public default:Ljava/util/Timer;

.field public do:J

.field public else:J

.field public extends:Z

.field public final:Z

.field public for:J

.field public goto:Ljava/lang/String;

.field public if:Z

.field public import:Ljava/lang/String;

.field public native:Ljava/lang/String;

.field public new:J

.field public public:Ljava/lang/String;

.field public return:I

.field public static:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/apk/g;",
            ">;"
        }
    .end annotation
.end field

.field public super:Z

.field public switch:Ljava/lang/String;

.field public this:Z

.field public throw:J

.field public throws:Z

.field public try:J

.field public while:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public case()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/apk/n0;->public:Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method public do()Lcom/apk/g;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/apk/n0;->static:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/apk/n0;->static:Ljava/util/List;

    iget v1, p0, Lcom/apk/n0;->return:I

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    rem-int/2addr v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/apk/g;

    .line 3
    iget v1, p0, Lcom/apk/n0;->return:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/apk/n0;->return:I

    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public else()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/apk/n0;->while:Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method public for()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/apk/n0;->import:Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method public goto(Lorg/json/JSONObject;)V
    .locals 2

    const-string v0, "aword"

    .line 1
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/apk/n0;->while:Ljava/lang/String;

    const-string v0, "addesc"

    .line 2
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/apk/n0;->import:Ljava/lang/String;

    const-string v0, "btn_ad"

    .line 3
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/apk/n0;->native:Ljava/lang/String;

    const-string v0, "btn_share"

    .line 4
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/apk/n0;->public:Ljava/lang/String;

    const-string v0, "Interval"

    .line 5
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    mul-int/lit8 v0, v0, 0x3c

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/apk/n0;->do:J

    const-string v0, "addtimes"

    .line 6
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    mul-int/lit8 v0, v0, 0x3c

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/apk/n0;->for:J

    const-string v0, "weight"

    .line 7
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 8
    invoke-static {p1, v0}, Lcom/apk/finally;->f(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/apk/n0;->static:Ljava/util/List;

    const-string v0, "chaptercount"

    const/4 v1, 0x5

    .line 9
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/apk/n0;->case:I

    const-string v0, "yxhours"

    const/16 v1, 0x18

    .line 10
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x3c

    mul-int/lit8 v0, v0, 0x3c

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    .line 11
    iput-wide v0, p0, Lcom/apk/n0;->try:J

    const-string v0, "time_style"

    .line 12
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 13
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "public"

    .line 14
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/apk/n0;->this:Z

    :cond_0
    const-string v0, "time_scope"

    .line 15
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 16
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "today"

    .line 17
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/apk/n0;->final:Z

    if-nez v1, :cond_1

    .line 18
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_1

    const/4 v1, 0x1

    .line 19
    iput-boolean v1, p0, Lcom/apk/n0;->super:Z

    mul-int/lit8 v0, v0, 0x3c

    mul-int/lit8 v0, v0, 0x3c

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    .line 20
    iput-wide v0, p0, Lcom/apk/n0;->throw:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 21
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    const-string v0, "extra_chaps"

    .line 22
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/apk/n0;->class:I

    return-void
.end method

.method public if()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/apk/n0;->native:Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method public new()Lcom/apk/g;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/apk/n0;->static:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/apk/n0;->static:Ljava/util/List;

    iget v1, p0, Lcom/apk/n0;->return:I

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    rem-int/2addr v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/apk/g;

    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public try()Ljava/lang/String;
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/apk/n0;->for:J

    invoke-static {v0, v1}, Lcom/apk/kg;->break(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
