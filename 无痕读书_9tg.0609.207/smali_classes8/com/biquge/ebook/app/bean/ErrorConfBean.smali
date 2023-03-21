.class public Lcom/biquge/ebook/app/bean/ErrorConfBean;
.super Ljava/lang/Object;
.source "ErrorConfBean.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/biquge/ebook/app/bean/ErrorConfBean$RowsTipBean;
    }
.end annotation


# instance fields
.field public m_title:Ljava/lang/String;

.field public rows_tip:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/biquge/ebook/app/bean/ErrorConfBean$RowsTipBean;",
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
.method public getM_title()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/bean/ErrorConfBean;->m_title:Ljava/lang/String;

    return-object v0
.end method

.method public getRows_tip()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/biquge/ebook/app/bean/ErrorConfBean$RowsTipBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/bean/ErrorConfBean;->rows_tip:Ljava/util/List;

    return-object v0
.end method

.method public setM_title(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/bean/ErrorConfBean;->m_title:Ljava/lang/String;

    return-void
.end method

.method public setRows_tip(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/biquge/ebook/app/bean/ErrorConfBean$RowsTipBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/bean/ErrorConfBean;->rows_tip:Ljava/util/List;

    return-void
.end method
