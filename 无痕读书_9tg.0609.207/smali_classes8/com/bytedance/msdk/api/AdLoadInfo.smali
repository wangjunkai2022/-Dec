.class public Lcom/bytedance/msdk/api/AdLoadInfo;
.super Ljava/lang/Object;
.source "AdLoadInfo.java"


# static fields
.field public static final AD_LOADED:Ljava/lang/String; = "\u5e7f\u544a\u52a0\u8f7d\u6210\u529f"

.field public static final AD_LOADING:Ljava/lang/String; = "\u5e7f\u544a\u8bf7\u6c42\u4e2d"


# instance fields
.field public case:Ljava/lang/String;

.field public do:Ljava/lang/String;

.field public for:Ljava/lang/String;

.field public if:Ljava/lang/String;

.field public new:Ljava/lang/String;

.field public try:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAdType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/msdk/api/AdLoadInfo;->new:Ljava/lang/String;

    return-object v0
.end method

.method public getAdnName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/msdk/api/AdLoadInfo;->if:Ljava/lang/String;

    return-object v0
.end method

.method public getCustomAdnName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/msdk/api/AdLoadInfo;->for:Ljava/lang/String;

    return-object v0
.end method

.method public getErrCode()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/bytedance/msdk/api/AdLoadInfo;->try:I

    return v0
.end method

.method public getErrMsg()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/msdk/api/AdLoadInfo;->case:Ljava/lang/String;

    return-object v0
.end method

.method public getMediationRit()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/msdk/api/AdLoadInfo;->do:Ljava/lang/String;

    return-object v0
.end method

.method public setAdType(Ljava/lang/String;)Lcom/bytedance/msdk/api/AdLoadInfo;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/msdk/api/AdLoadInfo;->new:Ljava/lang/String;

    return-object p0
.end method

.method public setAdnName(Ljava/lang/String;)Lcom/bytedance/msdk/api/AdLoadInfo;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/msdk/api/AdLoadInfo;->if:Ljava/lang/String;

    return-object p0
.end method

.method public setCustomAdnName(Ljava/lang/String;)Lcom/bytedance/msdk/api/AdLoadInfo;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/msdk/api/AdLoadInfo;->for:Ljava/lang/String;

    return-object p0
.end method

.method public setErrCode(I)Lcom/bytedance/msdk/api/AdLoadInfo;
    .locals 0

    .line 1
    iput p1, p0, Lcom/bytedance/msdk/api/AdLoadInfo;->try:I

    return-object p0
.end method

.method public setErrMsg(Ljava/lang/String;)Lcom/bytedance/msdk/api/AdLoadInfo;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/msdk/api/AdLoadInfo;->case:Ljava/lang/String;

    return-object p0
.end method

.method public setMediationRit(Ljava/lang/String;)Lcom/bytedance/msdk/api/AdLoadInfo;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/msdk/api/AdLoadInfo;->do:Ljava/lang/String;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const-string v0, "{mediationRit=\'"

    .line 1
    invoke-static {v0}, Lcom/apk/goto;->super(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/msdk/api/AdLoadInfo;->do:Ljava/lang/String;

    const/16 v2, 0x27

    const-string v3, ", adnName=\'"

    invoke-static {v0, v1, v2, v3}, Lcom/apk/goto;->abstract(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    iget-object v1, p0, Lcom/bytedance/msdk/api/AdLoadInfo;->if:Ljava/lang/String;

    const-string v3, ", customAdnName=\'"

    invoke-static {v0, v1, v2, v3}, Lcom/apk/goto;->abstract(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    iget-object v1, p0, Lcom/bytedance/msdk/api/AdLoadInfo;->for:Ljava/lang/String;

    const-string v3, ", adType=\'"

    invoke-static {v0, v1, v2, v3}, Lcom/apk/goto;->abstract(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    iget-object v1, p0, Lcom/bytedance/msdk/api/AdLoadInfo;->new:Ljava/lang/String;

    const-string v3, ", errCode="

    invoke-static {v0, v1, v2, v3}, Lcom/apk/goto;->abstract(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    iget v1, p0, Lcom/bytedance/msdk/api/AdLoadInfo;->try:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", errMsg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bytedance/msdk/api/AdLoadInfo;->case:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
