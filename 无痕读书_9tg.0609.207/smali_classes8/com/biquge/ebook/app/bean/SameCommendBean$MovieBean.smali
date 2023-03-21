.class public Lcom/biquge/ebook/app/bean/SameCommendBean$MovieBean;
.super Ljava/lang/Object;
.source "SameCommendBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/biquge/ebook/app/bean/SameCommendBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MovieBean"
.end annotation


# instance fields
.field public time_gap:I

.field public time_total:I

.field public ys_apk:Ljava/lang/String;

.field public ys_pkg:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getTime_gap()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/biquge/ebook/app/bean/SameCommendBean$MovieBean;->time_gap:I

    return v0
.end method

.method public getTime_total()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/biquge/ebook/app/bean/SameCommendBean$MovieBean;->time_total:I

    return v0
.end method

.method public getYs_apk()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/bean/SameCommendBean$MovieBean;->ys_apk:Ljava/lang/String;

    return-object v0
.end method

.method public getYs_pkg()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/bean/SameCommendBean$MovieBean;->ys_pkg:Ljava/lang/String;

    return-object v0
.end method

.method public setTime_gap(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/biquge/ebook/app/bean/SameCommendBean$MovieBean;->time_gap:I

    return-void
.end method

.method public setTime_total(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/biquge/ebook/app/bean/SameCommendBean$MovieBean;->time_total:I

    return-void
.end method

.method public setYs_apk(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/bean/SameCommendBean$MovieBean;->ys_apk:Ljava/lang/String;

    return-void
.end method

.method public setYs_pkg(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/bean/SameCommendBean$MovieBean;->ys_pkg:Ljava/lang/String;

    return-void
.end method
