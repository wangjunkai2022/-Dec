.class public Lcom/biquge/ebook/app/widget/ComicStoreRankLayout$for;
.super Lcom/apk/bg;
.source "ComicStoreRankLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/biquge/ebook/app/widget/ComicStoreRankLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "for"
.end annotation


# instance fields
.field public final do:I

.field public final synthetic if:Lcom/biquge/ebook/app/widget/ComicStoreRankLayout;


# direct methods
.method public constructor <init>(Lcom/biquge/ebook/app/widget/ComicStoreRankLayout;ILcom/apk/pg;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/widget/ComicStoreRankLayout$for;->if:Lcom/biquge/ebook/app/widget/ComicStoreRankLayout;

    invoke-direct {p0}, Lcom/apk/bg;-><init>()V

    .line 2
    iput p2, p0, Lcom/biquge/ebook/app/widget/ComicStoreRankLayout$for;->do:I

    return-void
.end method


# virtual methods
.method public onNoDoubleClick(Landroid/view/View;)V
    .locals 2

    .line 1
    :try_start_0
    iget-object p1, p0, Lcom/biquge/ebook/app/widget/ComicStoreRankLayout$for;->if:Lcom/biquge/ebook/app/widget/ComicStoreRankLayout;

    .line 2
    iget-object p1, p1, Lcom/biquge/ebook/app/widget/ComicStoreRankLayout;->new:Lcom/biquge/ebook/app/widget/ComicStoreRankLayout$if;

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/biquge/ebook/app/widget/ComicStoreRankLayout$for;->if:Lcom/biquge/ebook/app/widget/ComicStoreRankLayout;

    .line 4
    iget-object p1, p1, Lcom/biquge/ebook/app/widget/ComicStoreRankLayout;->case:[Ljava/lang/String;

    if-eqz p1, :cond_0

    .line 5
    iget-object p1, p0, Lcom/biquge/ebook/app/widget/ComicStoreRankLayout$for;->if:Lcom/biquge/ebook/app/widget/ComicStoreRankLayout;

    .line 6
    iget-object p1, p1, Lcom/biquge/ebook/app/widget/ComicStoreRankLayout;->case:[Ljava/lang/String;

    .line 7
    array-length p1, p1

    iget v0, p0, Lcom/biquge/ebook/app/widget/ComicStoreRankLayout$for;->do:I

    if-le p1, v0, :cond_0

    .line 8
    iget-object p1, p0, Lcom/biquge/ebook/app/widget/ComicStoreRankLayout$for;->if:Lcom/biquge/ebook/app/widget/ComicStoreRankLayout;

    iget-object v0, p0, Lcom/biquge/ebook/app/widget/ComicStoreRankLayout$for;->if:Lcom/biquge/ebook/app/widget/ComicStoreRankLayout;

    .line 9
    iget-object v0, v0, Lcom/biquge/ebook/app/widget/ComicStoreRankLayout;->case:[Ljava/lang/String;

    .line 10
    iget v1, p0, Lcom/biquge/ebook/app/widget/ComicStoreRankLayout$for;->do:I

    aget-object v0, v0, v1

    .line 11
    iput-object v0, p1, Lcom/biquge/ebook/app/widget/ComicStoreRankLayout;->else:Ljava/lang/String;

    .line 12
    iget-object p1, p0, Lcom/biquge/ebook/app/widget/ComicStoreRankLayout$for;->if:Lcom/biquge/ebook/app/widget/ComicStoreRankLayout;

    .line 13
    iget-object p1, p1, Lcom/biquge/ebook/app/widget/ComicStoreRankLayout;->new:Lcom/biquge/ebook/app/widget/ComicStoreRankLayout$if;

    .line 14
    iget-object v0, p0, Lcom/biquge/ebook/app/widget/ComicStoreRankLayout$for;->if:Lcom/biquge/ebook/app/widget/ComicStoreRankLayout;

    .line 15
    iget-object v0, v0, Lcom/biquge/ebook/app/widget/ComicStoreRankLayout;->try:Ljava/util/Map;

    .line 16
    iget-object v1, p0, Lcom/biquge/ebook/app/widget/ComicStoreRankLayout$for;->if:Lcom/biquge/ebook/app/widget/ComicStoreRankLayout;

    .line 17
    iget-object v1, v1, Lcom/biquge/ebook/app/widget/ComicStoreRankLayout;->else:Ljava/lang/String;

    .line 18
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setNewData(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    :catch_0
    :cond_0
    iget-object p1, p0, Lcom/biquge/ebook/app/widget/ComicStoreRankLayout$for;->if:Lcom/biquge/ebook/app/widget/ComicStoreRankLayout;

    iget v0, p0, Lcom/biquge/ebook/app/widget/ComicStoreRankLayout$for;->do:I

    .line 20
    invoke-virtual {p1, v0}, Lcom/biquge/ebook/app/widget/ComicStoreRankLayout;->if(I)V

    return-void
.end method
