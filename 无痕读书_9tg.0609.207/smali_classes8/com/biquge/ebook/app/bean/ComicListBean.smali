.class public Lcom/biquge/ebook/app/bean/ComicListBean;
.super Ljava/lang/Object;
.source "ComicListBean.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final serialVersionUID:J = -0x47302d189e2330c5L


# instance fields
.field public BookList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/manhua/data/bean/ComicBean;",
            ">;"
        }
    .end annotation
.end field

.field public HasNext:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBookList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/manhua/data/bean/ComicBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/bean/ComicListBean;->BookList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0

    .line 3
    :cond_0
    invoke-static {v0}, Lcom/jni/crypt/project/CryptDesManager;->decodeClass(Ljava/lang/Object;)V

    .line 4
    iget-object v0, p0, Lcom/biquge/ebook/app/bean/ComicListBean;->BookList:Ljava/util/List;

    return-object v0
.end method

.method public isHasNext()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/biquge/ebook/app/bean/ComicListBean;->HasNext:Z

    return v0
.end method

.method public setBookList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/manhua/data/bean/ComicBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/bean/ComicListBean;->BookList:Ljava/util/List;

    return-void
.end method

.method public setHasNext(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/biquge/ebook/app/bean/ComicListBean;->HasNext:Z

    return-void
.end method
