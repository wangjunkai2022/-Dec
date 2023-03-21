.class public Lcom/biquge/ebook/app/widget/ComicViewPagerRecyclerView$if;
.super Lcom/chad/library/adapter/base/BaseQuickAdapter;
.source "ComicViewPagerRecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/biquge/ebook/app/widget/ComicViewPagerRecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "if"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter/base/BaseQuickAdapter<",
        "Lcom/manhua/data/bean/ComicBean;",
        "Lcom/chad/library/adapter/base/BaseViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field public final do:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .param p2    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/manhua/data/bean/ComicBean;",
            ">;)V"
        }
    .end annotation

    const v0, 0x7f0c0112

    .line 1
    invoke-direct {p0, v0, p2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;-><init>(ILjava/util/List;)V

    .line 2
    iput-object p1, p0, Lcom/biquge/ebook/app/widget/ComicViewPagerRecyclerView$if;->do:Landroid/content/Context;

    .line 3
    new-instance p1, Lcom/biquge/ebook/app/widget/ComicViewPagerRecyclerView$if$do;

    invoke-direct {p1, p0}, Lcom/biquge/ebook/app/widget/ComicViewPagerRecyclerView$if$do;-><init>(Lcom/biquge/ebook/app/widget/ComicViewPagerRecyclerView$if;)V

    invoke-virtual {p0, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnItemClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemClickListener;)V

    return-void
.end method


# virtual methods
.method public convert(Lcom/chad/library/adapter/base/BaseViewHolder;Ljava/lang/Object;)V
    .locals 5

    .line 1
    check-cast p2, Lcom/manhua/data/bean/ComicBean;

    const v0, 0x7f09032a

    .line 2
    :try_start_0
    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 3
    invoke-virtual {p2}, Lcom/manhua/data/bean/ComicBean;->isCartton()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {p2}, Lcom/manhua/data/bean/ComicBean;->getImg()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/apk/u;->import(Ljava/lang/String;Landroid/widget/ImageView;)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p2}, Lcom/manhua/data/bean/ComicBean;->getImg()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/apk/u;->public(Ljava/lang/String;Landroid/widget/ImageView;)V

    :goto_0
    const v0, 0x7f09033a

    .line 6
    invoke-virtual {p2}, Lcom/manhua/data/bean/ComicBean;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    const v0, 0x7f090342

    const v1, 0x7f100430

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 7
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/manhua/data/bean/ComicBean;->getScore()F

    move-result p2

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p2, ""

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    aput-object p2, v2, v3

    invoke-static {v1, v2}, Lcom/apk/ze;->r(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
