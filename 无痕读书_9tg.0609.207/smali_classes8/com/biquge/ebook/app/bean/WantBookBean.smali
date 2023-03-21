.class public Lcom/biquge/ebook/app/bean/WantBookBean;
.super Ljava/lang/Object;
.source "WantBookBean.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/biquge/ebook/app/bean/WantBookBean$WantProgressBean;
    }
.end annotation


# static fields
.field public static final serialVersionUID:J = -0x70ede36d3b665e45L


# instance fields
.field public list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/biquge/ebook/app/bean/WantBookBean$WantProgressBean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/biquge/ebook/app/bean/WantBookBean$WantProgressBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/bean/WantBookBean;->list:Ljava/util/List;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    return-object v0
.end method

.method public setList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/biquge/ebook/app/bean/WantBookBean$WantProgressBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/bean/WantBookBean;->list:Ljava/util/List;

    return-void
.end method
