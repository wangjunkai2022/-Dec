.class public Lcom/apk/h70$if;
.super Landroid/os/CountDownTimer;
.source "BaseAdProviderVideo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apk/h70;->k(Ljava/lang/String;Lcom/apk/b70;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Ljava/lang/String;

.field public final synthetic for:Lcom/apk/h70;

.field public final synthetic if:Lcom/apk/b70;


# direct methods
.method public constructor <init>(Lcom/apk/h70;JJLjava/lang/String;Lcom/apk/b70;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/h70$if;->for:Lcom/apk/h70;

    iput-object p6, p0, Lcom/apk/h70$if;->do:Ljava/lang/String;

    iput-object p7, p0, Lcom/apk/h70$if;->if:Lcom/apk/b70;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 4

    .line 1
    invoke-static {}, Lcom/apk/d50;->do()Lcom/apk/d50;

    move-result-object v0

    .line 2
    iget-object v1, v0, Lcom/apk/d50;->try:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_1

    .line 3
    iget-object v1, v0, Lcom/apk/d50;->try:Ljava/lang/String;

    const-string v3, "ADActivity"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, v0, Lcom/apk/d50;->try:Ljava/lang/String;

    const-string v3, "PortraitADActivity"

    .line 4
    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, v0, Lcom/apk/d50;->try:Ljava/lang/String;

    const-string v3, "LandscapeADActivity"

    .line 5
    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, v0, Lcom/apk/d50;->try:Ljava/lang/String;

    const-string v3, "RewardvideoPortraitADActivity"

    .line 6
    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, v0, Lcom/apk/d50;->try:Ljava/lang/String;

    const-string v3, "RewardvideoLandscapeADActivity"

    .line 7
    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, v0, Lcom/apk/d50;->try:Ljava/lang/String;

    const-string v3, "Stub_Standard_Activity"

    .line 8
    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, v0, Lcom/apk/d50;->try:Ljava/lang/String;

    const-string v3, "Stub_Standard_Portrait_Activity"

    .line 9
    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, v0, Lcom/apk/d50;->try:Ljava/lang/String;

    const-string v3, "Stub_Standard_Activity_T"

    .line 10
    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, v0, Lcom/apk/d50;->try:Ljava/lang/String;

    const-string v3, "Stub_Standard_Landscape_Activity"

    .line 11
    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, v0, Lcom/apk/d50;->try:Ljava/lang/String;

    const-string v3, "Stub_Activity"

    .line 12
    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, v0, Lcom/apk/d50;->try:Ljava/lang/String;

    const-string v3, "Stub_SingleTask_Activity_T"

    .line 13
    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v0, v0, Lcom/apk/d50;->try:Ljava/lang/String;

    const-string v1, "Stub_SingleTask_Activity"

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :cond_1
    :goto_0
    if-nez v2, :cond_3

    .line 15
    iget-object v0, p0, Lcom/apk/h70$if;->for:Lcom/apk/h70;

    iget-object v1, p0, Lcom/apk/h70$if;->do:Ljava/lang/String;

    iget-object v2, p0, Lcom/apk/h70$if;->if:Lcom/apk/b70;

    if-eqz v0, :cond_2

    .line 16
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\u5e7f\u544ashow\u4e4b\u540e5s\u672a\u5c55\u793a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/apk/k40;->this(Ljava/lang/String;)V

    if-eqz v2, :cond_3

    const v0, 0x1443f

    .line 17
    invoke-interface {v2, v0, v1}, Lcom/apk/b70;->if(ILjava/lang/String;)V

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    .line 18
    throw v0

    :cond_3
    :goto_1
    return-void
.end method

.method public onTick(J)V
    .locals 0

    return-void
.end method
