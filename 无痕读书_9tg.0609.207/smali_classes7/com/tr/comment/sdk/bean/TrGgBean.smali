.class public Lcom/tr/comment/sdk/bean/TrGgBean;
.super Ljava/lang/Object;
.source "TrGgBean.java"


# instance fields
.field public adid:Ljava/lang/String;

.field public adpt:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/tr/comment/sdk/bean/TrGgBean;->adpt:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/tr/comment/sdk/bean/TrGgBean;->adid:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAdid()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tr/comment/sdk/bean/TrGgBean;->adid:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public getAdpt()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tr/comment/sdk/bean/TrGgBean;->adpt:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public setAdid(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tr/comment/sdk/bean/TrGgBean;->adid:Ljava/lang/String;

    return-void
.end method

.method public setAdpt(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tr/comment/sdk/bean/TrGgBean;->adpt:Ljava/lang/String;

    return-void
.end method
