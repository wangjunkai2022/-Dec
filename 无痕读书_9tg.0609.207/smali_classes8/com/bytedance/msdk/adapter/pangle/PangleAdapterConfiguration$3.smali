.class public Lcom/bytedance/msdk/adapter/pangle/PangleAdapterConfiguration$3;
.super Lcom/bytedance/sdk/openadsdk/TTCustomController;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/msdk/adapter/pangle/PangleAdapterConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/bytedance/msdk/adapter/pangle/PangleAdapterConfiguration;


# direct methods
.method public constructor <init>(Lcom/bytedance/msdk/adapter/pangle/PangleAdapterConfiguration;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/adapter/pangle/PangleAdapterConfiguration$3;->do:Lcom/bytedance/msdk/adapter/pangle/PangleAdapterConfiguration;

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/TTCustomController;-><init>()V

    return-void
.end method


# virtual methods
.method public alist()Z
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/adapter/pangle/PangleAdapterConfiguration$3;->do:Lcom/bytedance/msdk/adapter/pangle/PangleAdapterConfiguration;

    .line 1
    iget-object v0, v0, Lcom/bytedance/msdk/adapter/pangle/PangleAdapterConfiguration;->try:Lcom/bytedance/msdk/api/v2/GMPrivacyConfig;

    .line 2
    invoke-virtual {v0}, Lcom/bytedance/msdk/api/v2/GMPrivacyConfig;->appList()Z

    move-result v0

    return v0
.end method

.method public getDevImei()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/adapter/pangle/PangleAdapterConfiguration$3;->do:Lcom/bytedance/msdk/adapter/pangle/PangleAdapterConfiguration;

    .line 1
    iget-object v0, v0, Lcom/bytedance/msdk/adapter/pangle/PangleAdapterConfiguration;->try:Lcom/bytedance/msdk/api/v2/GMPrivacyConfig;

    .line 2
    invoke-virtual {v0}, Lcom/bytedance/msdk/api/v2/GMPrivacyConfig;->getDevImei()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDevOaid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/adapter/pangle/PangleAdapterConfiguration$3;->do:Lcom/bytedance/msdk/adapter/pangle/PangleAdapterConfiguration;

    .line 1
    iget-object v0, v0, Lcom/bytedance/msdk/adapter/pangle/PangleAdapterConfiguration;->try:Lcom/bytedance/msdk/api/v2/GMPrivacyConfig;

    .line 2
    invoke-virtual {v0}, Lcom/bytedance/msdk/api/v2/GMPrivacyConfig;->getDevOaid()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMacAddress()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/adapter/pangle/PangleAdapterConfiguration$3;->do:Lcom/bytedance/msdk/adapter/pangle/PangleAdapterConfiguration;

    .line 1
    iget-object v0, v0, Lcom/bytedance/msdk/adapter/pangle/PangleAdapterConfiguration;->try:Lcom/bytedance/msdk/api/v2/GMPrivacyConfig;

    .line 2
    invoke-virtual {v0}, Lcom/bytedance/msdk/api/v2/GMPrivacyConfig;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTTLocation()Lcom/bytedance/sdk/openadsdk/LocationProvider;
    .locals 5

    iget-object v0, p0, Lcom/bytedance/msdk/adapter/pangle/PangleAdapterConfiguration$3;->do:Lcom/bytedance/msdk/adapter/pangle/PangleAdapterConfiguration;

    .line 1
    iget-object v0, v0, Lcom/bytedance/msdk/adapter/pangle/PangleAdapterConfiguration;->try:Lcom/bytedance/msdk/api/v2/GMPrivacyConfig;

    .line 2
    invoke-virtual {v0}, Lcom/bytedance/msdk/api/v2/GMPrivacyConfig;->getTTLocation()Lcom/bytedance/msdk/api/v2/GMLocation;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/bytedance/sdk/openadsdk/TTLocation;

    iget-object v1, p0, Lcom/bytedance/msdk/adapter/pangle/PangleAdapterConfiguration$3;->do:Lcom/bytedance/msdk/adapter/pangle/PangleAdapterConfiguration;

    .line 3
    iget-object v1, v1, Lcom/bytedance/msdk/adapter/pangle/PangleAdapterConfiguration;->try:Lcom/bytedance/msdk/api/v2/GMPrivacyConfig;

    .line 4
    invoke-virtual {v1}, Lcom/bytedance/msdk/api/v2/GMPrivacyConfig;->getTTLocation()Lcom/bytedance/msdk/api/v2/GMLocation;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/msdk/api/v2/GMLocation;->getLatitude()D

    move-result-wide v1

    iget-object v3, p0, Lcom/bytedance/msdk/adapter/pangle/PangleAdapterConfiguration$3;->do:Lcom/bytedance/msdk/adapter/pangle/PangleAdapterConfiguration;

    .line 5
    iget-object v3, v3, Lcom/bytedance/msdk/adapter/pangle/PangleAdapterConfiguration;->try:Lcom/bytedance/msdk/api/v2/GMPrivacyConfig;

    .line 6
    invoke-virtual {v3}, Lcom/bytedance/msdk/api/v2/GMPrivacyConfig;->getTTLocation()Lcom/bytedance/msdk/api/v2/GMLocation;

    move-result-object v3

    invoke-virtual {v3}, Lcom/bytedance/msdk/api/v2/GMLocation;->getLongitude()D

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/bytedance/sdk/openadsdk/TTLocation;-><init>(DD)V

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public isCanUseAndroidId()Z
    .locals 2

    const-string v0, "--==-- \u7a7f\u5c71\u7532\u83b7\u53d6\u7684isCanUseAndroidId: "

    invoke-static {v0}, Lcom/apk/goto;->super(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/msdk/adapter/pangle/PangleAdapterConfiguration$3;->do:Lcom/bytedance/msdk/adapter/pangle/PangleAdapterConfiguration;

    .line 1
    iget-object v1, v1, Lcom/bytedance/msdk/adapter/pangle/PangleAdapterConfiguration;->try:Lcom/bytedance/msdk/api/v2/GMPrivacyConfig;

    .line 2
    invoke-virtual {v1}, Lcom/bytedance/msdk/api/v2/GMPrivacyConfig;->isCanUseAndroidId()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TMe"

    invoke-static {v1, v0}, Lcom/bytedance/msdk/adapter/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bytedance/msdk/adapter/pangle/PangleAdapterConfiguration$3;->do:Lcom/bytedance/msdk/adapter/pangle/PangleAdapterConfiguration;

    .line 3
    iget-object v0, v0, Lcom/bytedance/msdk/adapter/pangle/PangleAdapterConfiguration;->try:Lcom/bytedance/msdk/api/v2/GMPrivacyConfig;

    .line 4
    invoke-virtual {v0}, Lcom/bytedance/msdk/api/v2/GMPrivacyConfig;->isCanUseAndroidId()Z

    move-result v0

    return v0
.end method

.method public isCanUseLocation()Z
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/adapter/pangle/PangleAdapterConfiguration$3;->do:Lcom/bytedance/msdk/adapter/pangle/PangleAdapterConfiguration;

    .line 1
    iget-object v0, v0, Lcom/bytedance/msdk/adapter/pangle/PangleAdapterConfiguration;->try:Lcom/bytedance/msdk/api/v2/GMPrivacyConfig;

    .line 2
    invoke-virtual {v0}, Lcom/bytedance/msdk/api/v2/GMPrivacyConfig;->isCanUseLocation()Z

    move-result v0

    return v0
.end method

.method public isCanUsePhoneState()Z
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/adapter/pangle/PangleAdapterConfiguration$3;->do:Lcom/bytedance/msdk/adapter/pangle/PangleAdapterConfiguration;

    .line 1
    iget-object v0, v0, Lcom/bytedance/msdk/adapter/pangle/PangleAdapterConfiguration;->try:Lcom/bytedance/msdk/api/v2/GMPrivacyConfig;

    .line 2
    invoke-virtual {v0}, Lcom/bytedance/msdk/api/v2/GMPrivacyConfig;->isCanUsePhoneState()Z

    move-result v0

    return v0
.end method

.method public isCanUseWifiState()Z
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/adapter/pangle/PangleAdapterConfiguration$3;->do:Lcom/bytedance/msdk/adapter/pangle/PangleAdapterConfiguration;

    .line 1
    iget-object v0, v0, Lcom/bytedance/msdk/adapter/pangle/PangleAdapterConfiguration;->try:Lcom/bytedance/msdk/api/v2/GMPrivacyConfig;

    .line 2
    invoke-virtual {v0}, Lcom/bytedance/msdk/api/v2/GMPrivacyConfig;->isCanUseWifiState()Z

    move-result v0

    return v0
.end method

.method public isCanUseWriteExternal()Z
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/adapter/pangle/PangleAdapterConfiguration$3;->do:Lcom/bytedance/msdk/adapter/pangle/PangleAdapterConfiguration;

    .line 1
    iget-object v0, v0, Lcom/bytedance/msdk/adapter/pangle/PangleAdapterConfiguration;->try:Lcom/bytedance/msdk/api/v2/GMPrivacyConfig;

    .line 2
    invoke-virtual {v0}, Lcom/bytedance/msdk/api/v2/GMPrivacyConfig;->isCanUseWriteExternal()Z

    move-result v0

    return v0
.end method
