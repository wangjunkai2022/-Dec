.class public Lcom/biquge/ebook/app/bean/BarrageConfigBean;
.super Ljava/lang/Object;
.source "BarrageConfigBean.java"


# instance fields
.field public get_count:I

.field public get_txtlink_dm:Ljava/lang/String;

.field public get_type:Ljava/lang/String;

.field public per_page:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getGet_count()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/biquge/ebook/app/bean/BarrageConfigBean;->get_count:I

    return v0
.end method

.method public getGet_txtlink_dm()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/bean/BarrageConfigBean;->get_txtlink_dm:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public getGet_type()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/bean/BarrageConfigBean;->get_type:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public getPer_page()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/biquge/ebook/app/bean/BarrageConfigBean;->per_page:I

    return v0
.end method

.method public setGet_count(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/biquge/ebook/app/bean/BarrageConfigBean;->get_count:I

    return-void
.end method

.method public setGet_txtlink_dm(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/bean/BarrageConfigBean;->get_txtlink_dm:Ljava/lang/String;

    return-void
.end method

.method public setGet_type(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/bean/BarrageConfigBean;->get_type:Ljava/lang/String;

    return-void
.end method

.method public setPer_page(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/biquge/ebook/app/bean/BarrageConfigBean;->per_page:I

    return-void
.end method
