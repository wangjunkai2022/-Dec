.class public Lcom/biquge/ebook/app/bean/StoreBean$ListBean;
.super Ljava/lang/Object;
.source "StoreBean.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/biquge/ebook/app/bean/StoreBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ListBean"
.end annotation


# static fields
.field public static final serialVersionUID:J = -0x5c904fbb7c3391c5L


# instance fields
.field public Books:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/biquge/ebook/app/bean/Book;",
            ">;"
        }
    .end annotation
.end field

.field public Category:Ljava/lang/String;

.field public ChangeFlag:Ljava/lang/String;

.field public DataType:Ljava/lang/String;

.field public More:Ljava/lang/String;

.field public MoreFlag:Ljava/lang/String;

.field public NavIcon:Ljava/lang/String;

.field public ViewType:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBooks()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/biquge/ebook/app/bean/Book;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/bean/StoreBean$ListBean;->Books:Ljava/util/List;

    return-object v0
.end method

.method public getCategory()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/bean/StoreBean$ListBean;->Category:Ljava/lang/String;

    return-object v0
.end method

.method public getChangeFlag()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/bean/StoreBean$ListBean;->ChangeFlag:Ljava/lang/String;

    return-object v0
.end method

.method public getMore()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/bean/StoreBean$ListBean;->More:Ljava/lang/String;

    return-object v0
.end method

.method public getMoreFlag()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/bean/StoreBean$ListBean;->MoreFlag:Ljava/lang/String;

    return-object v0
.end method

.method public getNavIcon()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/bean/StoreBean$ListBean;->NavIcon:Ljava/lang/String;

    return-object v0
.end method

.method public getViewType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/bean/StoreBean$ListBean;->ViewType:Ljava/lang/String;

    return-object v0
.end method

.method public isNovel()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/bean/StoreBean$ListBean;->DataType:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/biquge/ebook/app/bean/StoreBean$ListBean;->DataType:Ljava/lang/String;

    const-string v1, "novel"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public setBooks(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/biquge/ebook/app/bean/Book;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/bean/StoreBean$ListBean;->Books:Ljava/util/List;

    return-void
.end method

.method public setCategory(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/bean/StoreBean$ListBean;->Category:Ljava/lang/String;

    return-void
.end method

.method public setChangeFlag(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/bean/StoreBean$ListBean;->ChangeFlag:Ljava/lang/String;

    return-void
.end method

.method public setDataType(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/bean/StoreBean$ListBean;->DataType:Ljava/lang/String;

    return-void
.end method

.method public setMore(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/bean/StoreBean$ListBean;->More:Ljava/lang/String;

    return-void
.end method

.method public setMoreFlag(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/bean/StoreBean$ListBean;->MoreFlag:Ljava/lang/String;

    return-void
.end method

.method public setNavIcon(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/bean/StoreBean$ListBean;->NavIcon:Ljava/lang/String;

    return-void
.end method

.method public setViewType(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/bean/StoreBean$ListBean;->ViewType:Ljava/lang/String;

    return-void
.end method
