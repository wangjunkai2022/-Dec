.class public Lcom/biquge/ebook/app/bean/StoreBean;
.super Ljava/lang/Object;
.source "StoreBean.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/biquge/ebook/app/bean/StoreBean$ListBean;,
        Lcom/biquge/ebook/app/bean/StoreBean$TopTabsBean;,
        Lcom/biquge/ebook/app/bean/StoreBean$BannerBean;
    }
.end annotation


# static fields
.field public static final serialVersionUID:J = 0x3644dfdb433210e1L


# instance fields
.field public banner:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/biquge/ebook/app/bean/StoreBean$BannerBean;",
            ">;"
        }
    .end annotation
.end field

.field public homenavmenu:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/biquge/ebook/app/bean/HomenavmenuBean;",
            ">;"
        }
    .end annotation
.end field

.field public list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/biquge/ebook/app/bean/StoreBean$ListBean;",
            ">;"
        }
    .end annotation
.end field

.field public moreapi:Ljava/lang/String;

.field public sc_hide_nav:Z

.field public topTabs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/biquge/ebook/app/bean/StoreBean$TopTabsBean;",
            ">;"
        }
    .end annotation
.end field

.field public topTabsIndex:I

.field public topTabsStyle:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBanner()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/biquge/ebook/app/bean/StoreBean$BannerBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/bean/StoreBean;->banner:Ljava/util/List;

    return-object v0
.end method

.method public getHomenavmenu()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/biquge/ebook/app/bean/HomenavmenuBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/bean/StoreBean;->homenavmenu:Ljava/util/List;

    return-object v0
.end method

.method public getList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/biquge/ebook/app/bean/StoreBean$ListBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/bean/StoreBean;->list:Ljava/util/List;

    return-object v0
.end method

.method public getMoreapi()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/bean/StoreBean;->moreapi:Ljava/lang/String;

    return-object v0
.end method

.method public getTopTabs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/biquge/ebook/app/bean/StoreBean$TopTabsBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/bean/StoreBean;->topTabs:Ljava/util/List;

    return-object v0
.end method

.method public getTopTabsIndex()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/biquge/ebook/app/bean/StoreBean;->topTabsIndex:I

    return v0
.end method

.method public getTopTabsStyle()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/bean/StoreBean;->topTabsStyle:Ljava/lang/String;

    return-object v0
.end method

.method public isSc_hide_nav()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/biquge/ebook/app/bean/StoreBean;->sc_hide_nav:Z

    return v0
.end method

.method public setBanner(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/biquge/ebook/app/bean/StoreBean$BannerBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/bean/StoreBean;->banner:Ljava/util/List;

    return-void
.end method

.method public setHomenavmenu(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/biquge/ebook/app/bean/HomenavmenuBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/bean/StoreBean;->homenavmenu:Ljava/util/List;

    return-void
.end method

.method public setList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/biquge/ebook/app/bean/StoreBean$ListBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/bean/StoreBean;->list:Ljava/util/List;

    return-void
.end method

.method public setMoreapi(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/bean/StoreBean;->moreapi:Ljava/lang/String;

    return-void
.end method

.method public setSc_hide_nav(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/biquge/ebook/app/bean/StoreBean;->sc_hide_nav:Z

    return-void
.end method

.method public setTopTabs(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/biquge/ebook/app/bean/StoreBean$TopTabsBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/bean/StoreBean;->topTabs:Ljava/util/List;

    return-void
.end method

.method public setTopTabsIndex(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/biquge/ebook/app/bean/StoreBean;->topTabsIndex:I

    return-void
.end method

.method public setTopTabsStyle(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/bean/StoreBean;->topTabsStyle:Ljava/lang/String;

    return-void
.end method
