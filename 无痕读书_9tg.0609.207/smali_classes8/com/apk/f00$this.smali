.class public Lcom/apk/f00$this;
.super Ljava/lang/Object;
.source "ComicReadPresenter.java"

# interfaces
.implements Lcom/apk/mi$do;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apk/f00;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "this"
.end annotation


# instance fields
.field public final synthetic do:Lcom/apk/f00;


# direct methods
.method public constructor <init>(Lcom/apk/f00;Lcom/apk/g00;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/f00$this;->do:Lcom/apk/f00;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public do(I)Ljava/util/List;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/apk/f00$this;->do:Lcom/apk/f00;

    .line 2
    iget-object v0, v0, Lcom/apk/f00;->final:Lcom/manhua/adapter/ComicRecyclerViewAdapter;

    .line 3
    invoke-virtual {v0, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/biquge/ebook/app/bean/BookChapter;

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p1}, Lcom/biquge/ebook/app/bean/BookChapter;->getImageUrl()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 5
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 6
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
