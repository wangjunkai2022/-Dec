.class public Lcom/biquge/ebook/app/widget/ComicStoreRankLayout$do;
.super Ljava/lang/Object;
.source "ComicStoreRankLayout.java"

# interfaces
.implements Lcom/apk/b40$new;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biquge/ebook/app/widget/ComicStoreRankLayout;->for(ZZLjava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/biquge/ebook/app/widget/ComicStoreRankLayout;


# direct methods
.method public constructor <init>(Lcom/biquge/ebook/app/widget/ComicStoreRankLayout;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/widget/ComicStoreRankLayout$do;->do:Lcom/biquge/ebook/app/widget/ComicStoreRankLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public do(Landroid/view/View;II)V
    .locals 0

    .line 1
    :try_start_0
    iget-object p1, p0, Lcom/biquge/ebook/app/widget/ComicStoreRankLayout$do;->do:Lcom/biquge/ebook/app/widget/ComicStoreRankLayout;

    .line 2
    iget-object p1, p1, Lcom/biquge/ebook/app/widget/ComicStoreRankLayout;->new:Lcom/biquge/ebook/app/widget/ComicStoreRankLayout$if;

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/biquge/ebook/app/widget/ComicStoreRankLayout$do;->do:Lcom/biquge/ebook/app/widget/ComicStoreRankLayout;

    iget-object p3, p0, Lcom/biquge/ebook/app/widget/ComicStoreRankLayout$do;->do:Lcom/biquge/ebook/app/widget/ComicStoreRankLayout;

    .line 4
    iget-object p3, p3, Lcom/biquge/ebook/app/widget/ComicStoreRankLayout;->case:[Ljava/lang/String;

    .line 5
    aget-object p2, p3, p2

    .line 6
    iput-object p2, p1, Lcom/biquge/ebook/app/widget/ComicStoreRankLayout;->else:Ljava/lang/String;

    .line 7
    iget-object p1, p0, Lcom/biquge/ebook/app/widget/ComicStoreRankLayout$do;->do:Lcom/biquge/ebook/app/widget/ComicStoreRankLayout;

    .line 8
    iget-object p1, p1, Lcom/biquge/ebook/app/widget/ComicStoreRankLayout;->new:Lcom/biquge/ebook/app/widget/ComicStoreRankLayout$if;

    .line 9
    iget-object p2, p0, Lcom/biquge/ebook/app/widget/ComicStoreRankLayout$do;->do:Lcom/biquge/ebook/app/widget/ComicStoreRankLayout;

    .line 10
    iget-object p2, p2, Lcom/biquge/ebook/app/widget/ComicStoreRankLayout;->try:Ljava/util/Map;

    .line 11
    iget-object p3, p0, Lcom/biquge/ebook/app/widget/ComicStoreRankLayout$do;->do:Lcom/biquge/ebook/app/widget/ComicStoreRankLayout;

    .line 12
    iget-object p3, p3, Lcom/biquge/ebook/app/widget/ComicStoreRankLayout;->else:Ljava/lang/String;

    .line 13
    invoke-interface {p2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    invoke-virtual {p1, p2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setNewData(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 14
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method
