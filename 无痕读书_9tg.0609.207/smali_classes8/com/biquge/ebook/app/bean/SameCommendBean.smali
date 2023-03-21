.class public Lcom/biquge/ebook/app/bean/SameCommendBean;
.super Ljava/lang/Object;
.source "SameCommendBean.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/biquge/ebook/app/bean/SameCommendBean$MovieBean;
    }
.end annotation


# instance fields
.field public by_minus:I

.field public first:I

.field public get_data_size:I

.field public max_count:I

.field public movie:Lcom/biquge/ebook/app/bean/SameCommendBean$MovieBean;

.field public tingshu:Lcom/biquge/ebook/app/bean/SameCommendBean$MovieBean;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBy_minus()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/biquge/ebook/app/bean/SameCommendBean;->by_minus:I

    if-nez v0, :cond_0

    const/16 v0, 0xa

    .line 2
    iput v0, p0, Lcom/biquge/ebook/app/bean/SameCommendBean;->by_minus:I

    .line 3
    :cond_0
    iget v0, p0, Lcom/biquge/ebook/app/bean/SameCommendBean;->by_minus:I

    return v0
.end method

.method public getFirst()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/biquge/ebook/app/bean/SameCommendBean;->first:I

    if-nez v0, :cond_0

    const/16 v0, 0xa

    .line 2
    iput v0, p0, Lcom/biquge/ebook/app/bean/SameCommendBean;->first:I

    .line 3
    :cond_0
    iget v0, p0, Lcom/biquge/ebook/app/bean/SameCommendBean;->first:I

    return v0
.end method

.method public getGet_data_size()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/biquge/ebook/app/bean/SameCommendBean;->get_data_size:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lcom/biquge/ebook/app/bean/SameCommendBean;->get_data_size:I

    .line 3
    :cond_0
    iget v0, p0, Lcom/biquge/ebook/app/bean/SameCommendBean;->get_data_size:I

    return v0
.end method

.method public getMax_count()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/biquge/ebook/app/bean/SameCommendBean;->max_count:I

    if-nez v0, :cond_0

    const/4 v0, 0x3

    .line 2
    iput v0, p0, Lcom/biquge/ebook/app/bean/SameCommendBean;->max_count:I

    .line 3
    :cond_0
    iget v0, p0, Lcom/biquge/ebook/app/bean/SameCommendBean;->max_count:I

    return v0
.end method

.method public getMovie()Lcom/biquge/ebook/app/bean/SameCommendBean$MovieBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/bean/SameCommendBean;->movie:Lcom/biquge/ebook/app/bean/SameCommendBean$MovieBean;

    return-object v0
.end method

.method public getTingshu()Lcom/biquge/ebook/app/bean/SameCommendBean$MovieBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/bean/SameCommendBean;->tingshu:Lcom/biquge/ebook/app/bean/SameCommendBean$MovieBean;

    return-object v0
.end method

.method public setBy_minus(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/biquge/ebook/app/bean/SameCommendBean;->by_minus:I

    return-void
.end method

.method public setFirst(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/biquge/ebook/app/bean/SameCommendBean;->first:I

    return-void
.end method

.method public setGet_data_size(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/biquge/ebook/app/bean/SameCommendBean;->get_data_size:I

    return-void
.end method

.method public setMax_count(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/biquge/ebook/app/bean/SameCommendBean;->max_count:I

    return-void
.end method

.method public setMovie(Lcom/biquge/ebook/app/bean/SameCommendBean$MovieBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/bean/SameCommendBean;->movie:Lcom/biquge/ebook/app/bean/SameCommendBean$MovieBean;

    return-void
.end method

.method public setTingshu(Lcom/biquge/ebook/app/bean/SameCommendBean$MovieBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/bean/SameCommendBean;->tingshu:Lcom/biquge/ebook/app/bean/SameCommendBean$MovieBean;

    return-void
.end method
