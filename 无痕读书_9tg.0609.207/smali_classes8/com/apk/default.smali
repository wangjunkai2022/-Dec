.class public Lcom/apk/default;
.super Ljava/lang/Object;
.source "AdInsertHelper.java"

# interfaces
.implements Lcom/apk/w60;


# instance fields
.field public final synthetic do:Landroid/app/Activity;

.field public final synthetic if:Lcom/apk/switch;


# direct methods
.method public constructor <init>(Lcom/apk/switch;Landroid/app/Activity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/default;->if:Lcom/apk/switch;

    iput-object p2, p0, Lcom/apk/default;->do:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public case()V
    .locals 0

    return-void
.end method

.method public do()V
    .locals 0

    return-void
.end method

.method public else()V
    .locals 0

    return-void
.end method

.method public for()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/apk/default;->if:Lcom/apk/switch;

    .line 2
    iget-boolean v1, v0, Lcom/apk/switch;->if:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 3
    iput-boolean v1, v0, Lcom/apk/switch;->case:Z

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, v0, Lcom/apk/switch;->try:Lcom/apk/d60;

    if-eqz v0, :cond_1

    .line 5
    iget-object v1, p0, Lcom/apk/default;->do:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/apk/d60;->else(Landroid/app/Activity;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public if(ILjava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/apk/default;->if:Lcom/apk/switch;

    .line 2
    iget-object v0, v0, Lcom/apk/switch;->try:Lcom/apk/d60;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/apk/d60;->case()V

    .line 4
    iget-object v0, p0, Lcom/apk/default;->if:Lcom/apk/switch;

    .line 5
    iput-object v1, v0, Lcom/apk/switch;->try:Lcom/apk/d60;

    :cond_0
    const v0, 0xea61

    if-ne p1, v0, :cond_2

    .line 6
    iget-object p1, p0, Lcom/apk/default;->if:Lcom/apk/switch;

    iget-object v0, p0, Lcom/apk/default;->do:Landroid/app/Activity;

    if-eqz p1, :cond_1

    .line 7
    new-instance v1, Lcom/swl/gg/ggs/SwlAdAdInsert;

    new-instance v2, Lcom/apk/extends;

    invoke-direct {v2, p1}, Lcom/apk/extends;-><init>(Lcom/apk/switch;)V

    invoke-direct {v1, v0, v2}, Lcom/swl/gg/ggs/SwlAdAdInsert;-><init>(Landroid/app/Activity;Lcom/apk/p40;)V

    iput-object v1, p1, Lcom/apk/switch;->else:Lcom/swl/gg/ggs/SwlAdAdInsert;

    .line 8
    invoke-virtual {v1, p2}, Lcom/swl/gg/ggs/SwlAdAdInsert;->loadAd(Ljava/lang/String;)V

    goto :goto_0

    .line 9
    :cond_1
    throw v1

    :cond_2
    :goto_0
    return-void
.end method

.method public onAdClick()V
    .locals 0

    return-void
.end method

.method public onAdClosed()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/apk/default;->if:Lcom/apk/switch;

    .line 2
    iget-object v0, v0, Lcom/apk/switch;->try:Lcom/apk/d60;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/apk/d60;->case()V

    .line 4
    iget-object v0, p0, Lcom/apk/default;->if:Lcom/apk/switch;

    const/4 v1, 0x0

    .line 5
    iput-object v1, v0, Lcom/apk/switch;->try:Lcom/apk/d60;

    :cond_0
    return-void
.end method
