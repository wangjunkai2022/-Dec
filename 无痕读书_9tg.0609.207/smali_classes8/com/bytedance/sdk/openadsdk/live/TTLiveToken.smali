.class public Lcom/bytedance/sdk/openadsdk/live/TTLiveToken;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public accessToken:Ljava/lang/String;

.field public expireAt:J

.field public name:Ljava/lang/String;

.field public openId:Ljava/lang/String;

.field public refreshToken:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 2
    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/live/TTLiveToken;->expireAt:J

    const-string v0, ""

    .line 3
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/live/TTLiveToken;->refreshToken:Ljava/lang/String;

    .line 4
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/live/TTLiveToken;->name:Ljava/lang/String;

    .line 5
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/live/TTLiveToken;->accessToken:Ljava/lang/String;

    .line 6
    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/live/TTLiveToken;->openId:Ljava/lang/String;

    .line 7
    iput-wide p4, p0, Lcom/bytedance/sdk/openadsdk/live/TTLiveToken;->expireAt:J

    .line 8
    iput-object p6, p0, Lcom/bytedance/sdk/openadsdk/live/TTLiveToken;->refreshToken:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 5

    const-string v0, "TTLiveToken{accessToken=\'"

    .line 1
    invoke-static {v0}, Lcom/apk/goto;->super(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/live/TTLiveToken;->accessToken:Ljava/lang/String;

    const/16 v2, 0x27

    const-string v3, ", openId=\'"

    invoke-static {v0, v1, v2, v3}, Lcom/apk/goto;->abstract(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/live/TTLiveToken;->openId:Ljava/lang/String;

    const-string v3, ", expireAt="

    invoke-static {v0, v1, v2, v3}, Lcom/apk/goto;->abstract(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    iget-wide v3, p0, Lcom/bytedance/sdk/openadsdk/live/TTLiveToken;->expireAt:J

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", refreshToken=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/live/TTLiveToken;->refreshToken:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
