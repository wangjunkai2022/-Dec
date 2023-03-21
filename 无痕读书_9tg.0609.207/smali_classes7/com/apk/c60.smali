.class public Lcom/apk/c60;
.super Lcom/apk/p70;
.source "TrFullVideoAd.java"


# instance fields
.field public final for:Lcom/apk/v60;

.field public final if:Landroid/app/Activity;

.field public new:Lcom/apk/p50;

.field public final try:Lcom/apk/v60;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/apk/v60;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/apk/p70;-><init>()V

    .line 2
    new-instance v0, Lcom/apk/c60$do;

    invoke-direct {v0, p0}, Lcom/apk/c60$do;-><init>(Lcom/apk/c60;)V

    iput-object v0, p0, Lcom/apk/c60;->try:Lcom/apk/v60;

    .line 3
    iput-object p1, p0, Lcom/apk/c60;->if:Landroid/app/Activity;

    .line 4
    iput-object p2, p0, Lcom/apk/c60;->for:Lcom/apk/v60;

    .line 5
    iput-object p3, p0, Lcom/apk/p70;->do:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public case(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/swl/gg/sdk/TrAdSdk;->getApp()Landroid/app/Application;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    iget-object p1, p0, Lcom/apk/c60;->for:Lcom/apk/v60;

    invoke-virtual {p0, p1}, Lcom/apk/p70;->if(Lcom/apk/b70;)V

    return-void

    .line 3
    :cond_0
    invoke-static {}, Lcom/apk/k40;->extends()Z

    move-result v0

    if-nez v0, :cond_1

    .line 4
    iget-object p1, p0, Lcom/apk/c60;->for:Lcom/apk/v60;

    invoke-virtual {p0, p1}, Lcom/apk/p70;->for(Lcom/apk/b70;)V

    return-void

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/apk/c60;->if:Landroid/app/Activity;

    if-nez v0, :cond_2

    .line 6
    iget-object p1, p0, Lcom/apk/c60;->for:Lcom/apk/v60;

    invoke-virtual {p0, p1}, Lcom/apk/p70;->do(Lcom/apk/b70;)V

    return-void

    .line 7
    :cond_2
    iget-object v0, p0, Lcom/apk/c60;->for:Lcom/apk/v60;

    invoke-virtual {p0, p3, p4, v0}, Lcom/apk/p70;->new(IILcom/apk/b70;)Z

    move-result p3

    if-eqz p3, :cond_3

    return-void

    .line 8
    :cond_3
    new-instance p3, Lcom/apk/p50;

    invoke-direct {p3}, Lcom/apk/p50;-><init>()V

    iput-object p3, p0, Lcom/apk/c60;->new:Lcom/apk/p50;

    .line 9
    iget-object p4, p0, Lcom/apk/c60;->if:Landroid/app/Activity;

    iget-object v0, p0, Lcom/apk/c60;->try:Lcom/apk/v60;

    invoke-virtual {p3, p4, p1, p2, v0}, Lcom/apk/p50;->else(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/apk/v60;)V

    return-void
.end method

.method public else()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/apk/c60;->new:Lcom/apk/p50;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/apk/p50;->case()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/apk/c60;->new:Lcom/apk/p50;

    :cond_0
    return-void
.end method

.method public goto(Landroid/app/Activity;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/apk/c60;->new:Lcom/apk/p50;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/apk/c60;->if:Landroid/app/Activity;

    :goto_0
    invoke-virtual {v0, p1}, Lcom/apk/p50;->goto(Landroid/app/Activity;)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public try()V
    .locals 4

    .line 1
    invoke-static {}, Lcom/apk/q70;->do()Lcom/apk/q70;

    move-result-object v0

    iget-object v1, p0, Lcom/apk/p70;->do:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/apk/q70;->if(Ljava/lang/String;)Lcom/apk/c50;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/apk/c50;->if()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/apk/c50;->do()Ljava/lang/String;

    move-result-object v2

    .line 3
    iget v3, v0, Lcom/apk/c50;->for:I

    .line 4
    iget v0, v0, Lcom/apk/c50;->new:I

    .line 5
    invoke-virtual {p0, v1, v2, v3, v0}, Lcom/apk/c60;->case(Ljava/lang/String;Ljava/lang/String;II)V

    :cond_0
    return-void
.end method
